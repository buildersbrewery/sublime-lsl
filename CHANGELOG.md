<a name="6.0.0"></a>
# 6.0.0 (2020-03-06)

### Breaking Changes

* require Sublime Text Build 4065 or later
    * use `html_sheet` when displaying docs

### Features

* use `html_sheet` when displaying docs
* more info in tooltips for `keyword.control` words
* constants:
    * ENV_THROTTLE

### Changes

* change flags in build file
* update docs for ST4xxx
* update engines and devDependencies for node `packages.json`

### Chores

* prepare TODOs for `python3.8`
    * f-strings
    * type-hints

<a name="5.0.0"></a>
# 5.0.0 (2019-07-12)

### Breaking Changes

* restructure `keyword_data` to be a dictionary (and not an array)
* removed Firestorm Preprocessor support via `mcpp` due to 32bit-binaries not being supported on macOS Catalina anymore

### Features

* added a README for keyword_data structure
* split `constant.language.integer` into:
    * `constant.language.integer`
    * **(new)** `constant.language.integer.bit_field`
    * **(new)** `constant.language.integer.bit_field.bit_mask`
    * `constant.language.integer.boolean`
* added new constants from `19.05.17.527341`
    * `IMG_USE_BAKED_AUX1`
    * `IMG_USE_BAKED_AUX2`
    * `IMG_USE_BAKED_AUX3`
    * `IMG_USE_BAKED_EYES`
    * `IMG_USE_BAKED_HAIR`
    * `IMG_USE_BAKED_HEAD`
    * `IMG_USE_BAKED_LEFTARM`
    * `IMG_USE_BAKED_LEFTLEG`
    * `IMG_USE_BAKED_LOWER`
    * `IMG_USE_BAKED_SKIRT`
    * `IMG_USE_BAKED_UPPER`
* added new constants from `19.06.11.528038`
    * `OBJECT_ANIMATED_COUNT`
    * `OBJECT_ANIMATED_SLOTS_AVAILABLE`

### Bug fixes

* fix scopes in keyword_data for state words

### Changes

* update regexes for linter using named groups
* remove deprecated linter attributes
* change scope `invalid.unimplemented` to `invalid.illegal.unimplemented`
* update helper scripts to use new structure of keyword_data:
    * `./src/completions.py`
    * `./src/keyword_data_loader.py`
    * `./src/tooltips.py`
* enhance readability of messages for Package Control

<a name="4.5.0"></a>
# 4.5.0 (2019-02-20)

### Bug fixes

* fix a formatting issue with the JIRA link in tooltips
* add missing test and keyword_data for `XP_ERROR_REQUEST_PERM_TIMEOUT`

### Changes

* updated syntax tests for functions with return type

### Features

invalid.unimplemented:

* `SKY_ABSORPTION_CONFIG`
* `SKY_DENSITY_PROFILE_COUNTS`
* `SKY_MIE_CONFIG`
* `SKY_RAYLEIGH_CONFIG`

constants:

* `ENVIRONMENT_DAYINFO`
* `ENV_INVALID_AGENT`
* `ENV_INVALID_RULE`
* `ENV_NOT_EXPERIENCE`
* `ENV_NO_ENVIRONMENT`
* `ENV_NO_EXPERIENCE_LAND`
* `ENV_NO_EXPERIENCE_PERMISSION`
* `ENV_VALIDATION_FAIL`
* `INVENTORY_SETTING`
* `SKY_CLOUD_TEXTURE`
* `SKY_MOON_TEXTURE`
* `SKY_SUN_TEXTURE`
* `WATER_NORMAL_TEXTURE`

functions:

* `llGetRegionTimeOfDay()`
* `integer llReplaceAgentEnvironment(key agent_id, float transition, string environment)`
* `llSetAgentEnvironment(key agent_id, float transition, list params);`

<a name="4.4.2"></a>
## 4.4.2 (2019-02-19)

### Bug fixes

* fix typo in keyword_data_loader

<a name="4.4.1"></a>
## 4.4.1 (2019-02-19)

### Bug fixes

* fix import of sublime_lib

### Changes

* remove webbrowser dependency

<a name="4.4.0"></a>
# 4.4.0 (2019-02-17)

### Changes

* change scopes where applicable from `constant.language.integer` to:
    * `constant.language.integer.bit_field`
    * `constant.language.integer.bit_field.bit_mask`
