# YousignClient::OperationsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operations_id_get**](OperationsApi.md#operations_id_get) | **GET** /operations/{id} | Find an Operation by ID
[**operations_post**](OperationsApi.md#operations_post) | **POST** /operations | Create a new Operation


# **operations_id_get**
> OperationOutput operations_id_get(id)

Find an Operation by ID

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YousignClient::OperationsApi.new

id = 'id_example' # String | 


begin
  #Find an Operation by ID
  result = api_instance.operations_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OperationsApi->operations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **operations_post**
> OperationOutput operations_post(body)

Create a new Operation

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YousignClient::OperationsApi.new

body = YousignClient::OperationInput.new # OperationInput | 


begin
  #Create a new Operation
  result = api_instance.operations_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OperationsApi->operations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperationInput**](OperationInput.md)|  | 

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



