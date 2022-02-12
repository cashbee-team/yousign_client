# YousignClient::ModeSmsConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | Content of your custom sms message. Should contains the substring &#x60;{{code}}&#x60; |  |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ModeSmsConfiguration.new(
  content: Hello, your code for signature is {{code}}.
)
```

