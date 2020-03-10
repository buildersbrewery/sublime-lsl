[![License](https://img.shields.io/github/license/buildersbrewery/sublime-lsl.svg?style=flat-square)](https://github.com/buildersbrewery/sublime-lsl/blob/master/LICENSE.txt)
[![Requires Sublime Text Build 4065 or later](https://img.shields.io/badge/Sublime%20Text-%3E%3D4065-orange.svg?style=flat-square)](https://www.sublimetext.com)
[![Download the =BB= LSL on Package Control](https://img.shields.io/packagecontrol/dt/%3DBB%3D%20LSL.svg?style=flat-square)](https://packagecontrol.io/packages/%3DBB%3D%20LSL)
[![Latest tag](https://img.shields.io/github/tag/buildersbrewery/sublime-lsl.svg?style=flat-square)](https://github.com/buildersbrewery/sublime-lsl/tags)

### Table of contents

* [About](#about)
* [Requirements](#requirements)
* [Installation](#installation)
* [Usage](#usage)
* [Building](#building)
* [Color Scheme](#color-scheme)
* [Contributing](#contributing)
* [Linting](#linting)
* [Indent styles](#indent-styles)
* [Settings](#settings)
* [Tooltips](#tooltips)
* [Disclaimer](#disclaimer)

---

<div id="readme"></div>

# =BB= LSL package for Sublime

> Bringing [Linden Scripting Language (LSL)](https://wiki.secondlife.com/wiki/LSL_Portal) support to [Sublime Text](https://www.sublimetext.com).

## About

With regards to the development of this package, supporting new features of Sublime Text as they become available takes precedence over ensuring backwards compatibility.
Therefore this package **targets and is tested against the latest Build of Sublime Text**, releases are frequent and the requirements for this package will be updated accordingly.
Implicitly this might require you to be on the `dev` release channel and consequently have a valid Sublime Text license.

## Requirements

* [Sublime Text](https://www.sublimetext.com) `Build 4065` or later
    * (stable)
    * (dev channel)
    * Buy a new license: <https://www.sublimehq.com/store/text>
    * Retrieve a lost license: <https://www.sublimetext.com/retrieve_key>
* [`Package Control`](https://packagecontrol.io)
    * via `Tools > Install Package Control …`
* [`SublimeLinter`](https://github.com/sublimelinter/sublimelinter)
    * Open the command palette
        * via `Tools > Command Palette`
    * Select `Package Control: Install Package`
    * Select `SublimeLinter`

## Installation

Make sure your setup meets the [requirements](#requirements) before you:

* open `Sublime Text`
* open the command palette
    * via `Tools > Command Palette`
* select `Package Control: Install Package`
* select [`=BB= LSL`](https://packagecontrol.io/packages/%3DBB%3D%20LSL)

To get LSL syntax highlighting in [tooltips](#tooltips), refer to the [settings](#settings) section.

Close and re-open `Sublime Text`.

## Usage

When editing scripts in the viewer, click the **EDIT** button in the script edit window. Save and close view (tab) when done.

To use `Sublime Text` for editing your script in-world:

* Enable: `Me > Preferences > Advanced > Show Advanced menu`
* Go to: `Advanced > Show Debug Settings`
* Edit: `ExternalEditor`

Setting consists of these three parts:

* Path to editor (use quotes if path has spaces)
* Optional command line params
* `"%s"` will paste script path automatically (do NOT change this)

For a list of Sublime arguments run `subl --help` and/or refer to the [OSX Command Line documentation](http://www.sublimetext.com/docs/3/osx_command_line.html).

### Usage on Linux

```text
"/usr/bin/subl" "%s"
```

### Usage on macOS

```text
"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "%s"
```

### Usage on Windows

```text
"C:\Program Files\Sublime Text 3\subl.exe" "%s"
```

## Building

> runs [`lslint`](https://github.com/Makopo/lslint)

* Select `Tools > Build` on Linux or macOS.
* Select `Tools > Build with …` on Windows and select a binary to use.

Output to a `Build results` panel, in which you can double click (possible) errors to move the cursor to that point in your file.

## Color Scheme

> [`Sublime Text 3` Color Scheme documentation](https://www.sublimetext.com/docs/3/color_schemes.html)
>
> Requires `Sublime Text Build 3149` or later

You can toggle using the official Color Scheme for LSL files by selecting `Preferences > Package Settings > =BB= LSL > Settings > Use official color scheme for LSL files` from the main menu.

The color scheme file can be overridden via `Packages/User/LSL.hidden-color-scheme`.

## Contributing

The issue tracker can be found at <https://github.com/buildersbrewery/sublime-lsl/issues>.

Please read [`CONTRIBUTING.md`](CONTRIBUTING.md) and make sure tests pass before sending a pull request.

## Linting

> Requires the [`SublimeLinter`](https://github.com/SublimeLinter/SublimeLinter) package, uses the included binaries [`lslint`](https://github.com/Makopo/lslint) if not found in `PATH`.

Linting of LSL files using the [Firestorm preprocessor](http://wiki.phoenixviewer.com/fs_preprocessor) has been deprecated in `v5.0.0` (see [CHANGELOG](https://github.com/buildersbrewery/sublime-lsl/blob/master/CHANGELOG.md) for details).

<p align="center">
<img src="https://raw.githubusercontent.com/buildersbrewery/sublime-lsl/master/docs/img/sublimelinter_with_lslint.gif"
     alt="SublimeLinter with lslint"
     width="1070px"
     height="634px">
</p>

## Indent styles

> Require `Sublime Text Build 3154` or later

<p align="center">
<img src="https://raw.githubusercontent.com/buildersbrewery/sublime-lsl/master/docs/img/indent_styles.gif"
     alt="LSL Indent Styles"
     width="495px"
     height="395px">
</p>

You can change the indent style of all LSL completions and snippets to:

* `Allman`
* `GNU`
* `Horstmann`
* `K & R`
* `Lisp`
* `Pico`
* `Ratliff`
* or `Whitesmiths`

by:

* selecting `Preferences > Package Settings > =BB= LSL > Settings > Choose indent style` from the main menu
* or selecting `Preferences: LSL: Settings - Indent Style` in the command palette

## Settings

> [`Sublime Text 3` Settings documentation](https://www.sublimetext.com/docs/3/settings.html)

Open `Preferences > Settings` from the main menu.

These `mdpopups.*` settings are needed to get LSL syntax highlighting in [tooltips](#tooltips):

```json
//  "Packages/User/Preferences.sublime-settings"

{
    "mdpopups.sublime_user_lang_map":
    {
        "lsl":
        [
            [ "lsl" ],
            [ "=BB= LSL/.sublime/syntaxes/LSL" ]
        ]
    },
    "mdpopups.use_sublime_highlighter": true
}
```

## Tooltips

> Require `Sublime Text Build 3124` or later

<p align="center">
<img src="https://raw.githubusercontent.com/buildersbrewery/sublime-lsl/master/docs/img/tooltips.gif"
     alt="LSL Tooltips"
     width="689px"
     height="575px">
</p>

* Tooltips are displayed using the [Package Control dependency](https://packagecontrol.io/docs/dependencies) [`mdpopups`](https://github.com/facelessuser/sublime-markdown-popups).
* Tooltips support LSL syntax highlighting in snippets and usage examples.

To get LSL syntax highlighting in tooltips, refer to the [settings](#settings) section.

## Disclaimer

> Second Life® and the Linden Scripting Language are trademarks of Linden Research, Inc.
>
> The Builder's Brewery is neither affiliated with nor sponsored by Linden Research.
