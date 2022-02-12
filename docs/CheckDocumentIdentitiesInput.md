# YousignClient::CheckDocumentIdentitiesInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | Content in base 64 of the document to check |  |
| **first_names** | **Array&lt;String&gt;** | List of firstnames to check on document | [optional] |
| **birth_name** | **String** | Birth name to check on document | [optional] |
| **birth_date** | **Date** | Birth date to check on document | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::CheckDocumentIdentitiesInput.new(
  file: null,
  first_names: null,
  birth_name: null,
  birth_date: null
)
```

