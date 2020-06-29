# YousignClient::FilesApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**files_id_download_get**](FilesApi.md#files_id_download_get) | **GET** /files/{id}/download | Download a File
[**files_id_duplicate_post**](FilesApi.md#files_id_duplicate_post) | **POST** /files/{id}/duplicate | Duplicate a File
[**files_id_get**](FilesApi.md#files_id_get) | **GET** /files/{id} | Find a File by ID
[**files_post**](FilesApi.md#files_post) | **POST** /files | Create a new File


# **files_id_download_get**
> String files_id_download_get(id)

Download a File

Used to get the base64 content of a file

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

api_instance = YousignClient::FilesApi.new

id = 'id_example' # String | 


begin
  #Download a File
  result = api_instance.files_id_download_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FilesApi->files_id_download_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **files_id_duplicate_post**
> FileOutput files_id_duplicate_post(id)

Duplicate a File

Duplicate a file. It will be create a clone of this file, with a new ID.

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

api_instance = YousignClient::FilesApi.new

id = 'id_example' # String | 


begin
  #Duplicate a File
  result = api_instance.files_id_duplicate_post(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FilesApi->files_id_duplicate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **files_id_get**
> FileOutput files_id_get(id)

Find a File by ID

Returns all the information regarding the File but without its content (for performance issue).

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

api_instance = YousignClient::FilesApi.new

id = 'id_example' # String | 


begin
  #Find a File by ID
  result = api_instance.files_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FilesApi->files_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **files_post**
> FileOutput files_post(body)

Create a new File

Used to upload a file in base64 on our platform

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

api_instance = YousignClient::FilesApi.new

body = YousignClient::FileInput.new # FileInput | 


begin
  #Create a new File
  result = api_instance.files_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FilesApi->files_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FileInput**](FileInput.md)|  | 

### Return type

[**FileOutput**](FileOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



