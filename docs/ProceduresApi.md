# YousignClient::ProceduresApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_procedures_get**](ProceduresApi.md#export_procedures_get) | **GET** /export/procedures | Export Procedure list
[**procedures_get**](ProceduresApi.md#procedures_get) | **GET** /procedures | Get Procedure list
[**procedures_id_delete**](ProceduresApi.md#procedures_id_delete) | **DELETE** /procedures/{id} | Delete a Procedure
[**procedures_id_duplicate_post**](ProceduresApi.md#procedures_id_duplicate_post) | **POST** /procedures/{id}/duplicate | Duplicate a Procedure
[**procedures_id_get**](ProceduresApi.md#procedures_id_get) | **GET** /procedures/{id} | Find a Procedure by ID
[**procedures_id_proof_get**](ProceduresApi.md#procedures_id_proof_get) | **GET** /procedures/{id}/proof | Get a Procedure proof file
[**procedures_id_put**](ProceduresApi.md#procedures_id_put) | **PUT** /procedures/{id} | Update a Procedure
[**procedures_id_remind_post**](ProceduresApi.md#procedures_id_remind_post) | **POST** /procedures/{id}/remind | Remind a Procedure
[**procedures_post**](ProceduresApi.md#procedures_post) | **POST** /procedures | Create a new Procedure



## export_procedures_get

> String export_procedures_get(authorization, opts)

Export Procedure list

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
opts = {
  status: 'status_example', # String | Return Procedure list based on the status for each Procedure
  name: 'test', # String | Filter by name (contains)
  members_firstname: 'test', # String | Filter by member firstname (contains)
  members_lastname: 'test', # String | Filter by member lastname (contains)
  members_phone: '+33102030405', # String | Filter by member phone (contains)
  members_email: 'test@test.fr', # String | Filter by member email (contains)
  files_name: 'test', # String | Filter by file name (contains)
  created_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by creation date  createdAt[after]=2017-09-18 createdAt[before]=2017-09-18 createdAt[strictly_after]=2017-09-18 createdAt[strictly_before]=2017-09-18
  updated_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by update date  updatedAt[after]=2017-09-18 updatedAt[before]=2017-09-18 updatedAt[strictly_after]=2017-09-18 updatedAt[strictly_before]=2017-09-18
  expires_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by expire date  expiresAt[after]=2017-09-18 expiresAt[before]=2017-09-18 expiresAt[strictly_after]=2017-09-18 expiresAt[strictly_before]=2017-09-18
  deleted_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by delete date  deletedAt[after]=2017-09-18 deletedAt[before]=2017-09-18 deletedAt[strictly_after]=2017-09-18 deletedAt[strictly_before]=2017-09-18
  order_created_at: 'order_created_at_example' # String | Order by attribut
}

begin
  #Export Procedure list
  result = api_instance.export_procedures_get(authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->export_procedures_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **status** | **String**| Return Procedure list based on the status for each Procedure | [optional] 
 **name** | **String**| Filter by name (contains) | [optional] 
 **members_firstname** | **String**| Filter by member firstname (contains) | [optional] 
 **members_lastname** | **String**| Filter by member lastname (contains) | [optional] 
 **members_phone** | **String**| Filter by member phone (contains) | [optional] 
 **members_email** | **String**| Filter by member email (contains) | [optional] 
 **files_name** | **String**| Filter by file name (contains) | [optional] 
 **created_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **updated_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **expires_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **deleted_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **order_created_at** | **String**| Order by attribut | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv


## procedures_get

> Array&lt;ProcedureOutput&gt; procedures_get(authorization, opts)

Get Procedure list

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
opts = {
  status: 'status_example', # String | Return Procedure list based on the status for each Procedure
  template: false, # Boolean | Used to get Procedure template list
  members: ['/members/f8311c9b-7b37-46d4-b28e-0c40d44b2f95'], # Array<String> | Get Procedure list for given members (paraph mode)
  items_per_page: '20', # String | Number of items per page for the pagination
  pagination: true, # Boolean | Enable the pagination
  page: 2, # Integer | Page of the pagination
  name: 'test', # String | Filter by name (contains)
  members_firstname: 'test', # String | Filter by member firstname (contains)
  members_lastname: 'test', # String | Filter by member lastname (contains)
  members_phone: '+33102030405', # String | Filter by member phone (contains)
  members_email: 'test@test.fr', # String | Filter by member email (contains)
  files_name: 'test', # String | Filter by file name (contains)
  created_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by creation date  createdAt[after]=2017-09-18 createdAt[before]=2017-09-18 createdAt[strictly_after]=2017-09-18 createdAt[strictly_before]=2017-09-18
  updated_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by update date  updatedAt[after]=2017-09-18 updatedAt[before]=2017-09-18 updatedAt[strictly_after]=2017-09-18 updatedAt[strictly_before]=2017-09-18
  expires_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by expire date  expiresAt[after]=2017-09-18 expiresAt[before]=2017-09-18 expiresAt[strictly_after]=2017-09-18 expiresAt[strictly_before]=2017-09-18
  deleted_at: [Date.parse('2013-10-20')], # Array<Date> | Filter by delete date  deletedAt[after]=2017-09-18 deletedAt[before]=2017-09-18 deletedAt[strictly_after]=2017-09-18 deletedAt[strictly_before]=2017-09-18
  order_created_at: 'order_created_at_example' # String | Order by createdAt  order[createdAt]=asc order[createdAt]=desc
}

begin
  #Get Procedure list
  result = api_instance.procedures_get(authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **status** | **String**| Return Procedure list based on the status for each Procedure | [optional] 
 **template** | **Boolean**| Used to get Procedure template list | [optional] [default to false]
 **members** | [**Array&lt;String&gt;**](String.md)| Get Procedure list for given members (paraph mode) | [optional] 
 **items_per_page** | **String**| Number of items per page for the pagination | [optional] 
 **pagination** | **Boolean**| Enable the pagination | [optional] 
 **page** | **Integer**| Page of the pagination | [optional] 
 **name** | **String**| Filter by name (contains) | [optional] 
 **members_firstname** | **String**| Filter by member firstname (contains) | [optional] 
 **members_lastname** | **String**| Filter by member lastname (contains) | [optional] 
 **members_phone** | **String**| Filter by member phone (contains) | [optional] 
 **members_email** | **String**| Filter by member email (contains) | [optional] 
 **files_name** | **String**| Filter by file name (contains) | [optional] 
 **created_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **updated_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **expires_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **deleted_at** | [**Array&lt;Date&gt;**](Date.md)| Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18 | [optional] 
 **order_created_at** | **String**| Order by createdAt  order[createdAt]&#x3D;asc order[createdAt]&#x3D;desc | [optional] 

### Return type

[**Array&lt;ProcedureOutput&gt;**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## procedures_id_delete

> procedures_id_delete(id, authorization)

Delete a Procedure

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Delete a Procedure
  api_instance.procedures_id_delete(id, authorization)
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_delete: #{e}"
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


## procedures_id_duplicate_post

> ProcedureOutput procedures_id_duplicate_post(id, authorization, content_type, body)

Duplicate a Procedure

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ProcedureDuplicateInput.new # ProcedureDuplicateInput | 

begin
  #Duplicate a Procedure
  result = api_instance.procedures_id_duplicate_post(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_duplicate_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ProcedureDuplicateInput**](ProcedureDuplicateInput.md)|  | 

### Return type

[**ProcedureOutput**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## procedures_id_get

> ProcedureOutput procedures_id_get(id, authorization)

Find a Procedure by ID

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Find a Procedure by ID
  result = api_instance.procedures_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**ProcedureOutput**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## procedures_id_proof_get

> String procedures_id_proof_get(id, authorization)

Get a Procedure proof file

Get a Procedure proof file

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

begin
  #Get a Procedure proof file
  result = api_instance.procedures_id_proof_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_proof_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## procedures_id_put

> ProcedureOutput procedures_id_put(id, authorization, content_type, body)

Update a Procedure

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ProcedureInput.new # ProcedureInput | 

begin
  #Update a Procedure
  result = api_instance.procedures_id_put(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ProcedureInput**](ProcedureInput.md)|  | 

### Return type

[**ProcedureOutput**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## procedures_id_remind_post

> ProcedureOutput procedures_id_remind_post(id, authorization, content_type, body)

Remind a Procedure

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
id = 'id_example' # String | 
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ProcedureRemindInput.new # ProcedureRemindInput | 

begin
  #Remind a Procedure
  result = api_instance.procedures_id_remind_post(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_id_remind_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ProcedureRemindInput**](ProcedureRemindInput.md)|  | 

### Return type

[**ProcedureOutput**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## procedures_post

> ProcedureOutput procedures_post(authorization, content_type, body)

Create a new Procedure

### Example

```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::ProceduresApi.new
authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication
content_type = 'application/json' # String | The MIME type of the body of the request
body = YousignClient::ProcedureInput.new # ProcedureInput | 

begin
  #Create a new Procedure
  result = api_instance.procedures_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ProceduresApi->procedures_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**ProcedureInput**](ProcedureInput.md)|  | 

### Return type

[**ProcedureOutput**](ProcedureOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

