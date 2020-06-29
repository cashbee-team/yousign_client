# YousignClient::OrganizationsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organizations_get**](OrganizationsApi.md#organizations_get) | **GET** /organizations | List all Organizations


# **organizations_get**
> Array&lt;OrganizationOutput&gt; organizations_get

List all Organizations

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

api_instance = YousignClient::OrganizationsApi.new

begin
  #List all Organizations
  result = api_instance.organizations_get
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling OrganizationsApi->organizations_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;OrganizationOutput&gt;**](OrganizationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



