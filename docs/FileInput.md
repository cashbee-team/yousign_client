# YousignClient::FileInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the file | [optional] 
**type** | **String** | Type of the file | [optional] 
**password** | **String** | Password for protected PDF file | [optional] 
**description** | **String** | Description of the file | [optional] 
**metadata** | [**FileInputMetadata**](FileInputMetadata.md) |  | [optional] 
**content** | **String** | Content in base 64 of the file | [optional] 
**procedure** | **String** | Id of the procedure | [optional] 
**position** | **Integer** |  | [optional] [default to 0]

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::FileInput.new(name: null,
                                 type: null,
                                 password: null,
                                 description: null,
                                 metadata: null,
                                 content: null,
                                 procedure: /procedures/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 position: null)
```


