# YousignClient::WorkspacesApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workspaces_get**](WorkspacesApi.md#workspaces_get) | **GET** /workspaces | List all Workspaces


# **workspaces_get**
> Array&lt;WorkspaceOutput&gt; workspaces_get

List all Workspaces

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

api_instance = YousignClient::WorkspacesApi.new

begin
  #List all Workspaces
  result = api_instance.workspaces_get
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WorkspacesApi->workspaces_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;WorkspaceOutput&gt;**](WorkspaceOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



