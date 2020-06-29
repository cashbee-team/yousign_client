# YousignClient::UserGroupsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_groups_get**](UserGroupsApi.md#user_groups_get) | **GET** /user_groups | Get User Group list
[**user_groups_id_get**](UserGroupsApi.md#user_groups_id_get) | **GET** /user_groups/{id} | Find a User Group by ID


# **user_groups_get**
> Array&lt;UserGroup&gt; user_groups_get

Get User Group list

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

api_instance = YousignClient::UserGroupsApi.new

begin
  #Get User Group list
  result = api_instance.user_groups_get
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UserGroupsApi->user_groups_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserGroup&gt;**](UserGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **user_groups_id_get**
> UserGroup user_groups_id_get(id)

Find a User Group by ID

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

api_instance = YousignClient::UserGroupsApi.new

id = 'id_example' # String | 


begin
  #Find a User Group by ID
  result = api_instance.user_groups_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UserGroupsApi->user_groups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



