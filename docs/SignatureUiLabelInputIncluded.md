# YousignClient::SignatureUiLabelInputIncluded

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the label. If the name is not used in the view, nothing will appear. |  |
| **languages** | **Object** | Translation of the label per language | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::SignatureUiLabelInputIncluded.new(
  name: null,
  languages: &quot;{\&quot;en\&quot;: \&quot;Label en\&quot;, \&quot;fr\&quot;: \&quot;Label fr\&quot;}&quot;
)
```

