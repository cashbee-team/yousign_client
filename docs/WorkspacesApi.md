# YousignClient::WorkspacesApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workspaces_get**](WorkspacesApi.md#workspaces_get) | **GET** /workspaces | List all Workspaces



## workspaces_get

> Array&lt;WorkspaceOutput&gt; workspaces_get(authorization)

List all Workspaces

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::WorkspacesApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #List all Workspaces
  result = api_instance.workspaces_get(authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WorkspacesApi->workspaces_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**Array&lt;WorkspaceOutput&gt;**](WorkspaceOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

