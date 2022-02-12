# YousignClient::FileOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the object | [optional] |
| **name** | **String** | Name of the file | [optional] |
| **type** | **String** | Type of file | [optional] |
| **content_type** | **String** | Type of content | [optional] |
| **description** | **String** | Description of the file | [optional] |
| **created_at** | **String** | Created date of the object | [optional] |
| **updated_at** | **String** | Updated date of the object | [optional] |
| **metadata** | [**FileInputMetadata**](FileInputMetadata.md) |  | [optional] |
| **workspace** | **String** | Id of workspace | [optional] |
| **creator** | **String** | Id of creator | [optional] |
| **sha256** | **String** | File hash | [optional] |
| **position** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::FileOutput.new(
  id: /files/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  name: null,
  type: null,
  content_type: application/pdf,
  description: null,
  created_at: null,
  updated_at: null,
  metadata: null,
  workspace: /workspaces/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  creator: /users/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  sha256: 23203f9264161714cdb8d2f474b9b641e6a735f8cea4098c40a3cab8743bd749,
  position: null
)
```

