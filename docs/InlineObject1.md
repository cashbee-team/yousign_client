# YousignClient::InlineObject1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code sms received by user |  |
| **sign_image** | **String** | Image of signature (base 64) | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::InlineObject1.new(
  code: null,
  sign_image: null
)
```

