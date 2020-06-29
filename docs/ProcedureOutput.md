# YousignClient::ProcedureOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**name** | **String** | Name of procedure | [optional] 
**description** | **String** | Description of procedure | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**expires_at** | **DateTime** | Expiration date. The procedure will be out of usage after this date. | [optional] 
**status** | **String** | Status of the procedure | [optional] 
**creator** | **String** | Id of creator of the object | [optional] 
**creator_first_name** | **String** | The creator&#39;s first name | [optional] 
**creator_last_name** | **String** | The creator&#39;s last name | [optional] 
**workspace** | **String** | Id of workspace creator of the object | [optional] 
**template** | **BOOLEAN** | Defines if the procedure is a template (if true). A template could be used by a procedure to get all properties of the template. Check parent parameter for more information. | [optional] 
**ordered** | **BOOLEAN** | Defines an order for the procedure process. If true, position of each member will be used to define the validation workflow. | [optional] 
**parent** | **String** | Id of a procedure template used to get all properties of the template in the new procedure. If you set other properties, they will be replaced. If you don’t set other properties, all properties will be cloned. | [optional] 
**metadata** | [**ProcedureOutputMetadata**](ProcedureOutputMetadata.md) |  | [optional] 
**config** | [**ProcedureConfig**](ProcedureConfig.md) |  | [optional] 
**members** | [**Array&lt;MemberOutput&gt;**](MemberOutput.md) |  | [optional] 
**files** | [**Array&lt;FileOutput&gt;**](FileOutput.md) | List of files used in the procedure. | [optional] 
**related_files_enable** | **BOOLEAN** | Defines if related files are available. | [optional] 
**archive** | **BOOLEAN** | Defines if the files of the procedure must be archived (Workspace should be allowed) | [optional] [default to false]


