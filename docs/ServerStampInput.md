# YousignClient::ServerStampInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **String** | Resource file uri | 
**certificate** | **String** | Resource certificate uri (please contact support for more informations) | 
**config** | [**Array&lt;ServerStampConfig&gt;**](ServerStampConfig.md) |  | [optional] 
**file_objects** | [**Array&lt;FileObjectInputWithoutFileReference&gt;**](FileObjectInputWithoutFileReference.md) |  | 
**sign_image** | **String** | Image signature in base 64 | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::ServerStampInput.new(file: /files/1eb8923e-0558-4f0e-823e-294b422a28e2,
                                 certificate: /certificates/5025dee5-8c16-444e-8147-a008d87156b2,
                                 config: null,
                                 file_objects: null,
                                 sign_image: R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7...)
```


