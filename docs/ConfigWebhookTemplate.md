# YousignClient::ConfigWebhookTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Url to call |  |
| **method** | **String** | Http request type | [optional][default to &#39;GET&#39;] |
| **headers** | **Object** | Http request headers | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ConfigWebhookTemplate.new(
  url: null,
  method: null,
  headers: {&quot;X-Yousign-Custom-Header&quot;:&quot;Test value&quot;}
)
```

