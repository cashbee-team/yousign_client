# YousignClient::ConsentProcessesApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consent_process_values_get**](ConsentProcessesApi.md#consent_process_values_get) | **GET** /consent_process_values | Get list of Consent Process Value
[**consent_process_values_id_get**](ConsentProcessesApi.md#consent_process_values_id_get) | **GET** /consent_process_values/{id} | Get a Consent Process Value
[**consent_process_values_post**](ConsentProcessesApi.md#consent_process_values_post) | **POST** /consent_process_values | Create a new Consent Process Value
[**consent_processes_get**](ConsentProcessesApi.md#consent_processes_get) | **GET** /consent_processes | Get list of Consent Processes
[**consent_processes_id_delete**](ConsentProcessesApi.md#consent_processes_id_delete) | **DELETE** /consent_processes/{id} | Delete a Consent Process
[**consent_processes_id_get**](ConsentProcessesApi.md#consent_processes_id_get) | **GET** /consent_processes/{id} | Get a Consent Process
[**consent_processes_id_put**](ConsentProcessesApi.md#consent_processes_id_put) | **PUT** /consent_processes/{id} | Update a Consent Process
[**consent_processes_post**](ConsentProcessesApi.md#consent_processes_post) | **POST** /consent_processes | Create a new Consent Process



## consent_process_values_get

> ConsentProcessValueOutput consent_process_values_get(member, authorization)

Get list of Consent Process Value

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
member = '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Get list of Consent Process Value
  result = api_instance.consent_process_values_get(member, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_process_values_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member** | **String**| id of member | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_process_values_id_get

> ConsentProcessValueOutput consent_process_values_id_get(id, authorization, opts)

Get a Consent Process Value

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member (required for anonymous)
}

begin
  #Get a Consent Process Value
  result = api_instance.consent_process_values_id_get(id, authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_process_values_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **member** | **String**| id of member (required for anonymous) | [optional] 

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_process_values_post

> ConsentProcessValueOutput consent_process_values_post(authorization, content_type, body)

Create a new Consent Process Value

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ConsentProcessValueInput.new # ConsentProcessValueInput | 

begin
  #Create a new Consent Process Value
  result = api_instance.consent_process_values_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_process_values_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ConsentProcessValueInput**](ConsentProcessValueInput.md)|  | 

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## consent_processes_get

> Array&lt;ConsentProcessOutput&gt; consent_processes_get(authorization, opts)

Get list of Consent Processes

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40', # String | id of member (required for anonymous)
  procedure: '/procedures/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of procedure (required if the member attribut is not set)
}

begin
  #Get list of Consent Processes
  result = api_instance.consent_processes_get(authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_processes_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **member** | **String**| id of member (required for anonymous) | [optional] 
 **procedure** | **String**| id of procedure (required if the member attribut is not set) | [optional] 

### Return type

[**Array&lt;ConsentProcessOutput&gt;**](ConsentProcessOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_processes_id_delete

> consent_processes_id_delete(id, authorization)

Delete a Consent Process

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Delete a Consent Process
  api_instance.consent_processes_id_delete(id, authorization)
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_processes_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## consent_processes_id_get

> ConsentProcessOutput consent_processes_id_get(id, authorization, opts)

Get a Consent Process

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member (required for anonymous)
}

begin
  #Get a Consent Process
  result = api_instance.consent_processes_id_get(id, authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_processes_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **member** | **String**| id of member (required for anonymous) | [optional] 

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_processes_id_put

> ConsentProcessOutput consent_processes_id_put(id, authorization, content_type, body)

Update a Consent Process

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ConsentProcessInput.new # ConsentProcessInput | 

begin
  #Update a Consent Process
  result = api_instance.consent_processes_id_put(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_processes_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ConsentProcessInput**](ConsentProcessInput.md)|  | 

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## consent_processes_post

> ConsentProcessOutput consent_processes_post(authorization, content_type, body)

Create a new Consent Process

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ConsentProcessesApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ConsentProcessInput.new # ConsentProcessInput | 

begin
  #Create a new Consent Process
  result = api_instance.consent_processes_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsentProcessesApi->consent_processes_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ConsentProcessInput**](ConsentProcessInput.md)|  | 

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

