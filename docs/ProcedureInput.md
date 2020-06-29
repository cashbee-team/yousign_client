# YousignClient::ProcedureInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of procedure | [optional] 
**description** | **String** | Description of procedure | [optional] 
**expires_at** | **Date** | Expiration date. The procedure will be out of usage after this date. | [optional] 
**template** | **BOOLEAN** | Defines if the procedure is a template (if true). A template could be used by a procedure to get all properties of the template. Check parent parameter for more information. | [optional] 
**ordered** | **BOOLEAN** | Defines an order for the procedure process. If true, position of each member will be used to define the validation workflow. | [optional] 
**metadata** | [**ProcedureInputMetadata**](ProcedureInputMetadata.md) |  | [optional] 
**config** | [**ProcedureConfig**](ProcedureConfig.md) |  | [optional] 
**members** | [**Array&lt;MemberInput&gt;**](MemberInput.md) | List of members, REQUIRED if start field is true. | [optional] 
**start** | **BOOLEAN** | Defines if the procedure has been started. If false, the procedure status will be draft. | [optional] [default to true]
**related_files_enable** | **BOOLEAN** | Defines if related files are available. Used only for organization that have this option. | [optional] 
**archive** | **BOOLEAN** | Defines if the files of the procedure must be archived (Organization should be allowed) | [optional] [default to false]


