# YousignClient::ProcedureConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | [**ProcedureConfigEmail**](ProcedureConfigEmail.md) |  | [optional] 
**reminders** | [**Array&lt;ProcedureConfigReminder&gt;**](ProcedureConfigReminder.md) |  | [optional] 
**webhook** | [**ProcedureConfigWebhook**](ProcedureConfigWebhook.md) |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::ProcedureConfig.new(email: null,
                                 reminders: null,
                                 webhook: null)
```


