# YousignClient::ServerStampsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**server_stamps_id_get**](ServerStampsApi.md#server_stamps_id_get) | **GET** /server_stamps/{id} | Find a Server Stamp by ID
[**server_stamps_post**](ServerStampsApi.md#server_stamps_post) | **POST** /server_stamps | Create a Server Stamp



## server_stamps_id_get

> ServerStampOutput server_stamps_id_get(id, authorization)

Find a Server Stamp by ID

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ServerStampsApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Find a Server Stamp by ID
  result = api_instance.server_stamps_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ServerStampsApi->server_stamps_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## server_stamps_post

> ServerStampOutput server_stamps_post(authorization, content_type, body)

Create a Server Stamp

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ServerStampsApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ServerStampInput.new # ServerStampInput | 

begin
  #Create a Server Stamp
  result = api_instance.server_stamps_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ServerStampsApi->server_stamps_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ServerStampInput**](ServerStampInput.md)|  | 

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

