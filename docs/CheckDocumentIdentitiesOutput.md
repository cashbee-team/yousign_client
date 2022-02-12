# YousignClient::CheckDocumentIdentitiesOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the object | [optional] |
| **created_at** | **Time** | Created date of the object | [optional] |
| **updated_at** | **Time** | Updated date of the object | [optional] |
| **first_names** | **Array&lt;String&gt;** | List of firstnames to check on document | [optional] |
| **birth_name** | **String** | Birth name to check on document | [optional] |
| **birth_date** | **Date** | Birth date to check on document | [optional] |
| **workspace** | **String** | workspace creator of the object | [optional] |
| **creator** | **String** | Creator of the object | [optional] |
| **document_type** | **String** | Type of document | [optional] |
| **extracted_first_names** | **Array&lt;String&gt;** | Extracted firstnames on the document | [optional] |
| **extracted_birth_name** | **String** | Extracted birth name on the document | [optional] |
| **extracted_birth_date** | **Date** | Extracted birth date on the document | [optional] |
| **extracted_gender** | **String** | Extracted gender on the document | [optional] |
| **extracted_issuance_date** | **Date** | Extracted issuance date on the document | [optional] |
| **extracted_expiration_date** | **Date** | Extracted expiration date on the document | [optional] |
| **extracted_mrz** | **Array&lt;String&gt;** | Extracted MRZ on the document | [optional] |
| **first_name_valid** | **Boolean** | Defines if one firstname sent in the input is valid | [optional] |
| **birth_name_valid** | **Boolean** | Defines if birth name sent in the input is valid | [optional] |
| **mrz_valid** | **Boolean** | Defines if MRZ sent in the input is valid | [optional] |
| **expired** | **Boolean** | Defines if the document is expired | [optional] |
| **valid** | **Boolean** | Defines if the document is valid | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::CheckDocumentIdentitiesOutput.new(
  id: /check-document/identities/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  created_at: null,
  updated_at: null,
  first_names: null,
  birth_name: null,
  birth_date: null,
  workspace: /workspaces/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  creator: /users/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
  document_type: null,
  extracted_first_names: null,
  extracted_birth_name: null,
  extracted_birth_date: null,
  extracted_gender: null,
  extracted_issuance_date: null,
  extracted_expiration_date: null,
  extracted_mrz: null,
  first_name_valid: null,
  birth_name_valid: null,
  mrz_valid: null,
  expired: null,
  valid: null
)
```

