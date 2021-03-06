# YousignClient::CheckDocumentsApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_document_bank_accounts_id_get**](CheckDocumentsApi.md#check_document_bank_accounts_id_get) | **GET** /check-document/bank_accounts/{id} | Get informations about a bank document (RIB)
[**check_document_bank_accounts_post**](CheckDocumentsApi.md#check_document_bank_accounts_post) | **POST** /check-document/bank_accounts | Verify a bank document (RIB)
[**check_document_identities_id_get**](CheckDocumentsApi.md#check_document_identities_id_get) | **GET** /check-document/identities/{id} | Get informations about an identity document (passport, id cards)
[**check_document_identities_post**](CheckDocumentsApi.md#check_document_identities_post) | **POST** /check-document/identities | Verify an identity document (passport, id cards)


# **check_document_bank_accounts_id_get**
> CheckDocumentBankAccountsOutput check_document_bank_accounts_id_get(id)

Get informations about a bank document (RIB)

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

api_instance = YousignClient::CheckDocumentsApi.new

id = 'id_example' # String | 


begin
  #Get informations about a bank document (RIB)
  result = api_instance.check_document_bank_accounts_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_bank_accounts_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CheckDocumentBankAccountsOutput**](CheckDocumentBankAccountsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_document_bank_accounts_post**
> CheckDocumentBankAccountsOutput check_document_bank_accounts_post(body)

Verify a bank document (RIB)

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

api_instance = YousignClient::CheckDocumentsApi.new

body = YousignClient::CheckDocumentBankAccountsInput.new # CheckDocumentBankAccountsInput | 


begin
  #Verify a bank document (RIB)
  result = api_instance.check_document_bank_accounts_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_bank_accounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CheckDocumentBankAccountsInput**](CheckDocumentBankAccountsInput.md)|  | 

### Return type

[**CheckDocumentBankAccountsOutput**](CheckDocumentBankAccountsOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **check_document_identities_id_get**
> CheckDocumentIdentitiesOutput check_document_identities_id_get(id)

Get informations about an identity document (passport, id cards)

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

api_instance = YousignClient::CheckDocumentsApi.new

id = 'id_example' # String | 


begin
  #Get informations about an identity document (passport, id cards)
  result = api_instance.check_document_identities_id_get(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_identities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CheckDocumentIdentitiesOutput**](CheckDocumentIdentitiesOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_document_identities_post**
> CheckDocumentIdentitiesOutput check_document_identities_post(body)

Verify an identity document (passport, id cards)

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

api_instance = YousignClient::CheckDocumentsApi.new

body = YousignClient::CheckDocumentIdentitiesInput.new # CheckDocumentIdentitiesInput | 


begin
  #Verify an identity document (passport, id cards)
  result = api_instance.check_document_identities_post(body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CheckDocumentsApi->check_document_identities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CheckDocumentIdentitiesInput**](CheckDocumentIdentitiesInput.md)|  | 

### Return type

[**CheckDocumentIdentitiesOutput**](CheckDocumentIdentitiesOutput.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



