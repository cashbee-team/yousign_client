# YousignClient::OperationsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operations_id_get**](OperationsApi.md#operations_id_get) | **GET** /operations/{id} | Find an Operation by ID
[**operations_post**](OperationsApi.md#operations_post) | **POST** /operations | Create a new Operation



## operations_id_get

> OperationOutput operations_id_get(id, authorization)

Find an Operation by ID

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::OperationsApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Find an Operation by ID
  result = api_instance.operations_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OperationsApi->operations_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## operations_post

> OperationOutput operations_post(authorization, content_type, body)

Create a new Operation

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::OperationsApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::OperationInput.new # OperationInput | 

begin
  #Create a new Operation
  result = api_instance.operations_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OperationsApi->operations_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**OperationInput**](OperationInput.md)|  | 

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

