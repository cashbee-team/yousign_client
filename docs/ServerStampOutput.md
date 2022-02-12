# YousignClient::ServerStampOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource server stamp uri |  |
| **file** | **String** | Resource file uri |  |
| **certificate** | **String** | Resource certificate uri (please contact support for more informations) |  |
| **config** | [**Array&lt;ServerStampConfig&gt;**](ServerStampConfig.md) |  | [optional] |
| **file_objects** | [**Array&lt;FileObjectOutputWithoutFileReference&gt;**](FileObjectOutputWithoutFileReference.md) |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **finished_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **workspace** | **String** | Resource workspace uri |  |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ServerStampOutput.new(
  id: /server_stamps/0c73955f-e4c8-4975-9a8c-ad0bc3dde689,
  file: /files/1eb8923e-0558-4f0e-823e-294b422a28e2,
  certificate: /certificates/5025dee5-8c16-444e-8147-a008d87156b2,
  config: null,
  file_objects: null,
  created_at: null,
  updated_at: null,
  finished_at: null,
  status: null,
  workspace: /workspaces/3df0b580-adfe-43a9-859c-d724bcfc240b
)
```

