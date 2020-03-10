# CONTRIBUTING

## Commit rules

* Commit messages should follow the `conventional-changelog-angular` commit message convention.
  * see <https://github.com/angular/angular/blob/master/CONTRIBUTING.md#commit>
  * see <https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog-angular>

## Mark binary files in git

The following files:

```text
lib/lslint/linux/lslint
lib/lslint/osx/lslint
lib/lslint/windows/lslint.exe
lib/lslint/windows32/lslint.exe
lib/lslint/windows64/lslint.exe
```

should be added with git via:

```bash
git add --chmod=+x ...          # where ... is the full local file path relative to root
```

or:

```bash
git update-index --chmod=+x ... # where ... is the full local file path relative to root
```

## Changes to the syntax

```text
.sublime/
    syntaxes/
        LSL.sublime-syntax      # syntax
        tests/
            ...                 # syntax test files
```

Use:

* `UnitTesting`:
  * <https://packagecontrol.io/packages/UnitTesting>
  * <https://github.com/SublimeText/UnitTesting>

Steps:

* open the syntax file
* `Tools > Build with ...`
  * make sure you run all `Syntax Tests` options

## Changes to the color scheme

```text
.sublime/
    color-schemes/
        LSL.hidden-color-scheme   # color scheme
        tests/
            ...                   # color scheme test files
```

Use:

* `UnitTesting`:
  * <https://packagecontrol.io/packages/UnitTesting>
  * <https://github.com/SublimeText/UnitTesting>
