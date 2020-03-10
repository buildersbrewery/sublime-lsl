# Format

```yaml
name:
  delay: float (value) or string ('variable' for llSleep)
  description: string
  function-id: integer (zero-based)
  params: (array of ...)
    - name: string
      description: string
      type: string
      default: value
    - ...
  related:
    constants: array (of strings with names)
    events: array (of strings with names)
    functions: array (of strings with names)
    slwiki: array (of strings with URL substrings)
    slwiki_categories: array (of strings with URL substrings)
    wikipedia: array (of strings with URL substrings)
  required_permissions: array (of strings with names)
  scope: string
  snippets: array (of strings with lsl code examples)
  status: string
  type: string
  usage: array (of strings with lsl code examples)
  value: value
  value_description: string
  version: string
```

## `LSL.yaml` Contents

> https://yaml.org/spec/1.2/spec.html

Contents:

* `constant.language.float`
* `constant.language.integer`
* `constant.language.integer.bit_field`
* `constant.language.integer.bit_field.bit_mask`
* `constant.language.integer.boolean`
* `constant.language.rotation`
* `constant.language.string`
* `constant.language.vector`
* `entity.name.class.state`
* `invalid.deprecated`
* `invalid.illegal`
* `invalid.illegal.unimplemented`
* `keyword.control.conditional`
* `keyword.control.flow`
* `keyword.control.loop`
* `reserved.godmode`
* `reserved.log`
* `storage.type`
* `support.function.builtin`
* `support.function.event`
