#!/usr/bin/env python
# coding: utf-8


import sublime
import sublime_plugin


from ruamel.yaml import YAML
from threading import Thread


LSL_KEYWORD_DATA = None
PKG_NAME = '{}'.format(__package__.split('.')[0])


def plugin_loaded():

    def load_data():
        sourcePath = 'Packages/{}/src/_assets/keyword_data/LSL.yaml'.format(PKG_NAME)
        # TODO: sourcePath = f'Packages/{PKG_NAME}/src/_assets/keyword_data/LSL.yaml'
        global LSL_KEYWORD_DATA
        LSL_KEYWORD_DATA = YAML().load(
            sublime.load_resource(sourcePath))

    thread = Thread(target=load_data)
    thread.start()
