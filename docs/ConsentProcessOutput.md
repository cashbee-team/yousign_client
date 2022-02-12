# YousignClient::ConsentProcessOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of object | [optional] |
| **type** | **String** | Type of operation | [optional] |
| **description** | **String** | Description of consent Process | [optional] |
| **required** | **Boolean** | Consent process is required | [optional][default to true] |
| **position** | **Integer** | Position of consent process | [optional] |
| **expected_value** | **String** | Expected value for consent process value | [optional] |
| **members** | **Array&lt;String&gt;** | List of members attached to consent process |  |
| **file** | **String** | File attached to consent process | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ConsentProcessOutput.new(
  id: /consent_processes/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  type: null,
  description: null,
  required: null,
  position: 1,
  expected_value: My value,
  members: [/members/9d1ede2b-5687-4440-bdc8-dd0bc64f664f],
  file: /files/9d1ede2b-5687-4440-bdc8-dd0bc64f664f
)
```

