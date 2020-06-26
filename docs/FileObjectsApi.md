# YousignClient::FileObjectsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**file_objects_id_delete**](FileObjectsApi.md#file_objects_id_delete) | **DELETE** /file_objects/{id} | Delete a File Object
[**file_objects_id_get**](FileObjectsApi.md#file_objects_id_get) | **GET** /file_objects/{id} | Find a File Object by ID
[**file_objects_id_put**](FileObjectsApi.md#file_objects_id_put) | **PUT** /file_objects/{id} | Update a File Object
[**file_objects_post**](FileObjectsApi.md#file_objects_post) | **POST** /file_objects | Create a new File Object


# **file_objects_id_delete**
> file_objects_id_delete(id, authorization)

Delete a File Object

Delete a File Object

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Delete a File Object
  api_instance.file_objects_id_delete(id, authorization)
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **file_objects_id_get**
> FileObjectOutput file_objects_id_get(id, authorization)

Find a File Object by ID

Get a File Object

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Find a File Object by ID
  result = api_instance.file_objects_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **file_objects_id_put**
> FileObjectOutput file_objects_id_put(id, authorization, content_type, body)

Update a File Object

Update a File Object

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::FileObjectsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::FileObjectInput.new # FileObjectInput | 


begin
  #Update a File Object
  result = api_instance.file_objects_id_put(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**FileObjectInput**](FileObjectInput.md)|  | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **file_objects_post**
> FileObjectOutput file_objects_post(authorization, content_type, body)

Create a new File Object

Create a new fileObject

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::FileObjectsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::FileObjectInput.new # FileObjectInput | 


begin
  #Create a new File Object
  result = api_instance.file_objects_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FileObjectsApi->file_objects_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**FileObjectInput**](FileObjectInput.md)|  | 

### Return type

[**FileObjectOutput**](FileObjectOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



