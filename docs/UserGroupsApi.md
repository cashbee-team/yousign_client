# YousignClient::UserGroupsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_groups_get**](UserGroupsApi.md#user_groups_get) | **GET** /user_groups | Get User Group list
[**user_groups_id_get**](UserGroupsApi.md#user_groups_id_get) | **GET** /user_groups/{id} | Find a User Group by ID



## user_groups_get

> Array&lt;UserGroup&gt; user_groups_get(authorization)

Get User Group list

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UserGroupsApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Get User Group list
  result = api_instance.user_groups_get(authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UserGroupsApi->user_groups_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**Array&lt;UserGroup&gt;**](UserGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_groups_id_get

> UserGroup user_groups_id_get(id, authorization)

Find a User Group by ID

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::UserGroupsApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Find a User Group by ID
  result = api_instance.user_groups_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UserGroupsApi->user_groups_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

