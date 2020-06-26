# YousignClient::CheckDocumentIdentitiesOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**first_names** | **Array&lt;String&gt;** | List of firstnames to check on document | [optional] 
**birth_name** | **String** | Birth name to check on document | [optional] 
**birth_date** | **Date** | Birth date to check on document | [optional] 
**workspace** | **String** | workspace creator of the object | [optional] 
**creator** | **String** | Creator of the object | [optional] 
**document_type** | **String** | Type of document | [optional] 
**extracted_first_names** | **Array&lt;String&gt;** | Extracted firstnames on the document | [optional] 
**extracted_birth_name** | **String** | Extracted birth name on the document | [optional] 
**extracted_birth_date** | **Date** | Extracted birth date on the document | [optional] 
**extracted_gender** | **String** | Extracted gender on the document | [optional] 
**extracted_issuance_date** | **Date** | Extracted issuance date on the document | [optional] 
**extracted_expiration_date** | **Date** | Extracted expiration date on the document | [optional] 
**extracted_mrz** | **Array&lt;String&gt;** | Extracted MRZ on the document | [optional] 
**first_name_valid** | **BOOLEAN** | Defines if one firstname sent in the input is valid | [optional] 
**birth_name_valid** | **BOOLEAN** | Defines if birth name sent in the input is valid | [optional] 
**mrz_valid** | **BOOLEAN** | Defines if MRZ sent in the input is valid | [optional] 
**expired** | **BOOLEAN** | Defines if the document is expired | [optional] 
**valid** | **BOOLEAN** | Defines if the document is valid | [optional] 


