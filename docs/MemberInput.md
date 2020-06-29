# YousignClient::MemberInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **String** | ID of the user in your companies. Informations about the member will be duplicate (first name, last name, email and phone number).  Required if none of fields above are specified. | [optional] 
**type** | **String** | Type of a member. \&quot;signer\&quot; to sign documents (legally) and \&quot;validator\&quot; to validate documents. | [optional] [default to &#39;signer&#39;]
**firstname** | **String** | Firstname of an external member. Required if user field is blank | [optional] 
**lastname** | **String** | Lastname of an external member. Required if user field is blank | [optional] 
**email** | **String** | Email of an external member. Required if user field is blank | [optional] 
**phone** | **String** | Phone of an external member. Required if user field is blank | [optional] 
**position** | **Integer** | If the procedure have the boolean \&quot;ordered\&quot; at true, you can define position of the order to invite your members to sign. Only the first member will be invited to sign.  When the first member have signed, the second will be invited, etc... | [optional] 
**file_objects** | [**Array&lt;FileObjectInput&gt;**](FileObjectInput.md) |  | [optional] 
**procedure** | **String** | Procedure id reference | [optional] 
**operation_level** | **String** |  | [optional] 
**operation_custom_modes** | **Array&lt;String&gt;** |  | [optional] 
**mode_sms_configuration** | [**ModeSmsConfiguration**](ModeSmsConfiguration.md) |  | [optional] 


