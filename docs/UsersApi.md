# YousignClient::UsersApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_get**](UsersApi.md#users_get) | **GET** /users | List all Users
[**users_id_delete**](UsersApi.md#users_id_delete) | **DELETE** /users/{id} | Delete a User
[**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Find a User by ID
[**users_id_put**](UsersApi.md#users_id_put) | **PUT** /users/{id} | Update a User
[**users_post**](UsersApi.md#users_post) | **POST** /users | Create a new User on Yousign application


# **users_get**
> Array&lt;UserOutput&gt; users_get

List all Users

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

api_instance = YousignClient::UsersApi.new

begin
  #List all Users
  result = api_instance.users_get
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserOutput&gt;**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_id_delete**
> users_id_delete(id)

Delete a User

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

api_instance = YousignClient::UsersApi.new

id = 'id_example' # String | 


begin
  #Delete a User
  api_instance.users_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_delete: #{e}"
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



# **users_id_get**
> UserOutput users_id_get(id)

Find a User by ID

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

api_instance = YousignClient::UsersApi.new

id = 'id_example' # String | 


begin
  #Find a User by ID
  result = api_instance.users_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_id_put**
> UserOutput users_id_put(idbody)

Update a User

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

api_instance = YousignClient::UsersApi.new

id = 'id_example' # String | 

body = YousignClient::UserInput.new # UserInput | 


begin
  #Update a User
  result = api_instance.users_id_put(idbody)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**UserInput**](UserInput.md)|  | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **users_post**
> UserOutput users_post(body)

Create a new User on Yousign application

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

api_instance = YousignClient::UsersApi.new

body = YousignClient::UserInput.new # UserInput | 


begin
  #Create a new User on Yousign application
  result = api_instance.users_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserInput**](UserInput.md)|  | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



