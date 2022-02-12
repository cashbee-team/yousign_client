# YousignClient::SignatureUiLabelOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource&#39;s ID | [optional] |
| **name** | **String** | Name of the label. If the name is not used in the view, nothing will appear. | [optional] |
| **languages** | **Object** | Translation of the label per language | [optional] |
| **signature_ui** | **String** | Associated signature UI&#39;s ID | [optional] |
| **creator** | **String** | Creator&#39;s ID | [optional] |
| **created_at** | **Time** | Date of creation | [optional] |
| **updated_at** | **Time** | Date of last update | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::SignatureUiLabelOutput.new(
  id: null,
  name: null,
  languages: &quot;{\&quot;en\&quot;: \&quot;Label en\&quot;, \&quot;fr\&quot;: \&quot;Label fr\&quot;}&quot;,
  signature_ui: null,
  creator: null,
  created_at: null,
  updated_at: null
)
```

