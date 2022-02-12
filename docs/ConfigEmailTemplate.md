# YousignClient::ConfigEmailTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Array&lt;String&gt;** | Reference or email of recipients |  |
| **subject** | **String** | Subject of the mail |  |
| **message** | **String** | Object of the mail |  |
| **from_name** | **String** | Modify the from name | [optional][default to &#39;Yousign&#39;] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ConfigEmailTemplate.new(
  to: null,
  subject: null,
  message: null,
  from_name: null
)
```

