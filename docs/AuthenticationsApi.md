# YousignClient::AuthenticationsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authentications_email_id_get**](AuthenticationsApi.md#authentications_email_id_get) | **GET** /authentications/email/{id} | Find an Authentication by ID
[**authentications_email_id_put**](AuthenticationsApi.md#authentications_email_id_put) | **PUT** /authentications/email/{id} | Update an Email Authentication
[**authentications_inwebo_id_get**](AuthenticationsApi.md#authentications_inwebo_id_get) | **GET** /authentications/inwebo/{id} | Get an Authentication
[**authentications_inwebo_id_put**](AuthenticationsApi.md#authentications_inwebo_id_put) | **PUT** /authentications/inwebo/{id} | Update an inwebo Authentication
[**authentications_sms_id_get**](AuthenticationsApi.md#authentications_sms_id_get) | **GET** /authentications/sms/{id} | Find an Authentication by ID
[**authentications_sms_id_put**](AuthenticationsApi.md#authentications_sms_id_put) | **PUT** /authentications/sms/{id} | Update an SMS Authentication


# **authentications_email_id_get**
> AuthenticationEmailOutput authentications_email_id_get(id, )

Find an Authentication by ID

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 


begin
  #Find an Authentication by ID
  result = api_instance.authentications_email_id_get(id, )
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_email_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AuthenticationEmailOutput**](AuthenticationEmailOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **authentications_email_id_put**
> AuthenticationEmailOutput authentications_email_id_put(id, body)

Update an Email Authentication

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 

body = YousignClient::Body2.new # Body2 | 


begin
  #Update an Email Authentication
  result = api_instance.authentications_email_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_email_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body2**](Body2.md)|  | 

### Return type

[**AuthenticationEmailOutput**](AuthenticationEmailOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **authentications_inwebo_id_get**
> AuthenticationInweboOutput authentications_inwebo_id_get(id, )

Get an Authentication

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 


begin
  #Get an Authentication
  result = api_instance.authentications_inwebo_id_get(id, )
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_inwebo_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AuthenticationInweboOutput**](AuthenticationInweboOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **authentications_inwebo_id_put**
> AuthenticationInweboOutput authentications_inwebo_id_put(id, body)

Update an inwebo Authentication

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 

body = YousignClient::Body.new # Body | 


begin
  #Update an inwebo Authentication
  result = api_instance.authentications_inwebo_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_inwebo_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body**](Body.md)|  | 

### Return type

[**AuthenticationInweboOutput**](AuthenticationInweboOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **authentications_sms_id_get**
> AuthenticationSmsOutput authentications_sms_id_get(id, )

Find an Authentication by ID

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 


begin
  #Find an Authentication by ID
  result = api_instance.authentications_sms_id_get(id, )
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_sms_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AuthenticationSmsOutput**](AuthenticationSmsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **authentications_sms_id_put**
> AuthenticationSmsOutput authentications_sms_id_put(id, body)

Update an SMS Authentication

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

api_instance = YousignClient::AuthenticationsApi.new

id = 'id_example' # String | 

body = YousignClient::Body1.new # Body1 | 


begin
  #Update an SMS Authentication
  result = api_instance.authentications_sms_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling AuthenticationsApi->authentications_sms_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body1**](Body1.md)|  | 

### Return type

[**AuthenticationSmsOutput**](AuthenticationSmsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



