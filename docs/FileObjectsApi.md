# YousignClient::FileObjectsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_objects_id_delete**](FileObjectsApi.md#file_objects_id_delete) | **DELETE** /file_objects/{id} | Delete a File Object |
| [**file_objects_id_get**](FileObjectsApi.md#file_objects_id_get) | **GET** /file_objects/{id} | Find a File Object by ID |
| [**file_objects_id_put**](FileObjectsApi.md#file_objects_id_put) | **PUT** /file_objects/{id} | Update a File Object |
| [**file_objects_post**](FileObjectsApi.md#file_objects_post) | **POST** /file_objects | Create a new File Object |


## file_objects_id_delete

> file_objects_id_delete(id)

Delete a File Object

Delete a File Object

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

api_instance = YousignClient::FileObjectsApi.new
id = 'id_example' # String | 

begin
  # Delete a File Object
  api_instance.file_objects_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_delete: #{e}"
end
```

#### Using the file_objects_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> file_objects_id_delete_with_http_info(id)

```ruby
begin
  # Delete a File Object
  data, status_code, headers = api_instance.file_objects_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## file_objects_id_get

> <FileObjectOutput> file_objects_id_get(id)

Find a File Object by ID

Get a File Object

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

api_instance = YousignClient::FileObjectsApi.new
id = 'id_example' # String | 

begin
  # Find a File Object by ID
  result = api_instance.file_objects_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_get: #{e}"
end
```

#### Using the file_objects_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileObjectOutput>, Integer, Hash)> file_objects_id_get_with_http_info(id)

```ruby
begin
  # Find a File Object by ID
  data, status_code, headers = api_instance.file_objects_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileObjectOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_objects_id_put

> <FileObjectOutput> file_objects_id_put(id, body)

Update a File Object

Update a File Object

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

api_instance = YousignClient::FileObjectsApi.new
id = 'id_example' # String | 
body = YousignClient::FileObjectInput.new({file: 'file_example'}) # FileObjectInput | 

begin
  # Update a File Object
  result = api_instance.file_objects_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_put: #{e}"
end
```

#### Using the file_objects_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileObjectOutput>, Integer, Hash)> file_objects_id_put_with_http_info(id, body)

```ruby
begin
  # Update a File Object
  data, status_code, headers = api_instance.file_objects_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileObjectOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**FileObjectInput**](FileObjectInput.md) |  |  |

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## file_objects_post

> <FileObjectOutput> file_objects_post(body)

Create a new File Object

Create a new fileObject

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

api_instance = YousignClient::FileObjectsApi.new
body = YousignClient::FileObjectInput.new({file: 'file_example'}) # FileObjectInput | 

begin
  # Create a new File Object
  result = api_instance.file_objects_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_post: #{e}"
end
```

#### Using the file_objects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileObjectOutput>, Integer, Hash)> file_objects_post_with_http_info(body)

```ruby
begin
  # Create a new File Object
  data, status_code, headers = api_instance.file_objects_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileObjectOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FileObjectsApi->file_objects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FileObjectInput**](FileObjectInput.md) |  |  |

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

