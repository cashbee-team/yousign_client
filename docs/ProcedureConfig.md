# YousignClient::ProcedureConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | [**ProcedureConfigEmail**](ProcedureConfigEmail.md) |  | [optional] |
| **reminders** | [**Array&lt;ProcedureConfigReminder&gt;**](ProcedureConfigReminder.md) |  | [optional] |
| **webhook** | [**ProcedureConfigWebhook**](ProcedureConfigWebhook.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ProcedureConfig.new(
  email: null,
  reminders: null,
  webhook: null
)
```

