# YousignClient::UserInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firstname** | **String** | User&#39;s firstname |  |
| **lastname** | **String** | User&#39;s lastname |  |
| **email** | **String** | User&#39;s email address (This field is allowed only during creation) |  |
| **title** | **String** | User&#39;s job title | [optional] |
| **phone** | **String** | User&#39;s phone number (mobiles and landline telephones are supported). Phone number must be formatted to E164 (https://en.wikipedia.org/wiki/E.164) which includes the symbol &#39;+&#39; and the country code. For example : +33612131315. All countries are supported. | [optional] |
| **permission** | **Array&lt;String&gt;** |  | [optional] |
| **group** | **String** | User&#39;s UserGroup | [optional] |
| **config** | **Object** |  | [optional] |
| **default_sign_image** | **String** | ID of file image | [optional] |
| **notifications** | [**UserInputNotifications**](UserInputNotifications.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::UserInput.new(
  firstname: null,
  lastname: null,
  email: null,
  title: null,
  phone: null,
  permission: null,
  group: /user_groups/4f3ef3ac-d234-4abf-8dc9-4c7f37d34402,
  config: null,
  default_sign_image: /files/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  notifications: null
)
```

