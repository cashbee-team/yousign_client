# YousignClient::OperationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of operation | 
**mode** | **String** | Mode of authentication | 
**all_members** | **Boolean** |  | [optional] [default to false]
**members** | **Array&lt;String&gt;** |  | [optional] 
**status** | **String** | Status of operation | [optional] 
**comment** | **String** |  | [optional] 
**metadata** | [**OperationOutputMetadata**](OperationOutputMetadata.md) |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::OperationInput.new(type: null,
                                 mode: null,
                                 all_members: null,
                                 members: /members/548922ec-b94f-476a-93e9-d7f73c35a92c,
                                 status: null,
                                 comment: null,
                                 metadata: null)
```


