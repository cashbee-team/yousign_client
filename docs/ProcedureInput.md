# YousignClient::ProcedureInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of procedure | [optional] |
| **description** | **String** | Description of procedure | [optional] |
| **expires_at** | **Date** | Expiration date. The procedure will be out of usage after this date. | [optional] |
| **template** | **Boolean** | Defines if the procedure is a template (if true). A template could be used by a procedure to get all properties of the template. Check parent parameter for more information. | [optional] |
| **ordered** | **Boolean** | Defines an order for the procedure process. If true, position of each member will be used to define the validation workflow. | [optional] |
| **metadata** | [**ProcedureInputMetadata**](ProcedureInputMetadata.md) |  | [optional] |
| **config** | [**ProcedureConfig**](ProcedureConfig.md) |  | [optional] |
| **members** | [**Array&lt;MemberInput&gt;**](MemberInput.md) | List of members, REQUIRED if start field is true. | [optional] |
| **start** | **Boolean** | Defines if the procedure has been started. If false, the procedure status will be draft. | [optional][default to true] |
| **related_files_enable** | **Boolean** | Defines if related files are available. Used only for organization that have this option. | [optional] |
| **archive** | **Boolean** | Defines if the files of the procedure must be archived (Organization should be allowed) | [optional][default to false] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::ProcedureInput.new(
  name: null,
  description: null,
  expires_at: null,
  template: null,
  ordered: null,
  metadata: null,
  config: null,
  members: null,
  start: null,
  related_files_enable: null,
  archive: null
)
```

