# YousignClient::ServerStampsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**server_stamps_id_get**](ServerStampsApi.md#server_stamps_id_get) | **GET** /server_stamps/{id} | Find a Server Stamp by ID |
| [**server_stamps_post**](ServerStampsApi.md#server_stamps_post) | **POST** /server_stamps | Create a Server Stamp |


## server_stamps_id_get

> <ServerStampOutput> server_stamps_id_get(id)

Find a Server Stamp by ID

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

api_instance = YousignClient::ServerStampsApi.new
id = 'id_example' # String | 

begin
  # Find a Server Stamp by ID
  result = api_instance.server_stamps_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ServerStampsApi->server_stamps_id_get: #{e}"
end
```

#### Using the server_stamps_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerStampOutput>, Integer, Hash)> server_stamps_id_get_with_http_info(id)

```ruby
begin
  # Find a Server Stamp by ID
  data, status_code, headers = api_instance.server_stamps_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerStampOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ServerStampsApi->server_stamps_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## server_stamps_post

> <ServerStampOutput> server_stamps_post(body)

Create a Server Stamp

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

api_instance = YousignClient::ServerStampsApi.new
body = YousignClient::ServerStampInput.new({file: '/files/1eb8923e-0558-4f0e-823e-294b422a28e2', certificate: '/certificates/5025dee5-8c16-444e-8147-a008d87156b2', file_objects: [YousignClient::FileObjectInputWithoutFileReference.new]}) # ServerStampInput | 

begin
  # Create a Server Stamp
  result = api_instance.server_stamps_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ServerStampsApi->server_stamps_post: #{e}"
end
```

#### Using the server_stamps_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerStampOutput>, Integer, Hash)> server_stamps_post_with_http_info(body)

```ruby
begin
  # Create a Server Stamp
  data, status_code, headers = api_instance.server_stamps_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerStampOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ServerStampsApi->server_stamps_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ServerStampInput**](ServerStampInput.md) |  |  |

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

