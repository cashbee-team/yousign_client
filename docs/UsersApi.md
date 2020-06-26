# YousignClient::UsersApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_get**](UsersApi.md#users_get) | **GET** /users | List all Users
[**users_id_delete**](UsersApi.md#users_id_delete) | **DELETE** /users/{id} | Delete a User
[**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Find a User by ID
[**users_id_put**](UsersApi.md#users_id_put) | **PUT** /users/{id} | Update a User
[**users_post**](UsersApi.md#users_post) | **POST** /users | Create a new User on Yousign application



## users_get

> Array&lt;UserOutput&gt; users_get(authorization)

List all Users

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UsersApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #List all Users
  result = api_instance.users_get(authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**Array&lt;UserOutput&gt;**](UserOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_delete

> users_id_delete(id, authorization)

Delete a User

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Delete a User
  api_instance.users_id_delete(id, authorization)
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_delete: #{e}"
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

- **Content-Type**: Not defined
- **Accept**: Not defined


## users_id_get

> UserOutput users_id_get(id, authorization)

Find a User by ID

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Find a User by ID
  result = api_instance.users_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_put

> UserOutput users_id_put(id, authorization, content_type, body)

Update a User

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::UserInput.new # UserInput | 

begin
  #Update a User
  result = api_instance.users_id_put(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**UserInput**](UserInput.md)|  | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_post

> UserOutput users_post(authorization, content_type, body)

Create a new User on Yousign application

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UsersApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::UserInput.new # UserInput | 

begin
  #Create a new User on Yousign application
  result = api_instance.users_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UsersApi->users_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**UserInput**](UserInput.md)|  | 

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

