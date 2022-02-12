# YousignClient::UserOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Object&#39;s ID | [optional] |
| **firstname** | **String** | User&#39;s firstname |  |
| **lastname** | **String** | User&#39;s lastname |  |
| **email** | **String** | User&#39;s email address |  |
| **title** | **String** | User&#39;s title | [optional] |
| **phone** | **String** | User&#39;s phone number (mobiles and landline telephones are supported). Phone number must be formatted to E164 (https://en.wikipedia.org/wiki/E.164) which includes the symbol &#39;+&#39; and the country code. For example : +33612131315. All countries are supported. | [optional] |
| **status** | **String** | User&#39;s status | [optional] |
| **organization** | **String** | ID of the organization the user belongs to | [optional] |
| **workspaces** | [**Array&lt;UserWorkspaceOutput&gt;**](UserWorkspaceOutput.md) | List of workspaces to which the user is connected and has access | [optional] |
| **permission** | **String** |  | [optional] |
| **group** | [**UserGroup**](UserGroup.md) |  | [optional] |
| **created_at** | **Time** | Created date of the object | [optional] |
| **updated_at** | **Time** | Updated date of the object | [optional] |
| **deleted** | **Boolean** | Defines if the User is deleted or not | [optional] |
| **deleted_at** | **Time** | Defines the date where the user has been deleted | [optional] |
| **config** | **Object** |  | [optional] |
| **inwebo_user_request** | **String** | Internal usage, should not be used | [optional] |
| **saml_name_id** | **String** | ID of SAML | [optional] |
| **default_sign_image** | **String** | ID of the default sign image. | [optional] |
| **notifications** | [**UserOutputNotifications**](UserOutputNotifications.md) |  | [optional] |
| **fast_sign** | **Boolean** | Defines if the fast signature is available for the user on the Yousign application | [optional] |
| **full_name** | **String** | User&#39;s full name | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::UserOutput.new(
  id: /users/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  firstname: null,
  lastname: null,
  email: null,
  title: null,
  phone: null,
  status: null,
  organization: /organizations/b7599d85-4076-4752-94fb-8fbe10147e60,
  workspaces: null,
  permission: null,
  group: null,
  created_at: null,
  updated_at: null,
  deleted: null,
  deleted_at: null,
  config: null,
  inwebo_user_request: /inwebo_user_requests/b7599d85-4076-4752-94fb-8fbe10147e60,
  saml_name_id: null,
  default_sign_image: /files/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  notifications: null,
  fast_sign: null,
  full_name: null
)
```

