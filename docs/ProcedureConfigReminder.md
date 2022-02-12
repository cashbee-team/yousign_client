# YousignClient::ProcedureConfigReminder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **Integer** | Number of days between each reminder. The date of the creation of the procedure is used to define the date of the reminder. For example, if you set 2 and the procedure is created at 2017-01-01T15:03:01, the first reminder will be sent at 2017-01-03T15:03:01. | [default to 1] |
| **limit** | **Integer** | Limit of reminders sent. | [optional][default to 5] |
| **config** | [**ProcedureConfigReminderConfig**](ProcedureConfigReminderConfig.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ProcedureConfigReminder.new(
  interval: null,
  limit: null,
  config: null
)
```

