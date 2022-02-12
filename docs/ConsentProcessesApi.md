# YousignClient::ConsentProcessesApi

All URIs are relative to *https://api.yousign.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**consent_process_values_get**](ConsentProcessesApi.md#consent_process_values_get) | **GET** /consent_process_values | Get list of Consent Process Value |
| [**consent_process_values_id_get**](ConsentProcessesApi.md#consent_process_values_id_get) | **GET** /consent_process_values/{id} | Get a Consent Process Value |
| [**consent_process_values_post**](ConsentProcessesApi.md#consent_process_values_post) | **POST** /consent_process_values | Create a new Consent Process Value |
| [**consent_processes_get**](ConsentProcessesApi.md#consent_processes_get) | **GET** /consent_processes | Get list of Consent Processes |
| [**consent_processes_id_delete**](ConsentProcessesApi.md#consent_processes_id_delete) | **DELETE** /consent_processes/{id} | Delete a Consent Process |
| [**consent_processes_id_get**](ConsentProcessesApi.md#consent_processes_id_get) | **GET** /consent_processes/{id} | Get a Consent Process |
| [**consent_processes_id_put**](ConsentProcessesApi.md#consent_processes_id_put) | **PUT** /consent_processes/{id} | Update a Consent Process |
| [**consent_processes_post**](ConsentProcessesApi.md#consent_processes_post) | **POST** /consent_processes | Create a new Consent Process |


## consent_process_values_get

> <ConsentProcessValueOutput> consent_process_values_get(member)

Get list of Consent Process Value

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

api_instance = YousignClient::ConsentProcessesApi.new
member = '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member

begin
  # Get list of Consent Process Value
  result = api_instance.consent_process_values_get(member)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_get: #{e}"
end
```

#### Using the consent_process_values_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessValueOutput>, Integer, Hash)> consent_process_values_get_with_http_info(member)

```ruby
begin
  # Get list of Consent Process Value
  data, status_code, headers = api_instance.consent_process_values_get_with_http_info(member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessValueOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | **String** | id of member |  |

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_process_values_id_get

> <ConsentProcessValueOutput> consent_process_values_id_get(id, opts)

Get a Consent Process Value

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

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member (required for anonymous)
}

begin
  # Get a Consent Process Value
  result = api_instance.consent_process_values_id_get(id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_id_get: #{e}"
end
```

#### Using the consent_process_values_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessValueOutput>, Integer, Hash)> consent_process_values_id_get_with_http_info(id, opts)

```ruby
begin
  # Get a Consent Process Value
  data, status_code, headers = api_instance.consent_process_values_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessValueOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **member** | **String** | id of member (required for anonymous) | [optional] |

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_process_values_post

> <ConsentProcessValueOutput> consent_process_values_post(body)

Create a new Consent Process Value

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

api_instance = YousignClient::ConsentProcessesApi.new
body = YousignClient::ConsentProcessValueInput.new({consent_process: '/consent_processes/9d1ede2b-5687-4440-bdc8-dd0bc64f668c', member: '/members/9d1ede2b-5687-4440-bdc8-dd0bc64f668c'}) # ConsentProcessValueInput | 

begin
  # Create a new Consent Process Value
  result = api_instance.consent_process_values_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_post: #{e}"
end
```

#### Using the consent_process_values_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessValueOutput>, Integer, Hash)> consent_process_values_post_with_http_info(body)

```ruby
begin
  # Create a new Consent Process Value
  data, status_code, headers = api_instance.consent_process_values_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessValueOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_process_values_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ConsentProcessValueInput**](ConsentProcessValueInput.md) |  |  |

### Return type

[**ConsentProcessValueOutput**](ConsentProcessValueOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## consent_processes_get

> <Array<ConsentProcessOutput>> consent_processes_get(opts)

Get list of Consent Processes

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

api_instance = YousignClient::ConsentProcessesApi.new
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40', # String | id of member (required for anonymous)
  procedure: '/procedures/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of procedure (required if the member attribut is not set)
}

begin
  # Get list of Consent Processes
  result = api_instance.consent_processes_get(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_get: #{e}"
end
```

#### Using the consent_processes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConsentProcessOutput>>, Integer, Hash)> consent_processes_get_with_http_info(opts)

```ruby
begin
  # Get list of Consent Processes
  data, status_code, headers = api_instance.consent_processes_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConsentProcessOutput>>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | **String** | id of member (required for anonymous) | [optional] |
| **procedure** | **String** | id of procedure (required if the member attribut is not set) | [optional] |

### Return type

[**Array&lt;ConsentProcessOutput&gt;**](ConsentProcessOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_processes_id_delete

> consent_processes_id_delete(id)

Delete a Consent Process

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

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 

begin
  # Delete a Consent Process
  api_instance.consent_processes_id_delete(id)
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_delete: #{e}"
end
```

#### Using the consent_processes_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> consent_processes_id_delete_with_http_info(id)

```ruby
begin
  # Delete a Consent Process
  data, status_code, headers = api_instance.consent_processes_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## consent_processes_id_get

> <ConsentProcessOutput> consent_processes_id_get(id, opts)

Get a Consent Process

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

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
opts = {
  member: '/members/17625df4-4ee7-498e-822d-3637c91b6f40' # String | id of member (required for anonymous)
}

begin
  # Get a Consent Process
  result = api_instance.consent_processes_id_get(id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_get: #{e}"
end
```

#### Using the consent_processes_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessOutput>, Integer, Hash)> consent_processes_id_get_with_http_info(id, opts)

```ruby
begin
  # Get a Consent Process
  data, status_code, headers = api_instance.consent_processes_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **member** | **String** | id of member (required for anonymous) | [optional] |

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## consent_processes_id_put

> <ConsentProcessOutput> consent_processes_id_put(id, body)

Update a Consent Process

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

api_instance = YousignClient::ConsentProcessesApi.new
id = 'id_example' # String | 
body = YousignClient::ConsentProcessInput.new({type: 'text', members: [/members/9d1ede2b-5687-4440-bdc8-dd0bc64f664f]}) # ConsentProcessInput | 

begin
  # Update a Consent Process
  result = api_instance.consent_processes_id_put(id, body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_put: #{e}"
end
```

#### Using the consent_processes_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessOutput>, Integer, Hash)> consent_processes_id_put_with_http_info(id, body)

```ruby
begin
  # Update a Consent Process
  data, status_code, headers = api_instance.consent_processes_id_put_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **body** | [**ConsentProcessInput**](ConsentProcessInput.md) |  |  |

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## consent_processes_post

> <ConsentProcessOutput> consent_processes_post(body)

Create a new Consent Process

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

api_instance = YousignClient::ConsentProcessesApi.new
body = YousignClient::ConsentProcessInput.new({type: 'text', members: [/members/9d1ede2b-5687-4440-bdc8-dd0bc64f664f]}) # ConsentProcessInput | 

begin
  # Create a new Consent Process
  result = api_instance.consent_processes_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_post: #{e}"
end
```

#### Using the consent_processes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentProcessOutput>, Integer, Hash)> consent_processes_post_with_http_info(body)

```ruby
begin
  # Create a new Consent Process
  data, status_code, headers = api_instance.consent_processes_post_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentProcessOutput>
rescue YousignClient::ApiError => e
  puts "Error when calling ConsentProcessesApi->consent_processes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ConsentProcessInput**](ConsentProcessInput.md) |  |  |

### Return type

[**ConsentProcessOutput**](ConsentProcessOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

