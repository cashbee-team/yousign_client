# YousignClient::UserGroupsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_groups_get**](UserGroupsApi.md#user_groups_get) | **GET** /user_groups | Get User Group list |
| [**user_groups_id_get**](UserGroupsApi.md#user_groups_id_get) | **GET** /user_groups/{id} | Find a User Group by ID |


## user_groups_get

> <Array<UserGroup>> user_groups_get

Get User Group list

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

api_instance = YousignClient::UserGroupsApi.new

begin
  # Get User Group list
  result = api_instance.user_groups_get
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UserGroupsApi->user_groups_get: #{e}"
end
```

#### Using the user_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserGroup>>, Integer, Hash)> user_groups_get_with_http_info

```ruby
begin
  # Get User Group list
  data, status_code, headers = api_instance.user_groups_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserGroup>>
rescue YousignClient::ApiError => e
  puts "Error when calling UserGroupsApi->user_groups_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UserGroup&gt;**](UserGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_groups_id_get

> <UserGroup> user_groups_id_get(id)

Find a User Group by ID

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

api_instance = YousignClient::UserGroupsApi.new
id = 'id_example' # String | 

begin
  # Find a User Group by ID
  result = api_instance.user_groups_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling UserGroupsApi->user_groups_id_get: #{e}"
end
```

#### Using the user_groups_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroup>, Integer, Hash)> user_groups_id_get_with_http_info(id)

```ruby
begin
  # Find a User Group by ID
  data, status_code, headers = api_instance.user_groups_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroup>
rescue YousignClient::ApiError => e
  puts "Error when calling UserGroupsApi->user_groups_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

