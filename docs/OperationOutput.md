# YousignClient::OperationOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of operation | [optional] 
**created_at** | **Date** | Date of creation | [optional] 
**updated_at** | **Date** | Last date of update | [optional] 
**authentication** | [**AuthenticationInweboOutput**](AuthenticationInweboOutput.md) |  | [optional] 
**mode** | **String** | Mode of authentication | [optional] 
**status** | **String** | Status of operation | [optional] 
**type** | **String** | Type of operation | [optional] 
**metadata** | [**OperationOutputMetadata**](OperationOutputMetadata.md) |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::OperationOutput.new(id: null,
                                 created_at: null,
                                 updated_at: null,
                                 authentication: null,
                                 mode: null,
                                 status: null,
                                 type: null,
                                 metadata: null)
```


