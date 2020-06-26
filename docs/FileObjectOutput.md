# YousignClient::FileObjectOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**file** | [**FileOutput**](FileOutput.md) |  | 
**page** | **Integer** | Page of the visible signature. This property is ignored if fieldName is set. If you want a visible signature, you must set page, position and fieldName. | [optional] 
**position** | **String** | Coordinates of the signature image to set. Format is : “llx,lly,urx,ury”. llx&#x3D;left lower x coordinate, lly&#x3D;left lower y coordinate, urx&#x3D;upper right x coordinate, ury &#x3D; upper right y coordinate. To get easily coordinates, you could use this tool : http://placeit.yousign.fr | [optional] 
**field_name** | **String** | [type&#x3D;signature] Name of the signature field existing in the document | [optional] 
**mention** | **String** | [type&#x3D;signature] Text associated above the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] 
**mention2__internal** | **String** | [type&#x3D;signature] Text associated below the signature image. (internal usage only, should not be used).  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**executed_at** | **DateTime** | Date of signature or validation | [optional] 
**reason** | **String** | [type&#x3D;signature] The reason they are signing the agreement | [optional] [default to &#39;Signed by Firstname Lastname&#39;]
**type** | **String** | The type of the file object | [optional] [default to &#39;signature&#39;]
**content_required** | **Boolean** | [type&#x3D;text] Indicate if the member must fill or not the field | [optional] [default to false]
**content** | **String** | [type&#x3D;text] The content of the field. Could be used for placeholder | [optional] 
**font_family** | **String** | [type&#x3D;text] The font familly used to render the TextField. Currently only the default value will be used. | [optional] [default to &#39;raleway&#39;]
**font_size** | **Integer** | [type&#x3D;text] The font size used to render the field. Currently only the default value will be used. | [optional] [default to 12]
**font_color** | **String** | [type&#x3D;text] The font color used to render the field. | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::FileObjectOutput.new(id: /file_objects/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 file: null,
                                 page: null,
                                 position: 400,700,500,800,
                                 field_name: null,
                                 mention: Read and approuved,
                                 mention2__internal: null,
                                 created_at: null,
                                 updated_at: null,
                                 executed_at: null,
                                 reason: null,
                                 type: null,
                                 content_required: null,
                                 content: null,
                                 font_family: null,
                                 font_size: null,
                                 font_color: 0,0,0)
```


