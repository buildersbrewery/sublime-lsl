#!/usr/bin/env python
# coding: utf-8


from __future__ import unicode_literals

import sublime
import sublime_plugin


PKG_NAME = '{}'.format(__package__.split('.')[0])


def fuzzy_match(pattern, instring, adj_bonus=5, sep_bonus=10, camel_bonus=10,
                lead_penalty=-3, max_lead_penalty=-9, unmatched_penalty=-1):
    # https://github.com/forrestthewoods/lib_fts
    # https://gist.github.com/menzenski/f0f846a254d269bd567e2160485f4b89
    score, p_idx, s_idx, p_len, s_len = 0, 0, 0, len(pattern), len(instring)
    prev_match, prev_lower = False, False
    prev_sep = True
    best_letter, best_lower, best_letter_idx = None, None, None
    best_letter_score = 0
    matched_indices = []

    while s_idx != s_len:
        p_char = pattern[p_idx] if (p_idx != p_len) else None
        s_char = instring[s_idx]
        p_lower = p_char.lower() if p_char else None
        s_lower, s_upper = s_char.lower(), s_char.upper()

        next_match = p_char and p_lower == s_lower
        rematch = best_letter and best_lower == s_lower

        advanced = next_match and best_letter
        p_repeat = best_letter and p_char and best_lower == p_lower

        if advanced or p_repeat:
            score += best_letter_score
            matched_indices.append(best_letter_idx)
            best_letter, best_lower, best_letter_idx = None, None, None
            best_letter_score = 0

        if next_match or rematch:
            new_score = 0

            if p_idx == 0:
                score += max(s_idx * lead_penalty, max_lead_penalty)

            if prev_match:
                new_score += adj_bonus

            if prev_sep:
                new_score += sep_bonus

            if prev_lower and s_char == s_upper and s_lower != s_upper:
                new_score += camel_bonus

            if next_match:
                p_idx += 1

            if new_score >= best_letter_score:
                if best_letter is not None:
                    score += unmatched_penalty
                best_letter = s_char
                best_lower = best_letter.lower()
                best_letter_idx = s_idx
                best_letter_score = new_score

            prev_match = True

        else:
            score += unmatched_penalty
            prev_match = False

        prev_lower = s_char == s_lower and s_lower != s_upper
        prev_sep = s_char in '_ '

        s_idx += 1

    if best_letter:
        score += best_letter_score
        matched_indices.append(best_letter_idx)

    return p_idx == p_len, score


# TODO: add type hints
class LSLCompletions(sublime_plugin.EventListener):

    def on_query_completions(self, view, prefix, locations):

        # only suggest completions based on the first cursor
        loc = locations[0]

        if not view.match_selector(loc, 'source.lsl'):
            return None

        from .keyword_data_loader import LSL_KEYWORD_DATA
        if LSL_KEYWORD_DATA is None:
            return None

        completions = []
        flags = 0

        # we don't modify flags

        # FIXME: fix using data with new structure

        for word, result in LSL_KEYWORD_DATA.items():
            if not word.startswith(prefix):
                continue
            if view.match_selector(loc, 'meta.class.state.body.lsl - meta.block.event.lsl, -string.quoted.double.lsl'):
                if result.get('scope', None) == 'support.function.event':
                    t = word + '\tevent'
                    if 'params' in result:
                        c = '{}({}){}'.format(
                            word,
                            ', '.join('{} ${{{}:{}}}'.format(param['type'], idx, param['name']) for idx, param in enumerate(result['params'], 1)),
                            r'${LSL_WHITESPACE_BEFORE}{${LSL_WHITESPACE_INSIDE_FIRST}$0${LSL_WHITESPACE_INSIDE_LAST}}'
                        )
                    else:
                        c = '{}(){}'.format(
                            word,
                            r'${LSL_WHITESPACE_BEFORE}{${LSL_WHITESPACE_INSIDE_FIRST}$0${LSL_WHITESPACE_INSIDE_LAST}}'
                        )
                    if fuzzy_match(prefix, t)[0]:
                        completions.append((t, c))
            if view.match_selector(loc, 'meta.function.declaration.body.lsl, meta.block.event.lsl, meta.parameters.lsl, -string.quoted.double.lsl'):
                if result.get('scope', None) == 'support.function.builtin':
                    t = '{}\t({}) function'.format(word, result.get('type', 'void'))
                    if 'params' in result:
                        c = '{}({})'.format(
                            word,
                            ', '.join('${{{}:{} {}}}'.format(idx, param['type'], param['name']) for idx, param in enumerate(result['params'], 1))
                        )
                    else:
                        c = '{}()'.format(
                            word
                        )
                    if 'type' not in result:
                        c += r';${LSL_WHITESPACE_AFTER}$0'
                    if fuzzy_match(prefix, t)[0]:
                        completions.append((t, c))
            if view.match_selector(loc, 'source.lsl - meta.class.state.body.lsl, meta.function.declaration.body.lsl, meta.block.event.lsl, meta.parameters.lsl, -string.quoted.double.lsl'):
                if result['scope'].startswith('constant.language.'):
                    t = '{}\t{} ({})'.format(
                        word,
                        result['type'],
                        result['value']
                    )
                    c = word
                    if fuzzy_match(prefix, t)[0]:
                        completions.append((t, c))
                    if 'params' in result:
                        t = '{}\t…, {}, …'.format(
                            word,
                            ', '.join('{} {}'.format(param['type'], param['name']) for param in result['params'])
                        )
                        c = '{}, {}{}'.format(
                            word,
                            ', '.join('${{{}:{} {}}}'.format(idx, param['type'], param['name']) for idx, param in enumerate(result['params'], 1)),
                            r', ${LSL_WHITESPACE_AFTER}$0'
                        )
                        if fuzzy_match(prefix, t)[0]:
                            completions.append((t, c))
            if view.match_selector(loc, 'source.lsl - meta.class.state.body, meta.function.declaration.body.lsl, meta.block.event.lsl, meta.parameters.lsl, -string.quoted.double.lsl'):
                if result.get('scope', None) == 'storage.type':
                    t1 = '{}\tstorage type'.format(
                        word
                    )
                    c1 = word
                    if fuzzy_match(prefix, t1)[0]:
                        completions.append((t1, c1))
                    t2 = '{0}\t{0} x = value;'.format(
                        word
                    )
                    c2 = '{} {}'.format(
                        word,
                        r'${1:x} = ${2:value};${LSL_WHITESPACE_AFTER}$0'
                    )
                    if fuzzy_match(prefix, t2)[0]:
                        completions.append((t2, c2))
            # completions for `keyword.control.*` moved to `./.sublime/completions/lsl_keyword_control.sublime-completions`
            if view.match_selector(loc, 'meta.function.declaration.body.lsl, meta.block.event.lsl, -string.quoted.double.lsl'):
                if result.get('scope', None) == 'reserved.log':
                    t = 'print\t(any type) log function'
                    c = 'print(${1:"value of any type"}); // don\'t spam LindenLab!${LSL_WHITESPACE_AFTER}$0'
                    if fuzzy_match(prefix, t)[0]:
                        completions.append((t, c))

        # TODO: sort with itemgetter as that is faster
        completions.sort(key=lambda completion: fuzzy_match(prefix, completion[0])[1], reverse=True)

        if completions:
            return (completions, flags)

        return None
