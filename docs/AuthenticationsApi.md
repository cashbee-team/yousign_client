# YousignClient::AuthenticationsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authentications_email_id_get**](AuthenticationsApi.md#authentications_email_id_get) | **GET** /authentications/email/{id} | Find an Authentication by ID |
| [**authentications_email_id_put**](AuthenticationsApi.md#authentications_email_id_put) | **PUT** /authentications/email/{id} | Update an Email Authentication |
| [**authentications_inwebo_id_get**](AuthenticationsApi.md#authentications_inwebo_id_get) | **GET** /authentications/inwebo/{id} | Get an Authentication |
| [**authentications_inwebo_id_put**](AuthenticationsApi.md#authentications_inwebo_id_put) | **PUT** /authentications/inwebo/{id} | Update an inwebo Authentication |
| [**authentications_sms_id_get**](AuthenticationsApi.md#authentications_sms_id_get) | **GET** /authentications/sms/{id} | Find an Authentication by ID |
| [**authentications_sms_id_put**](AuthenticationsApi.md#authentications_sms_id_put) | **PUT** /authentications/sms/{id} | Update an SMS Authentication |


## authentications_email_id_get

> <AuthenticationEmailOutput> authentications_email_id_get(id)

Find an Authentication by ID

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 

begin
  # Find an Authentication by ID
  result = api_instance.authentications_email_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_email_id_get: #{e}"
end
```

#### Using the authentications_email_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationEmailOutput>, Integer, Hash)> authentications_email_id_get_with_http_info(id)

```ruby
begin
  # Find an Authentication by ID
  data, status_code, headers = api_instance.authentications_email_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationEmailOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_email_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**AuthenticationEmailOutput**](AuthenticationEmailOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authentications_email_id_put

> <AuthenticationEmailOutput> authentications_email_id_put(id, body)

Update an Email Authentication

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 
body = YousignClient::InlineObject2.new({code: 'code_example'}) # InlineObject2 | 

begin
  # Update an Email Authentication
  result = api_instance.authentications_email_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_email_id_put: #{e}"
end
```

#### Using the authentications_email_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationEmailOutput>, Integer, Hash)> authentications_email_id_put_with_http_info(id, body)

```ruby
begin
  # Update an Email Authentication
  data, status_code, headers = api_instance.authentications_email_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationEmailOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_email_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**InlineObject2**](InlineObject2.md) |  |  |

### Return type

[**AuthenticationEmailOutput**](AuthenticationEmailOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authentications_inwebo_id_get

> <AuthenticationInweboOutput> authentications_inwebo_id_get(id)

Get an Authentication

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 

begin
  # Get an Authentication
  result = api_instance.authentications_inwebo_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_inwebo_id_get: #{e}"
end
```

#### Using the authentications_inwebo_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationInweboOutput>, Integer, Hash)> authentications_inwebo_id_get_with_http_info(id)

```ruby
begin
  # Get an Authentication
  data, status_code, headers = api_instance.authentications_inwebo_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationInweboOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_inwebo_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**AuthenticationInweboOutput**](AuthenticationInweboOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authentications_inwebo_id_put

> <AuthenticationInweboOutput> authentications_inwebo_id_put(id, body)

Update an inwebo Authentication

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 
body = YousignClient::InlineObject.new # InlineObject | 

begin
  # Update an inwebo Authentication
  result = api_instance.authentications_inwebo_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_inwebo_id_put: #{e}"
end
```

#### Using the authentications_inwebo_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationInweboOutput>, Integer, Hash)> authentications_inwebo_id_put_with_http_info(id, body)

```ruby
begin
  # Update an inwebo Authentication
  data, status_code, headers = api_instance.authentications_inwebo_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationInweboOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_inwebo_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**InlineObject**](InlineObject.md) |  |  |

### Return type

[**AuthenticationInweboOutput**](AuthenticationInweboOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authentications_sms_id_get

> <AuthenticationSmsOutput> authentications_sms_id_get(id)

Find an Authentication by ID

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 

begin
  # Find an Authentication by ID
  result = api_instance.authentications_sms_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_sms_id_get: #{e}"
end
```

#### Using the authentications_sms_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationSmsOutput>, Integer, Hash)> authentications_sms_id_get_with_http_info(id)

```ruby
begin
  # Find an Authentication by ID
  data, status_code, headers = api_instance.authentications_sms_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationSmsOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_sms_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**AuthenticationSmsOutput**](AuthenticationSmsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authentications_sms_id_put

> <AuthenticationSmsOutput> authentications_sms_id_put(id, body)

Update an SMS Authentication

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

api_instance = YousignClient::AuthenticationsApi.new
id = 'id_example' # String | 
body = YousignClient::InlineObject1.new({code: 'code_example'}) # InlineObject1 | 

begin
  # Update an SMS Authentication
  result = api_instance.authentications_sms_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_sms_id_put: #{e}"
end
```

#### Using the authentications_sms_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationSmsOutput>, Integer, Hash)> authentications_sms_id_put_with_http_info(id, body)

```ruby
begin
  # Update an SMS Authentication
  data, status_code, headers = api_instance.authentications_sms_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationSmsOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling AuthenticationsApi->authentications_sms_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**InlineObject1**](InlineObject1.md) |  |  |

### Return type

[**AuthenticationSmsOutput**](AuthenticationSmsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

