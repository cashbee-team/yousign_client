# YousignClient::ConsentProcessValueInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consent_process** | **String** | Consent process attached to concent process value |  |
| **member** | **String** | Member attached to concent process value |  |
| **value** | **String** | Value of concent process value | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ConsentProcessValueInput.new(
  consent_process: /consent_processes/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  member: /members/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  value: My value
)
```

