# YousignClient::FileObjectOutputWithoutFileReference

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**page** | **Integer** | Page of the visible signature. This property is ignored if fieldName is set. If you want a visible signature, you must set page, position and fieldName. | [optional] 
**position** | **String** | Coordinates of the signature image to set. Format is : “llx,lly,urx,ury”. llx&#x3D;left lower x coordinate, lly&#x3D;left lower y coordinate, urx&#x3D;upper right x coordinate, ury &#x3D; upper right y coordinate. To get easily coordinates, you could use this tool : http://placeit.yousign.fr | [optional] 
**field_name** | **String** | Name of the signature field existing in the document | [optional] 
**mention** | **String** | Text associated above the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] 
**mention2__internal** | **String** | Text associated below the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature. | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**executed_at** | **DateTime** | Date of signature or validation | [optional] 
**reason** | **String** | The reason they are signing the agreement | [optional] [default to &#39;Signed by Yousign&#39;]


