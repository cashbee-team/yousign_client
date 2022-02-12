# YousignClient::OperationsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**operations_id_get**](OperationsApi.md#operations_id_get) | **GET** /operations/{id} | Find an Operation by ID |
| [**operations_post**](OperationsApi.md#operations_post) | **POST** /operations | Create a new Operation |


## operations_id_get

> <OperationOutput> operations_id_get(id)

Find an Operation by ID

### Examples

```ruby
require 'time'
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = YousignClient::OperationsApi.new
id = 'id_example' # String | 

begin
  # Find an Operation by ID
  result = api_instance.operations_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling OperationsApi->operations_id_get: #{e}"
end
```

#### Using the operations_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationOutput>, Integer, Hash)> operations_id_get_with_http_info(id)

```ruby
begin
  # Find an Operation by ID
  data, status_code, headers = api_instance.operations_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling OperationsApi->operations_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## operations_post

> <OperationOutput> operations_post(body)

Create a new Operation

### Examples

```ruby
require 'time'
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = YousignClient::OperationsApi.new
body = YousignClient::OperationInput.new({type: 'accept', mode: 'sms'}) # OperationInput | 

begin
  # Create a new Operation
  result = api_instance.operations_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling OperationsApi->operations_post: #{e}"
end
```

#### Using the operations_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationOutput>, Integer, Hash)> operations_post_with_http_info(body)

```ruby
begin
  # Create a new Operation
  data, status_code, headers = api_instance.operations_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling OperationsApi->operations_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**OperationInput**](OperationInput.md) |  |  |

### Return type

[**OperationOutput**](OperationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

