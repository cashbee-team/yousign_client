# YousignClient::FileObjectInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | File id reference |  |
| **page** | **Integer** | Page of the visible signature. This property is ignored if fieldName is set.  If you want a visible signature, you must set page, position and fieldName. | [optional] |
| **position** | **String** | Coordinates of the signature image to set. Format is : \&quot;llx,lly,urx,ury\&quot;. llx&#x3D;left lower x coordinate, lly&#x3D;left lower y coordinate, urx&#x3D;upper right x coordinate, ury &#x3D; upper right y coordinate. To get easily coordinates, you could use this tool : http://placeit.yousign.fr | [optional] |
| **field_name** | **String** | [type&#x3D;signature] Name of the signature field existing in the document, it will be not used on the signature image. | [optional] |
| **mention** | **String** | [type&#x3D;signature] Text associated above the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] |
| **mention2** | **String** | [type&#x3D;signature] Text associated below the signature image. (internal usage only, should not be used).  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] |
| **member** | **String** | Member id reference | [optional] |
| **reason** | **String** | [type&#x3D;signature] The reason they are signing the agreement | [optional][default to &#39;Signed by Yousign&#39;] |
| **type** | **String** | The type of the file object | [optional][default to &#39;signature&#39;] |
| **content_required** | **Boolean** | [type&#x3D;text] Indicate if the member must fill or not the field | [optional][default to false] |
| **content** | **String** | [type&#x3D;text] The content of the field. Could be used for placeholder | [optional] |
| **font_family** | **String** | [type&#x3D;text] The font familly used to render the TextField. Currently only the default value will be used. | [optional][default to &#39;raleway&#39;] |
| **font_size** | **Integer** | [type&#x3D;text] The font size used to render the field. Currently only the default value will be used. | [optional][default to 12] |
| **font_color** | **String** | [type&#x3D;text] The font color used to render the field. | [optional] |

## Example

```ruby
require 'yousign_client'

instance = YousignClient::FileObjectInput.new(
  file: null,
  page: null,
  position: 400,700,500,800,
  field_name: null,
  mention: null,
  mention2: null,
  member: null,
  reason: null,
  type: null,
  content_required: null,
  content: null,
  font_family: null,
  font_size: null,
  font_color: 0,0,0
)
```

