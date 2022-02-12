# YousignClient::MemberOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the object | [optional] |
| **user** | **String** | Internal user associated with the member. In this case, informations about the member will be informations of the user (first name, last name, phone number and email). | [optional] |
| **type** | **String** | Type of a member. \&quot;signer\&quot; to sign documents (legally) and \&quot;validator\&quot; to validate documents. | [optional][default to &#39;signer&#39;] |
| **firstname** | **String** | Firstname of an external member. | [optional] |
| **lastname** | **String** | Lastname of an external member. | [optional] |
| **email** | **String** | Email of an external member. | [optional] |
| **phone** | **String** | Phone of an external member. | [optional] |
| **position** | **Integer** | Position of the member if ordered is set to true. Example with two members, the first one could have a position set to 1, the second one set to 2. In this case, when the procedure starts, only the first member will be notified and could validate the documents. The second one could not validate the documents, he will be notified when the first signer is notified. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **file_objects** | [**Array&lt;FileObjectOutput&gt;**](FileObjectOutput.md) |  | [optional] |
| **comment** | **String** | Comment of a member when he refuses a signature | [optional] |
| **procedure** | **String** | Procedure id reference | [optional] |
| **operation_level** | **String** |  | [optional] |
| **operation_custom_modes** | **Array&lt;String&gt;** |  | [optional] |
| **mode_sms_configuration** | [**ModeSmsConfiguration**](ModeSmsConfiguration.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::MemberOutput.new(
  id: /members/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  user: /users/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  type: null,
  firstname: null,
  lastname: null,
  email: null,
  phone: null,
  position: null,
  created_at: null,
  updated_at: null,
  status: null,
  file_objects: null,
  comment: null,
  procedure: null,
  operation_level: null,
  operation_custom_modes: null,
  mode_sms_configuration: null
)
```

