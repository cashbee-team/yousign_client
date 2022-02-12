# YousignClient::ProcedureDuplicateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Boolean** | Defines if the new procedure should be started after the duplication | [optional][default to false] |
| **template** | **Boolean** | Override the parent value for this property and defines if the new procedure should be a template or not | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ProcedureDuplicateInput.new(
  start: true,
  template: false
)
```

