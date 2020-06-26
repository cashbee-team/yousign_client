# YousignClient::CheckDocumentsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_document_bank_accounts_id_get**](CheckDocumentsApi.md#check_document_bank_accounts_id_get) | **GET** /check-document/bank_accounts/{id} | Get informations about a bank document (RIB)
[**check_document_bank_accounts_post**](CheckDocumentsApi.md#check_document_bank_accounts_post) | **POST** /check-document/bank_accounts | Verify a bank document (RIB)
[**check_document_identities_id_get**](CheckDocumentsApi.md#check_document_identities_id_get) | **GET** /check-document/identities/{id} | Get informations about an identity document (passport, id cards)
[**check_document_identities_post**](CheckDocumentsApi.md#check_document_identities_post) | **POST** /check-document/identities | Verify an identity document (passport, id cards)


# **check_document_bank_accounts_id_get**
> CheckDocumentBankAccountsOutput check_document_bank_accounts_id_get(id, authorization)

Get informations about a bank document (RIB)

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::CheckDocumentsApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Get informations about a bank document (RIB)
  result = api_instance.check_document_bank_accounts_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_bank_accounts_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**CheckDocumentBankAccountsOutput**](CheckDocumentBankAccountsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_document_bank_accounts_post**
> CheckDocumentBankAccountsOutput check_document_bank_accounts_post(authorization, content_type, body)

Verify a bank document (RIB)

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::CheckDocumentsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::CheckDocumentBankAccountsInput.new # CheckDocumentBankAccountsInput | 


begin
  #Verify a bank document (RIB)
  result = api_instance.check_document_bank_accounts_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_bank_accounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**CheckDocumentBankAccountsInput**](CheckDocumentBankAccountsInput.md)|  | 

### Return type

[**CheckDocumentBankAccountsOutput**](CheckDocumentBankAccountsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **check_document_identities_id_get**
> CheckDocumentIdentitiesOutput check_document_identities_id_get(id, authorization)

Get informations about an identity document (passport, id cards)

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::CheckDocumentsApi.new

id = 'id_example' # String | 

authorization = 'authorization_example' # String | Authentication credentials for HTTP authentication


begin
  #Get informations about an identity document (passport, id cards)
  result = api_instance.check_document_identities_id_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_identities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 

### Return type

[**CheckDocumentIdentitiesOutput**](CheckDocumentIdentitiesOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_document_identities_post**
> CheckDocumentIdentitiesOutput check_document_identities_post(authorization, content_type, body)

Verify an identity document (passport, id cards)

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::CheckDocumentsApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::CheckDocumentIdentitiesInput.new # CheckDocumentIdentitiesInput | 


begin
  #Verify an identity document (passport, id cards)
  result = api_instance.check_document_identities_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_identities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**CheckDocumentIdentitiesInput**](CheckDocumentIdentitiesInput.md)|  | 

### Return type

[**CheckDocumentIdentitiesOutput**](CheckDocumentIdentitiesOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



