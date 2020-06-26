# YousignClient::SignatureUIsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signature_ui_labels_get**](SignatureUIsApi.md#signature_ui_labels_get) | **GET** /signature_ui_labels | Get Signature UI Labels
[**signature_ui_labels_id_delete**](SignatureUIsApi.md#signature_ui_labels_id_delete) | **DELETE** /signature_ui_labels/{id} | Delete a Signature UI Label
[**signature_ui_labels_id_get**](SignatureUIsApi.md#signature_ui_labels_id_get) | **GET** /signature_ui_labels/{id} | Find a Signature UI Label by ID
[**signature_ui_labels_id_put**](SignatureUIsApi.md#signature_ui_labels_id_put) | **PUT** /signature_ui_labels/{id} | Update a Signature UI Label
[**signature_ui_labels_post**](SignatureUIsApi.md#signature_ui_labels_post) | **POST** /signature_ui_labels | Create a new Signature UI Label
[**signature_uis_get**](SignatureUIsApi.md#signature_uis_get) | **GET** /signature_uis | Get Signature UI list
[**signature_uis_id_delete**](SignatureUIsApi.md#signature_uis_id_delete) | **DELETE** /signature_uis/{id} | Delete a Signature UI
[**signature_uis_id_get**](SignatureUIsApi.md#signature_uis_id_get) | **GET** /signature_uis/{id} | Find a Signature UI by ID
[**signature_uis_id_put**](SignatureUIsApi.md#signature_uis_id_put) | **PUT** /signature_uis/{id} | Update a Signature UI
[**signature_uis_post**](SignatureUIsApi.md#signature_uis_post) | **POST** /signature_uis | Create a new Signature UI


# **signature_ui_labels_get**
> Array&lt;SignatureUiLabelOutput&gt; signature_ui_labels_get(authorization, opts)

Get Signature UI Labels

Only usefull if you use a filter with name or signatureUI

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

opts = { 
  name: 'name_example', # String | Filtering on name of signature ui labels
  signature_ui: 'signature_ui_example' # String | Filtering on id of signature ui resource
}

begin
  #Get Signature UI Labels
  result = api_instance.signature_ui_labels_get(authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_ui_labels_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **name** | **String**| Filtering on name of signature ui labels | [optional] 
 **signature_ui** | **String**| Filtering on id of signature ui resource | [optional] 

### Return type

[**Array&lt;SignatureUiLabelOutput&gt;**](SignatureUiLabelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_ui_labels_id_delete**
> signature_ui_labels_id_delete(id, authorization, opts)

Delete a Signature UI Label

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

opts = { 
  id2: '/signature_ui_labels/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | Id of signature ui label
}

begin
  #Delete a Signature UI Label
  api_instance.signature_ui_labels_id_delete(id, authorization, opts)
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_ui_labels_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **id2** | **String**| Id of signature ui label | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_ui_labels_id_get**
> SignatureUiLabelOutput signature_ui_labels_id_get(id, authorization, opts)

Find a Signature UI Label by ID

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

opts = { 
  id2: '/signature_ui_labels/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | id of signature ui label
}

begin
  #Find a Signature UI Label by ID
  result = api_instance.signature_ui_labels_id_get(id, authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_ui_labels_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **id2** | **String**| id of signature ui label | [optional] 

### Return type

[**SignatureUiLabelOutput**](SignatureUiLabelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_ui_labels_id_put**
> SignatureUiLabelOutput signature_ui_labels_id_put(id, authorization, content_type, body, opts)

Update a Signature UI Label

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::SignatureUiLabelInput.new # SignatureUiLabelInput | 

opts = { 
  id2: '/signature_ui_labels/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | Id of signature ui labels
}

begin
  #Update a Signature UI Label
  result = api_instance.signature_ui_labels_id_put(id, authorization, content_type, body, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_ui_labels_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**SignatureUiLabelInput**](SignatureUiLabelInput.md)|  | 
 **id2** | **String**| Id of signature ui labels | [optional] 

### Return type

[**SignatureUiLabelOutput**](SignatureUiLabelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **signature_ui_labels_post**
> SignatureUiLabelOutput signature_ui_labels_post(authorization, content_type, body)

Create a new Signature UI Label

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::SignatureUiLabelInput.new # SignatureUiLabelInput | 


begin
  #Create a new Signature UI Label
  result = api_instance.signature_ui_labels_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_ui_labels_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**SignatureUiLabelInput**](SignatureUiLabelInput.md)|  | 

### Return type

[**SignatureUiLabelOutput**](SignatureUiLabelOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **signature_uis_get**
> Array&lt;SignatureUiOutput&gt; signature_uis_get(authorization)

Get Signature UI list

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Get Signature UI list
  result = api_instance.signature_uis_get(authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_uis_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**Array&lt;SignatureUiOutput&gt;**](SignatureUiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_uis_id_delete**
> signature_uis_id_delete(id, authorization, content_type, opts)

Delete a Signature UI

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

opts = { 
  id2: '/signature_uis/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | Id of the signature ui
}

begin
  #Delete a Signature UI
  api_instance.signature_uis_id_delete(id, authorization, content_type, opts)
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_uis_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **id2** | **String**| Id of the signature ui | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_uis_id_get**
> SignatureUiOutput signature_uis_id_get(id, authorization, content_type, opts)

Find a Signature UI by ID

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

opts = { 
  id2: '/signature_uis/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | id of a signature ui
}

begin
  #Find a Signature UI by ID
  result = api_instance.signature_uis_id_get(id, authorization, content_type, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_uis_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **id2** | **String**| id of a signature ui | [optional] 

### Return type

[**SignatureUiOutput**](SignatureUiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_uis_id_put**
> SignatureUiInputUpdate signature_uis_id_put(id, authorization, content_type, opts)

Update a Signature UI

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

opts = { 
  id2: '/signature_uis/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' # String | id of signature ui to update
}

begin
  #Update a Signature UI
  result = api_instance.signature_uis_id_put(id, authorization, content_type, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_uis_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **id2** | **String**| id of signature ui to update | [optional] 

### Return type

[**SignatureUiInputUpdate**](SignatureUiInputUpdate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signature_uis_post**
> SignatureUiOutput signature_uis_post(authorization, content_type, body)

Create a new Signature UI

Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members=~2Fmembers~2F__MEMBER_ID__&signatureUi=~2Fsignature_uis~2F__SIGNATURE_UI_ID__

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::SignatureUIsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::SignatureUiInput.new # SignatureUiInput | 


begin
  #Create a new Signature UI
  result = api_instance.signature_uis_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureUIsApi->signature_uis_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**SignatureUiInput**](SignatureUiInput.md)|  | 

### Return type

[**SignatureUiOutput**](SignatureUiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



