# YousignClient::MembersApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**members_get**](MembersApi.md#members_get) | **GET** /members | Get all Members |
| [**members_id_delete**](MembersApi.md#members_id_delete) | **DELETE** /members/{id} | Delete a Member |
| [**members_id_proof_get**](MembersApi.md#members_id_proof_get) | **GET** /members/{id}/proof | Get a proof file of a Member |
| [**members_id_put**](MembersApi.md#members_id_put) | **PUT** /members/{id} | Edit a Member |
| [**members_post**](MembersApi.md#members_post) | **POST** /members | Create a new Member |


## members_get

> <Array<MemberOutput>> members_get(opts)

Get all Members

Returns the list of Members of a organization. It only usefull if you use the query params named \"procedure\" for retrieve all members of a procedure.

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

api_instance = YousignClient::MembersApi.new
opts = {
  procedure: 'Id for filter about a procedure' # String | 
}

begin
  # Get all Members
  result = api_instance.members_get(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_get: #{e}"
end
```

#### Using the members_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MemberOutput>>, Integer, Hash)> members_get_with_http_info(opts)

```ruby
begin
  # Get all Members
  data, status_code, headers = api_instance.members_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MemberOutput>>
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **procedure** | **String** |  | [optional] |

### Return type

[**Array&lt;MemberOutput&gt;**](MemberOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## members_id_delete

> members_id_delete(id)

Delete a Member

Delete a member

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

api_instance = YousignClient::MembersApi.new
id = 'id_example' # String | 

begin
  # Delete a Member
  api_instance.members_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_delete: #{e}"
end
```

#### Using the members_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> members_id_delete_with_http_info(id)

```ruby
begin
  # Delete a Member
  data, status_code, headers = api_instance.members_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_delete_with_http_info: #{e}"
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


## members_id_proof_get

> String members_id_proof_get(id)

Get a proof file of a Member

Get a proof file of a member

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

api_instance = YousignClient::MembersApi.new
id = 'id_example' # String | 

begin
  # Get a proof file of a Member
  result = api_instance.members_id_proof_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_proof_get: #{e}"
end
```

#### Using the members_id_proof_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> members_id_proof_get_with_http_info(id)

```ruby
begin
  # Get a proof file of a Member
  data, status_code, headers = api_instance.members_id_proof_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_proof_get_with_http_info: #{e}"
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


## members_id_put

> <MemberOutput> members_id_put(id, body)

Edit a Member

Edit a member

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

api_instance = YousignClient::MembersApi.new
id = 'id_example' # String | 
body = YousignClient::MemberInput.new # MemberInput | 

begin
  # Edit a Member
  result = api_instance.members_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_put: #{e}"
end
```

#### Using the members_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOutput>, Integer, Hash)> members_id_put_with_http_info(id, body)

```ruby
begin
  # Edit a Member
  data, status_code, headers = api_instance.members_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**MemberInput**](MemberInput.md) |  |  |

### Return type

[**MemberOutput**](MemberOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## members_post

> <MemberOutput> members_post(body)

Create a new Member

Create a new member

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

api_instance = YousignClient::MembersApi.new
body = YousignClient::MemberInput.new # MemberInput | 

begin
  # Create a new Member
  result = api_instance.members_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_post: #{e}"
end
```

#### Using the members_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOutput>, Integer, Hash)> members_post_with_http_info(body)

```ruby
begin
  # Create a new Member
  data, status_code, headers = api_instance.members_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling MembersApi->members_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MemberInput**](MemberInput.md) |  |  |

### Return type

[**MemberOutput**](MemberOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

