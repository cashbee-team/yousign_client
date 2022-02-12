# YousignClient::WorkspaceConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_modes** | **Array&lt;String&gt;** |  | [optional] |
| **procedure** | [**WorkspaceConfigProcedure**](WorkspaceConfigProcedure.md) |  | [optional] |
| **email** | [**WorkspaceConfigEmail**](WorkspaceConfigEmail.md) |  | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::WorkspaceConfig.new(
  authentication_modes: null,
  procedure: null,
  email: null
)
```

