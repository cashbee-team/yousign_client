# YousignClient::FilesApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**files_id_download_get**](FilesApi.md#files_id_download_get) | **GET** /files/{id}/download | Download a File |
| [**files_id_duplicate_post**](FilesApi.md#files_id_duplicate_post) | **POST** /files/{id}/duplicate | Duplicate a File |
| [**files_id_get**](FilesApi.md#files_id_get) | **GET** /files/{id} | Find a File by ID |
| [**files_post**](FilesApi.md#files_post) | **POST** /files | Create a new File |


## files_id_download_get

> String files_id_download_get(id)

Download a File

Used to get the base64 content of a file

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

api_instance = YousignClient::FilesApi.new
id = 'id_example' # String | 

begin
  # Download a File
  result = api_instance.files_id_download_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_download_get: #{e}"
end
```

#### Using the files_id_download_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> files_id_download_get_with_http_info(id)

```ruby
begin
  # Download a File
  data, status_code, headers = api_instance.files_id_download_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_download_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_id_duplicate_post

> <FileOutput> files_id_duplicate_post(id)

Duplicate a File

Duplicate a file. It will be create a clone of this file, with a new ID.

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

api_instance = YousignClient::FilesApi.new
id = 'id_example' # String | 

begin
  # Duplicate a File
  result = api_instance.files_id_duplicate_post(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_duplicate_post: #{e}"
end
```

#### Using the files_id_duplicate_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOutput>, Integer, Hash)> files_id_duplicate_post_with_http_info(id)

```ruby
begin
  # Duplicate a File
  data, status_code, headers = api_instance.files_id_duplicate_post_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_duplicate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_id_get

> <FileOutput> files_id_get(id)

Find a File by ID

Returns all the information regarding the File but without its content (for performance issue).

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

api_instance = YousignClient::FilesApi.new
id = 'id_example' # String | 

begin
  # Find a File by ID
  result = api_instance.files_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_get: #{e}"
end
```

#### Using the files_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOutput>, Integer, Hash)> files_id_get_with_http_info(id)

```ruby
begin
  # Find a File by ID
  data, status_code, headers = api_instance.files_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_post

> <FileOutput> files_post(body)

Create a new File

Used to upload a file in base64 on our platform

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

api_instance = YousignClient::FilesApi.new
body = YousignClient::FileInput.new # FileInput | 

begin
  # Create a new File
  result = api_instance.files_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_post: #{e}"
end
```

#### Using the files_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOutput>, Integer, Hash)> files_post_with_http_info(body)

```ruby
begin
  # Create a new File
  data, status_code, headers = api_instance.files_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling FilesApi->files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FileInput**](FileInput.md) |  |  |

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

