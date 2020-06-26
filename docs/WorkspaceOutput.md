# YousignClient::WorkspaceOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Object&#39;s ID | [optional] 
**name** | **String** | Workspace name | [optional] 
**config** | [**WorkspaceConfig**](WorkspaceConfig.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**email_procedure_from_name** | **String** |  | [optional] 
**contact_field_visibility** | **Array&lt;String&gt;** |  | [optional] 
**slug** | **String** |  | [optional] 
**has_custom_logo** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::WorkspaceOutput.new(id: /workspaces/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 name: null,
                                 config: null,
                                 created_at: null,
                                 updated_at: null,
                                 email_procedure_from_name: null,
                                 contact_field_visibility: null,
                                 slug: null,
                                 has_custom_logo: null)
```


