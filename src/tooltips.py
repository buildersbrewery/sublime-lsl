#!/usr/bin/env python
# coding: utf-8


import sublime
import sublime_plugin

import mdpopups


PKG_NAME = '{}'.format(__package__.split('.')[0])
SL_WIKI = None
WIKIPEDIA = None


def plugin_loaded():

    global SL_WIKI
    global WIKIPEDIA

    SL_WIKI = 'https://wiki.secondlife.com/w/index.php?title=Special:Search&go=Go&search='
    WIKIPEDIA = 'https://en.wikipedia.org/wiki/'


# TODO: add type hints
class LslTooltips(sublime_plugin.EventListener):

    def on_navigate(self, link):
        sublime.active_window().run_command('open_url', { 'url': link })

    def on_hide(self, view):
        mdpopups.hide_popup(view)

    def on_hover(self, view, point, hover_zone):

        if view.settings().get('is_widget'):
            return

        if not view.settings().get('show_definitions'):
            return

        if hover_zone is not sublime.HOVER_TEXT:
            return

        if not view.score_selector(point, 'source.lsl'):
            return

        # TODO: fix makopo/sublime-text-tooltip-lsl#6
        # word = view.substr(view.expand_by_class(point, sublime.CLASS_WORD_START | sublime.CLASS_WORD_END, "./\\()\"'-:,.;<>~!@#$%^&*|+=[]{}`~?"))
        word = view.substr(view.word(point))

        if not word:
            return

        from .keyword_data_loader import LSL_KEYWORD_DATA
        if LSL_KEYWORD_DATA is None:
            return

        try:
            tooltipRows = []

            result = LSL_KEYWORD_DATA[word]

            if result is None:
                return

            # Python-Markdown/markdown used by facelessuser/sublime-markdown-popups requires 4 spaces indentation

            if 'type' in result or word.startswith('ll'):
                return_value = '({}) '.format(result['type']) if 'type' in result else ''
                # TODO: return_value = f'({result['type']}) ' if 'type' in result else ''
                if 'params' in result:
                    paramsCache = []
                    for param in result['params']:
                        if 'default' in param:
                            paramsCache.append('<a href="{}{}">{}</a> {} (Default: {})'.format(SL_WIKI, param['type'], param['type'], param['name'], param['default']))
                        else:
                            paramsCache.append('<a href="{}{}">{}</a> {}'.format(SL_WIKI, param['type'], param['type'], param['name']))
                    params = '(' + ', '.join(paramsCache) + ')'
                else:
                    params = ''
                has_value = ' = {}'.format(str(result['value'])) if 'value' in result else ''
                if 'value_description' in result:
                    has_value = has_value + ' = {}'.format(str(result['value_description']))
                tooltipRows.append('{}<a href="{}{}">{}</a>{}{}'.format(return_value, SL_WIKI, word, word, params, has_value))
                # TODO: tooltipRows.append(f'{return_value}<a href="{SL_WIKI}{word}">{word}</a>{params}{has_value}')
            else:
                tooltipRows.append('<a href="{}{}">{}</a>'.format(SL_WIKI, word, word))
                # TODO: tooltipRows.append(f'<a href="{SL_WIKI}{word}">{word}</a>')
            tooltipRows.append(' ')
            if 'type' in result or word.startswith('ll'):
                if 'params' in result:
                    tooltipRows.append('* Params:')
                    for param in result['params']:
                        tooltipRows.append('    * ({}) {}'.format(param['type'], param['name']))
                        if 'default' in param:
                            tooltipRows.append('        * default: {}'.format(param['default']))
                        if 'description' in param:
                            tooltipRows.append('        * description: {}'.format(param['description']))
            if 'function-id' in result:
                tooltipRows.append('* [Function id](https://wiki.secondlife.com/wiki/LSL_Function_ID): {}'.format(str(result['function-id'])))
            if 'required_permissions' in result:
                tooltipRows.append('* [Required permissions](https://wiki.secondlife.com/wiki/Category:LSL_Requires_Permissions): ' + ', '.join(str('<a href="{}{}">{}</a>'.format(SL_WIKI, permission, permission)) for permission in result['required_permissions']))
                # TODO: tooltipRows.append('* [Required permissions](https://wiki.secondlife.com/wiki/Category:LSL_Requires_Permissions): ' + ', '.join(str(f'<a href="{SL_WIKI}{permission}">{permission}</a>') for permission in result['required_permissions']))
            if 'version' in result:
                tooltipRows.append('* SL server version: {}'.format(result['version']))
            if 'status' in result:
                tooltipRows.append('* Status: {}'.format(result['status']))
            if 'delay' in result:
                # delay is float (in seconds) or string ('variable' for llSleep)
                tooltipRows.append('* [Delay](https://wiki.secondlife.com/wiki/LSL_Delay): {}'.format(str(result['delay'])))
            if 'energy' in result:
                tooltipRows.append('* Energy: {}'.format(str(result['energy'])))
            tooltipRows.append('* SL JIRA: [{}](http://jira.secondlife.com/secure/IssueNavigator!executeAdvanced.jspa?jqlQuery=%28summary+%7E+%22{}%22+OR+description+%7E+%22{}%22%29+&runQuery=true)'.format(word, word, word))
            # TODO: tooltipRows.append(f'* SL JIRA: [{word}](http://jira.secondlife.com/secure/IssueNavigator!executeAdvanced.jspa?jqlQuery=%28summary+%7E+%22{word}%22+OR+description+%7E+%22{word}%22%29+&runQuery=true)')
            if 'description' in result:
                tooltipRows.append(' ')
                tooltipRows.append('---')
                tooltipRows.append(' ')
                tooltipRows.append('{}'.format(result['description']))
            if 'related' in result:
                tooltipRows.append(' ')
                tooltipRows.append('---')
                tooltipRows.append(' ')
                tooltipRows.append('Related:')
                tooltipRows.append(' ')
                if 'constants' in result['related']:
                    tooltipRows.append('* Constants: ' + ', '.join(str('<a href="{}{}">{}</a>'.format(SL_WIKI, related, related)) for related in result['related']['constants']))
                    # TODO: tooltipRows.append('* Constants: ' + ', '.join(str(f'<a href="{SL_WIKI}{related}">{related}</a>') for related in result['related']['constants']))
                if 'events' in result['related']:
                    tooltipRows.append('* Events: ' + ', '.join(str('<a href="{}{}">{}</a>'.format(SL_WIKI, related, related)) for related in result['related']['events']))
                    # TODO: f-strings
                if 'functions' in result['related']:
                    tooltipRows.append('* Functions: ' + ', '.join(str('<a href="{}{}">{}</a>'.format(SL_WIKI, related, related)) for related in result['related']['functions']))
                    # TODO: f-strings
                if 'slwiki' in result['related']:
                    tooltipRows.append('* SL wiki: ' + ', '.join(str('<a href="{}{}">{}</a>'.format(SL_WIKI, related, related)) for related in result['related']['slwiki']))
                    # TODO: f-strings
                if 'slwiki_categories' in result['related']:
                    tooltipRows.append('* SL wiki categories: ' + ', '.join(str('<a href="{}Category:{}">{}</a>'.format(SL_WIKI, related, related)) for related in result['related']['slwiki_categories']))
                    # TODO: f-strings
                if 'wikipedia' in result['related']:
                    tooltipRows.append('* Wikipedia (en): ' + ', '.join(str('<a href="{}{}">{}</a>'.format(WIKIPEDIA, related, related)) for related in result['related']['wikipedia']['en']))
                    # TODO: f-strings
            if 'usage' in result:
                tooltipRows.append(' ')
                tooltipRows.append('---')
                for usage_example in result['usage']:
                    tooltipRows.append(' ')
                    tooltipRows.append('```lsl')
                    tooltipRows.append('{}'.format(usage_example))
                    # TODO: tooltipRows.append(f'{usage_example}')
                    tooltipRows.append('```')
            if 'snippets' in result:
                tooltipRows.append(' ')
                tooltipRows.append('---')
                for snippet in result['snippets']:
                    tooltipRows.append(' ')
                    tooltipRows.append('```lsl')
                    tooltipRows.append('{}'.format(snippet))
                    # TODO: tooltipRows.append(f'{snippet}')
                    tooltipRows.append('```')

            if 0 < len(tooltipRows):
                tooltipText = mdpopups.format_frontmatter({'allow_code_wrap': True})
                tooltipText += '\n'
                tooltipText += '\n'.join(tooltipRows)
                # mdpopups.color_box for vectors? or mdpopups.tint with placeholder image?
                mdpopups.show_popup(view,
                                    tooltipText,
                                    flags=(sublime.COOPERATE_WITH_AUTO_COMPLETE | sublime.HIDE_ON_MOUSE_MOVE_AWAY),
                                    location=point,
                                    wrapper_class='lsl',
                                    max_width=640,
                                    max_height=480,
                                    on_navigate=self.on_navigate,
                                    on_hide=self.on_hide(view))
                return
            mdpopups.hide_popup(view)
        except Exception as e:
            mdpopups.hide_popup(view)
