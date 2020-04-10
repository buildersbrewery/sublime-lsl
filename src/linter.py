#!/usr/bin/env python
# coding: utf-8


import sublime

from collections import namedtuple
import os
import platform
import re
import shutil
from sublime_lib import NamedSettingsDict


PKG_NAME = '{}'.format(__package__.split('.')[0])
PKGCTRL = 'Package Control'
SUBLINTER = 'SublimeLinter'


try:
    from SublimeLinter.lint import Linter, util
except ImportError as e:
    if sublime.ok_cancel_dialog(
        '"{}" requires "{}", would you  like to install it now?'.format(PKG_NAME, SUBLINTER)
        # TODO: f'"{PKG_NAME}" requires "{SUBLINTER}", would you  like to install it now?'
    ):
        sublime.run_command(
            'advanced_install_package',
            { 'packages': SUBLINTER }
        )
    else:
        sublime.error_message('{}'.format(e))
        # TODO: sublime.error_message(f'{e}')


def plugin_loaded():

    try:
        from package_control import events
    except ImportError:
        pass
    else:
        pc_settings = NamedSettingsDict(PKGCTRL)
        sublinter_installed = bool(SUBLINTER in set(
            # FIXME: fix NoneType Error on startup
            pc_settings.get('installed_packages', [])))
        if events.install(PKG_NAME) and not sublinter_installed:
            if sublime.ok_cancel_dialog('"{}" requires "{}", would you like to install it now?'.format(PKG_NAME, SUBLINTER)):
            # TODO: if sublime.ok_cancel_dialog(f'"{PKG_NAME}" requires "{SUBLINTER}", would you like to install it now?'):
                sublime.run_command('advanced_install_package', {'packages': SUBLINTER})


def plugin_unloaded():
    print('=BB= LSL: plugin unloaded')


# TODO: add type hints
class Lslint(Linter):

    cmd = ('lslint', '${args}', '${temp_file}')
    defaults = {
        'selector': 'source.lsl',
        'args': [
            '-i'                                                                # ignore preprocessor directives
        ]
    }
    error_stream = util.STREAM_BOTH
    line_col_base = (1, 1)
    multiline = True
    regex = r'''(?x)                                                            # ignore whitespace
        (?:
            ^                                                                   # BOL
            (?:                                                                 # when running lslint -p
                (?P<path>..[^:]*)                                               # named group: path
                \:\:                                                            # two colons
            )?
            (?:(?P<warning>(?:\w)?WARN)|(?P<error>ERROR))                       # named group: warning, error
            \:\:\s\(\s*                                                         # two colons, whitespace, left brace, optional whitespace
            (?P<line>[0-9]+)                                                    # named group: line
            \,\s*                                                               # comma, optional whitespace
            (?P<col>[0-9]+)                                                     # named group: col
            \)\:\s                                                              # right brace, colon, whitespace
            (?P<message>.*)                                                     # named group: message
            $                                                                   # EOL
        )
    '''
    tempfile_suffix = 'lsl'
    word_re = None

    def which(self, executable):
        PKGS_PATH = sublime.packages_path()
        PLATFORM = sublime.platform()
        if PLATFORM in ['linux', 'osx'] or platform.release() == 'XP':
            subdir = PLATFORM
        else:
            subdir = 'windows' + platform.architecture()[0][:-3]
        enhanced_path = os.pathsep.join([
            os.environ.get('PATH', default=None),
            os.path.join(PKGS_PATH, PKG_NAME, 'lib', 'lslint', subdir)
        ])
        return shutil.which(executable, path=enhanced_path) or super().which(executable)

    def on_stderr(self, stderr):
                                                                                # TODO: hide if no errors or warnings
        if stderr.startswith('TOTAL::'):
            return
                                                                                # FIXME: errors & warnings not shown
