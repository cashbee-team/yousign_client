# YousignClient::SignatureUiLabelInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the label. If the name is not used in the view, nothing will appear. |  |
| **languages** | **Object** | Translation of the label per language | [optional] |
| **signature_ui** | **String** | Associated Signature UI&#39;s ID | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::SignatureUiLabelInput.new(
  name: null,
  languages: &quot;{\&quot;en\&quot;: \&quot;Label en\&quot;, \&quot;fr\&quot;: \&quot;Label fr\&quot;}&quot;,
  signature_ui: null
)
```

