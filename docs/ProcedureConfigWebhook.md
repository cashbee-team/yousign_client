# YousignClient::ProcedureConfigWebhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**procedure_started** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**procedure_finished** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**procedure_refused** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**procedure_expired** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**procedure_deleted** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**member_started** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**member_finished** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 
**comment_created** | [**Array&lt;ConfigWebhookTemplate&gt;**](ConfigWebhookTemplate.md) |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::ProcedureConfigWebhook.new(procedure_started: null,
                                 procedure_finished: null,
                                 procedure_refused: null,
                                 procedure_expired: null,
                                 procedure_deleted: null,
                                 member_started: null,
                                 member_finished: null,
                                 comment_created: null)
```


