# YousignClient::WorkspaceConfigEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **procedure_started** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **procedure_finished** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **procedure_refused** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **procedure_expired** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **procedure_deleted** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **member_started** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **member_finished** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |
| **comment_created** | [**Array&lt;ConfigEmailTemplate&gt;**](ConfigEmailTemplate.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::WorkspaceConfigEmail.new(
  procedure_started: null,
  procedure_finished: null,
  procedure_refused: null,
  procedure_expired: null,
  procedure_deleted: null,
  member_started: null,
  member_finished: null,
  comment_created: null
)
```

