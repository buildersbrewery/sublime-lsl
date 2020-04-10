#!/usr/bin/env python
# coding: utf-8


import sublime
import sublime_plugin


import mdpopups
from sublime_lib import ResourcePath


PKG_NAME = __package__.split('.')[0]
RESPATH_COL_SCHEME = 'Packages/{}/.sublime/color-schemes/LSL.hidden-color-scheme'.format(PKG_NAME)
RESPATH_STYLES = 'Packages/{}/src/_assets/indent_styles'.format(PKG_NAME)
# TODO: RESPATH_COL_SCHEME = f'Packages/{PKG_NAME}/.sublime/color-schemes/LSL.hidden-color-scheme'
# TODO: RESPATH_STYLES = f'Packages/{PKG_NAME}/src/_assets/indent_styles'
RESPATH_INDENT_STYLE = 'Packages/User/LSL_INDENT_STYLE.tmPreferences'
INDENT_STYLE_FILE = None
settings = None


def status_msg(msg):

    sublime.status_message('{}: {}'.format(PKG_NAME, msg))
    # TODO: sublime.status_message(f'{PKG_NAME}: {msg}')


def set_indent_style(name='allman'):

    try:
        styles = [
            'allman',
            'gnu',
            'horstmann',
            'k_and_r',
            'lisp',
            'pico',
            'ratliff',
            'whitesmiths'
        ]
        if name not in styles:
            name = 'allman'
        # TODO: adjust settings in `.sublime/metadata/LSL General.tmPreferences` accordingly
        ResourcePath('{}/{}.xml'.format(RESPATH_STYLES, name)).copy(INDENT_STYLE_FILE)
        # TODO: ResourcePath(f'{RESPATH_STYLES}/{name}.xml').copy(INDENT_STYLE_FILE)
    except Exception as e:
        print(e)


def plugin_loaded(reload=False):

    try:
        global settings
        settings = sublime.load_settings('LSL.sublime-settings')
        settings.clear_on_change('reload')
        settings.add_on_change('reload', lambda: plugin_loaded(reload=True))
        global INDENT_STYLE_FILE
        INDENT_STYLE_FILE = ResourcePath(RESPATH_INDENT_STYLE).file_path()
        if not ResourcePath(RESPATH_INDENT_STYLE).exists():
            set_indent_style('allman')
    except Exception as e:
        print(e)

    if reload:
        status_msg('Reloaded settings on change.')


def plugin_unloaded():

    global settings
    settings.clear_on_change('reload')


# TODO: add type hints
class LslChangeSchemeCommand(sublime_plugin.WindowCommand):

    _is_checked = False

    def __init__(self, view):
        try:
            # TODO: find a better way to do this
            self._is_checked = settings.has('color_scheme')
        except Exception as e:
            pass

    def run(self):
        try:
            global settings
            if self._is_checked:
                settings.erase('color_scheme')
            else:
                settings.set('color_scheme',
                             RESPATH_COL_SCHEME)
            settings.save()
            self._is_checked = not self._is_checked
        except Exception as e:
            pass

    def is_checked(self):
        return self._is_checked


# TODO: add type hints
class LslIndentStyleInputHandler(sublime_plugin.ListInputHandler):

    def name(self):
        return 'name'

    def placeholder(self):
        return 'Allman'

    def list_items(self):
        items = [
            ('Allman', 'allman'),
            ('GNU', 'gnu'),
            ('Horstmann', 'horstmann'),
            ('K & R', 'k_and_r'),
            ('Lisp', 'lisp'),
            ('Pico', 'pico'),
            ('Ratliff', 'ratliff'),
            ('Whitesmiths', 'whitesmiths')
        ]
        return items

    def preview(desc, value):
        items = [
            'allman',
            'gnu',
            'horstmann',
            'k_and_r',
            'lisp',
            'pico',
            'ratliff',
            'whitesmiths'
        ]
        if value not in items:
            return None
        v = sublime.active_window().active_view()
        lsl_code_block = ResourcePath(
            '{}/{}.lsl'.format(RESPATH_STYLES, value)
            # TODO: f'{RESPATH_STYLES}/{value}.lsl'
        ).read_text()
        lsl_code_block = '```lsl\n{}\n```'.format(lsl_code_block)
        # TODO: lsl_code_block = f'```lsl\n{lsl_code_block}\n```'
        return sublime.Html(mdpopups.md2html(v, lsl_code_block))


# TODO: add type hints
class LslChangeIndentCommand(sublime_plugin.WindowCommand):

    def run(self, name):
        set_indent_style(name)

    def input(self, args):
        if 'name' not in args:
            return LslIndentStyleInputHandler()
        return None


# TODO: add type hints
class LslOpenDocs(sublime_plugin.WindowCommand):

    def run(self, resource_path='README.md', resource_title='README'):
        try:
            w = self.window
            v = w.active_view()
            import mdpopups
            md_preview = mdpopups.md2html(
                view=v,
                markup=sublime.load_resource('Packages/{}/{}'.format(PKG_NAME, resource_path)),
                # TODO: markup=sublime.load_resource(f'Packages/{PKG_NAME}/{resource_path}'),
                template_vars=None,
                template_env_options=None
            )
            preview_sheet = w.new_html_sheet(
                name='{}: {}'.format(PKG_NAME, resource_title),
                # TODO: name=f'{PKG_NAME}: {resource_title}',
                contents=md_preview,
                cmd='open_url',
                args=None,
                flags=0,
                group=-1
            )
        except Exception as e:
            print('{}: Exception: {}'.format(PKG_NAME, e))
            # TODO: print(f'{PKG_NAME}: Exception: {e}')

    # def is_enabled(self): return bool

    def is_visible(self):
        try:
            import mdpopups
            return True
        except Exception as e:
            return False

    # def description(self): return str
    # def input(self, args): return CommandInputHandler or None
