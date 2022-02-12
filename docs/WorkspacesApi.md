# YousignClient::WorkspacesApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workspaces_get**](WorkspacesApi.md#workspaces_get) | **GET** /workspaces | List all Workspaces |


## workspaces_get

> <Array<WorkspaceOutput>> workspaces_get

List all Workspaces

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

api_instance = YousignClient::WorkspacesApi.new

begin
  # List all Workspaces
  result = api_instance.workspaces_get
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_get: #{e}"
end
```

#### Using the workspaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkspaceOutput>>, Integer, Hash)> workspaces_get_with_http_info

```ruby
begin
  # List all Workspaces
  data, status_code, headers = api_instance.workspaces_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkspaceOutput>>
rescue YousignClient::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;WorkspaceOutput&gt;**](WorkspaceOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

