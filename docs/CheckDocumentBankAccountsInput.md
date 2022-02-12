# YousignClient::CheckDocumentBankAccountsInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Content in base 64 of the document to check |  |
| **first_name** | **String** | Firstname to check on document | [optional] |
| **birth_name** | **String** | Birth name to check on document | [optional] |
| **last_name** | **String** | Lastname to check on document | [optional] |
| **company_name** | **String** | Company name to check on document | [optional] |
| **iban** | **String** | Iban text to check on document | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::CheckDocumentBankAccountsInput.new(
  file: null,
  first_name: null,
  birth_name: null,
  last_name: null,
  company_name: null,
  iban: null
)
```

