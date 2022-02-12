# YousignClient::OrganizationsApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**organizations_get**](OrganizationsApi.md#organizations_get) | **GET** /organizations | List all Organizations |


## organizations_get

> <Array<OrganizationOutput>> organizations_get

List all Organizations

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

api_instance = YousignClient::OrganizationsApi.new

begin
  # List all Organizations
  result = api_instance.organizations_get
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling OrganizationsApi->organizations_get: #{e}"
end
```

#### Using the organizations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrganizationOutput>>, Integer, Hash)> organizations_get_with_http_info

```ruby
begin
  # List all Organizations
  data, status_code, headers = api_instance.organizations_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrganizationOutput>>
rescue YousignClient::ApiError => e
  puts "Error when calling OrganizationsApi->organizations_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;OrganizationOutput&gt;**](OrganizationOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

