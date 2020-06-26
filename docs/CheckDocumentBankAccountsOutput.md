# YousignClient::CheckDocumentBankAccountsOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**first_name** | **String** | Firstname to check on document | [optional] 
**birth_name** | **String** | Birth name to check on document | [optional] 
**last_name** | **String** | Lastname to check on document | [optional] 
**iban** | **String** | Iban to check on document | [optional] 
**company_name** | **String** | Company name to check on document | [optional] 
**document_type** | **String** | Type of document | [optional] 
**workspace** | **String** | Workspace creator of the object | [optional] 
**creator** | **String** | Creator of the object | [optional] 
**extracted_iban** | **String** | Extracted iban on the document | [optional] 
**first_name_valid** | **Boolean** | Defines if one firstname sent in the input is valid | [optional] 
**birth_name_valid** | **Boolean** | Defines if birth name sent in the input is valid | [optional] 
**last_name_valid** | **Boolean** | Defines if lastname sent in the input is valid | [optional] 
**company_name_valid** | **Boolean** | Defines if company name sent in the input is valid | [optional] 
**iban_valid** | **Boolean** | Defines if iban sent in the input is valid | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::CheckDocumentBankAccountsOutput.new(id: /check-document/bank_accounts/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 created_at: null,
                                 updated_at: null,
                                 first_name: null,
                                 birth_name: null,
                                 last_name: null,
                                 iban: null,
                                 company_name: null,
                                 document_type: null,
                                 workspace: /workspaces/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 creator: /users/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 extracted_iban: null,
                                 first_name_valid: null,
                                 birth_name_valid: null,
                                 last_name_valid: null,
                                 company_name_valid: null,
                                 iban_valid: null)
```


