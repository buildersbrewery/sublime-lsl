#!/usr/bin/env python
# coding: utf-8


import sublime


import os
import stat


from .completions import *
from .keyword_data_loader import *
from .sublimelinter_contrib_lslint import *
from .tooltips import *
from .window_commands import *


PKG_NAME = __package__.split('.')[0]


def chmod_lslint():
    PLATFORM = sublime.platform()
    if PLATFORM == 'linux':
        binPaths = [
            'lib/lslint/linux/lslint'
        ]
    elif PLATFORM == 'osx':
        binPaths = [
            'lib/lslint/osx/lslint'
        ]
    else:
        return
    for binPath in binPaths:
        PACKAGES_PATH = sublime.packages_path()
        os.chmod(
            os.path.join(PACKAGES_PATH, '{}'.format(PKG_NAME), binPath),
            # TODO: os.path.join(PACKAGES_PATH, f'{PKG_NAME}', binPath),
            stat.S_IRUSR |
                stat.S_IWUSR |
                stat.S_IXUSR |
                stat.S_IRGRP |
                stat.S_IXGRP |
                stat.S_IROTH |
                stat.S_IXOTH
        )


def plugin_loaded():
    PLATFORM = sublime.platform()
    VERSION = int(sublime.version())
    if PLATFORM in ['linux', 'osx']:
        chmod_lslint()
    keyword_data_loader.plugin_loaded()
    tooltips.plugin_loaded()
    window_commands.plugin_loaded()


def plugin_unloaded():
    keyword_data_loader.plugin_unloaded()
    tooltips.plugin_unloaded()
    window_commands.plugin_unloaded()
