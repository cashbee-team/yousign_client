# YousignClient::FileObjectsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**file_objects_id_delete**](FileObjectsApi.md#file_objects_id_delete) | **DELETE** /file_objects/{id} | Delete a File Object
[**file_objects_id_get**](FileObjectsApi.md#file_objects_id_get) | **GET** /file_objects/{id} | Find a File Object by ID
[**file_objects_id_put**](FileObjectsApi.md#file_objects_id_put) | **PUT** /file_objects/{id} | Update a File Object
[**file_objects_post**](FileObjectsApi.md#file_objects_post) | **POST** /file_objects | Create a new File Object


# **file_objects_id_delete**
> file_objects_id_delete(id)

Delete a File Object

Delete a File Object

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

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 


begin
  #Delete a File Object
  api_instance.file_objects_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **file_objects_id_get**
> FileObjectOutput file_objects_id_get(id)

Find a File Object by ID

Get a File Object

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

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 


begin
  #Find a File Object by ID
  result = api_instance.file_objects_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **file_objects_id_put**
> FileObjectOutput file_objects_id_put(idbody)

Update a File Object

Update a File Object

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

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 

body = YousignClient::FileObjectInput.new # FileObjectInput | 


begin
  #Update a File Object
  result = api_instance.file_objects_id_put(idbody)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**FileObjectInput**](FileObjectInput.md)|  | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **file_objects_post**
> FileObjectOutput file_objects_post(body)

Create a new File Object

Create a new fileObject

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

api_instance = YousignClient::FileObjectsApi.new

body = YousignClient::FileObjectInput.new # FileObjectInput | 


begin
  #Create a new File Object
  result = api_instance.file_objects_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FileObjectInput**](FileObjectInput.md)|  | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



