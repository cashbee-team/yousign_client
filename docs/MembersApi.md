# YousignClient::MembersApi

All URIs are relative to *https://api.yousign.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**members_get**](MembersApi.md#members_get) | **GET** /members | Get all Members
[**members_id_delete**](MembersApi.md#members_id_delete) | **DELETE** /members/{id} | Delete a Member
[**members_id_proof_get**](MembersApi.md#members_id_proof_get) | **GET** /members/{id}/proof | Get a proof file of a Member
[**members_id_put**](MembersApi.md#members_id_put) | **PUT** /members/{id} | Edit a Member
[**members_post**](MembersApi.md#members_post) | **POST** /members | Create a new Member


# **members_get**
> Array&lt;MemberOutput&gt; members_get(authorization, opts)

Get all Members

Returns the list of Members of a organization. It only usefull if you use the query params named \"procedure\" for retrieve all members of a procedure.

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::MembersApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

opts = { 
  procedure: 'Id for filter about a procedure' # String | 
}

begin
  #Get all Members
  result = api_instance.members_get(authorization, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling MembersApi->members_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **procedure** | **String**|  | [optional] 

### Return type

[**Array&lt;MemberOutput&gt;**](MemberOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **members_id_delete**
> members_id_delete(id, authorization)

Delete a Member

Delete a member

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::MembersApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Delete a Member
  api_instance.members_id_delete(id, authorization)
rescue YousignClient::ApiError => e
  puts "Exception when calling MembersApi->members_id_delete: #{e}"
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **members_id_proof_get**
> String members_id_proof_get(id, authorization)

Get a proof file of a Member

Get a proof file of a member

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::MembersApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication


begin
  #Get a proof file of a Member
  result = api_instance.members_id_proof_get(id, authorization)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling MembersApi->members_id_proof_get: #{e}"
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **members_id_put**
> MemberOutput members_id_put(id, authorization, content_type, body)

Edit a Member

Edit a member

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::MembersApi.new

id = 'id_example' # String | 

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::MemberInput.new # MemberInput | 


begin
  #Edit a Member
  result = api_instance.members_id_put(id, authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling MembersApi->members_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**MemberInput**](MemberInput.md)|  | 

### Return type

[**MemberOutput**](MemberOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **members_post**
> MemberOutput members_post(authorization, content_type, body)

Create a new Member

Create a new member

### Example
```ruby
# load the gem
require 'yousign_client'

api_instance = YousignClient::MembersApi.new

authorization = 'Bearer {{access_token}}' # String | Authentication credentials for HTTP authentication

content_type = 'application/json' # String | The MIME type of the body of the request

body = YousignClient::MemberInput.new # MemberInput | 


begin
  #Create a new Member
  result = api_instance.members_post(authorization, content_type, body)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling MembersApi->members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication credentials for HTTP authentication | 
 **content_type** | **String**| The MIME type of the body of the request | 
 **body** | [**MemberInput**](MemberInput.md)|  | 

### Return type

[**MemberOutput**](MemberOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