* changed function return type where applicable to:
    * `integer.bit_field`
    * `integer.boolean`
* changed type of function param where applicable to:
    * `integer.bit_field`
    * `integer.bit_field.bit_mask`
* further enhance keyword_data

### Features

* added JIRA link to tooltips

<a name="4.3.6"></a>
## 4.3.6 (2019-02-15)

### Bug fixes

* the entry for `print` in keyword_data was missing a name

### Changes

* simplify checks for support of window commands
* make further use of `sublime_lib` dependency
* enhance keyword_data

<a name="4.3.5"></a>
## 4.3.5 (2019-02-11)

### Bug fixes

* fix typo in build file [#7](https://github.com/buildersbrewery/sublime-lsl/issues/7)

<a name="4.3.4"></a>
## 4.3.4 (2019-02-11)

### Bug fixes

* fix typo in keyword_data

<a name="4.3.3"></a>
## 4.3.3 (2019-02-11)

### Bug fixes

* fix typo in keyword_data_loader

<a name="4.3.2"></a>
## 4.3.2 (2019-02-11)

### Bug fixes

* fix typo in init

<a name="4.3.1"></a>
## 4.3.1 (2019-02-11)

### Bug fixes

* fix typo in linter

### Changes

* remove reloader
* hide potentially present tooltip when failing to show new one
* force formats in keyword_data
    * string for `version`
* add `sublime_lib` dependency to deal with settings files

<a name="4.3.0"></a>
# 4.3.0 (2019-02-08)

### Changes

* move 3rd party software to `./lib/`
* move indent style assets to `./src/_assets/indent_styles/`
* move keyword_data to `./src/_assets/keyword_data/`
* update package reloader
* significantly expand the syntax tests to prepare for future syntax updates

### Features

* sort completions by score
* load plugin correctly on Build 3189+

<a name="4.2.1"></a>
## 4.2.1 (2019-01-29)

### Changes

* further enhance readability of `LSL_KEYWORD_DATA.yaml`
* re-address [#3](https://github.com/buildersbrewery/sublime-lsl/issues/3)
* speed up completions
* significally improve startup by loading LSL_KEYWORD_DATA on secondary thread into cache and using it from there when needed

<a name="4.2.0"></a>
# 4.2.0 (2019-01-29)

### Bug fixes

* fix default LSL settings config

### Features

* generate most completions from lsl keyword_data

<a name="4.1.1"></a>
## 4.1.1 (2019-01-28)

### Bug fixes

* reorder var declaration in `./src/window_commands.py`

<a name="4.1.0"></a>
# 4.1.0 (2019-01-28)

### Bug fixes

* FileNotFound error of SublimeLinter on Windows
* handling of binaries on Linux and macOS
* minor issue on startup on windows
* invalid.deprecated test file
* replace a `!=` with `is not` in the hover zone check for tooltips

### Changes

* update menu entries for SL wiki Server release notes to show last three years (2017, 2018, 2019)
* hide "change indent" command from Builds earlier than 3154
* gitattributes
* default LSL settings for Sublime

### Features

* move keyword_data into yaml asset to prepare for merging with completions data
* more tests for invalid.illegal

<a name="4.0.0"></a>
# 4.0.0 (2019-01-21)

**BREAKING CHANGES**:

* use SublimeLinter `v4`
    * see [#6](https://github.com/buildersbrewery/sublime-lsl/issues/6)

### Changes

* bump required `lslint` to `v1.2.1`

### Features

* add new constants and functions
    * compare <https://community.secondlife.com/forums/topic/429648-eep-lsl-scripting/>

<a name="2.2.0"></a>
# 2.2.0 (2018-01-30)

### Changes

* change indentation from 2 to 4 spaces for [`mdpopups`](https://github.com/facelessuser/sublime-markdown-popups) input due to [`Python Markdown`](https://github.com/Python-Markdown/markdown) requirements
* remove settings reference from menu and command palette
* change how documentation strings are stored in keyword_data structure
* separate related wiki from wiki category links

### Features

* add keyword_data for all functions
* added `PRIM_TYPE_LEGACY` to `invalid.deprecated`

<a name="2.1.0"></a>
# 2.1.0 (2018-01-08)

### Bug fixes

* fix cross references in `main.py`

### Changes

* bump required `lslint` to `v1.0.9`
* update documentation
* update color scheme for better popup and phantom support while making slight adjustments to the targeted scopes

### Features

* add keyword_data up to function 239 ([`llAvatarOnSitTarget`](http://wiki.secondlife.com/wiki/LlAvatarOnSitTarget))

<a name="2.0.0"></a>
# 2.0.0 (2018-01-08)

**BREAKING CHANGES**:

* bump requirements from `Build 3124` to `Build 3154`

### Bug fixes

* fix a metadata issue with indent patterns, compare [#4](https://github.com/buildersbrewery/sublime-lsl/issues/4)
* fix link target for SublimeLinter repo

### Changes

* add instructions to satisfy [Package Control dependencies](https://packagecontrol.io/docs/dependencies) during upgrade
* now includes `lslint v1.0.9`
* run [`lslint`](https://github.com/makopo/lslint) with the same flags when building and linting

### Features

* choose indent style via [`sublime_plugin.ListInputHandler`](http://www.sublimetext.com/docs/3/api_reference.html#sublime_plugin.ListInputHandler) with [`sublime.Html`](http://www.sublimetext.com/docs/3/minihtml.html) preview via [`mdpopups`](https://github.com/facelessuser/sublime-markdown-popups)
* add keyword_data up to function 174 ([`llAngleBetween`](http://wiki.secondlife.com/wiki/LlAngleBetween))
* add keyword_data for [animesh](http://wiki.secondlife.com/wiki/Animesh_User_Guide) functions:
    * [`llStartObjectAnimation`](http://wiki.secondlife.com/wiki/LlStartObjectAnimation)
    * [`llStopObjectAnimation`](http://wiki.secondlife.com/wiki/LlStopObjectAnimation)
    * [`llGetObjectAnimationNames`](http://wiki.secondlife.com/wiki/LlGetObjectAnimationNames)

<a name="1.4.1"></a>
## 1.4.1 (2017-12-26)

### Changes

* update keyword for global variable declarations
    * update test files accordingly
    * fix links in CONTRIBUTING
* update "building" section in README

<a name="1.4.0"></a>
# 1.4.0 (2017-12-25)

### Changes

* remove named groups from regex in build file for clickable errors in output
* further preparations to merge completion_data with keyword_data

### Features

* use compiled mcpp binary on linux
* update keyword_data
    * update `related` info for events
    * update `related` info for functions
* fuzzy match completions

<a name="1.3.0"></a>
# 1.3.0 (2017-12-08)

### Bug fixes

* patch all binary files on linux and osx (via chmod and git)

### Changes

* update keyword_data
    * add related info to func tooltips
    * add descriptions to params info in tooltips
    * add wikipedia and (other) slwiki links to related info in tooltips

<a name="1.2.3"></a>
## 1.2.3 (2017-12-06)

### Bug fixes

* fix typo in `main.py`

<a name="1.2.2"></a>
## 1.2.2 (2017-12-06)

### Bug fixes

* fix an import

<a name="1.2.1"></a>
## 1.2.1 (2017-12-06)

### Bug fixes

* fix lslint on linux and osx, see [#1](https://github.com/buildersbrewery/sublime-lsl/issues/1)
* fix build script on linux, see [#2](https://github.com/buildersbrewery/sublime-lsl/issues/2)

<a name="1.2.0"></a>
# 1.2.0 (2017-12-03)

### Features

* update keyword_data
    * number values formatted as numbers not strings
    * delays formatted as floats
    * better tooltips for integer constants with hex values
    * better tooltips for string constants with unicode values
    * add func IDs to func tooltips
    * add required perms info to func tooltips

<a name="1.1.1"></a>
## 1.1.1 (2017-12-02)

### Bug fixes

* fix some scopes

### Changes

* move snippets to completion data files
    * to prepare generating them directly

<a name="1.1.0"></a>
# 1.1.0 (2017-11-29)

### Changes

* move completion data into python files
    * to get rid of the completion files and generate completions via the keyword data directly

<a name="1.0.2"></a>
## 1.0.2 (2017-11-28)

### Bug fixes

* fix completion scopes

<a name="1.0.1"></a>
## 1.0.1 (2017-11-28)

### Bug fixes

* remove `main.pyc`

<a name="1.0.0"></a>
# 1.0.0 (2017-11-23)

First release.
