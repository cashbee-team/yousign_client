# YousignClient::ServerStampsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**server_stamps_id_get**](ServerStampsApi.md#server_stamps_id_get) | **GET** /server_stamps/{id} | Find a Server Stamp by ID
[**server_stamps_post**](ServerStampsApi.md#server_stamps_post) | **POST** /server_stamps | Create a Server Stamp


# **server_stamps_id_get**
> ServerStampOutput server_stamps_id_get(id)

Find a Server Stamp by ID

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

api_instance = YousignClient::ServerStampsApi.new

id = 'id_example' # String | 


begin
  #Find a Server Stamp by ID
  result = api_instance.server_stamps_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ServerStampsApi->server_stamps_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **server_stamps_post**
> ServerStampOutput server_stamps_post(body)

Create a Server Stamp

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

api_instance = YousignClient::ServerStampsApi.new

body = YousignClient::ServerStampInput.new # ServerStampInput | 


begin
  #Create a Server Stamp
  result = api_instance.server_stamps_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ServerStampsApi->server_stamps_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ServerStampInput**](ServerStampInput.md)|  | 

### Return type

[**ServerStampOutput**](ServerStampOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



