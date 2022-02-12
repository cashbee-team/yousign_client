# YousignClient::UsersApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_get**](UsersApi.md#users_get) | **GET** /users | List all Users |
| [**users_id_delete**](UsersApi.md#users_id_delete) | **DELETE** /users/{id} | Delete a User |
| [**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Find a User by ID |
| [**users_id_put**](UsersApi.md#users_id_put) | **PUT** /users/{id} | Update a User |
| [**users_post**](UsersApi.md#users_post) | **POST** /users | Create a new User on Yousign application |


## users_get

> <Array<UserOutput>> users_get

List all Users

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

api_instance = YousignClient::UsersApi.new

begin
  # List all Users
  result = api_instance.users_get
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_get: #{e}"
end
```

#### Using the users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserOutput>>, Integer, Hash)> users_get_with_http_info

```ruby
begin
  # List all Users
  data, status_code, headers = api_instance.users_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserOutput>>
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UserOutput&gt;**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_delete

> users_id_delete(id)

Delete a User

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

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 

begin
  # Delete a User
  api_instance.users_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_delete: #{e}"
end
```

#### Using the users_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_id_delete_with_http_info(id)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.users_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_delete_with_http_info: #{e}"
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


## users_id_get

> <UserOutput> users_id_get(id)

Find a User by ID

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

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 

begin
  # Find a User by ID
  result = api_instance.users_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_get: #{e}"
end
```

#### Using the users_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserOutput>, Integer, Hash)> users_id_get_with_http_info(id)

```ruby
begin
  # Find a User by ID
  data, status_code, headers = api_instance.users_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_put

> <UserOutput> users_id_put(id, body)

Update a User

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

api_instance = YousignClient::UsersApi.new
id = 'id_example' # String | 
body = YousignClient::UserInput.new({firstname: 'firstname_example', lastname: 'lastname_example', email: 'email_example'}) # UserInput | 

begin
  # Update a User
  result = api_instance.users_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_put: #{e}"
end
```

#### Using the users_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserOutput>, Integer, Hash)> users_id_put_with_http_info(id, body)

```ruby
begin
  # Update a User
  data, status_code, headers = api_instance.users_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**UserInput**](UserInput.md) |  |  |

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_post

> <UserOutput> users_post(body)

Create a new User on Yousign application

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

api_instance = YousignClient::UsersApi.new
body = YousignClient::UserInput.new({firstname: 'firstname_example', lastname: 'lastname_example', email: 'email_example'}) # UserInput | 

begin
  # Create a new User on Yousign application
  result = api_instance.users_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_post: #{e}"
end
```

#### Using the users_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserOutput>, Integer, Hash)> users_post_with_http_info(body)

```ruby
begin
  # Create a new User on Yousign application
  data, status_code, headers = api_instance.users_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling UsersApi->users_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**UserInput**](UserInput.md) |  |  |

### Return type

[**UserOutput**](UserOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

