# YousignClient::OrganizationsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organizations_get**](OrganizationsApi.md#organizations_get) | **GET** /organizations | List all Organizations


# **organizations_get**
> Array&lt;OrganizationOutput&gt; organizations_get(authorization)

List all Organizations

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::OrganizationsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #List all Organizations
  result = api_instance.organizations_get(authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**Array&lt;OrganizationOutput&gt;**](OrganizationOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



