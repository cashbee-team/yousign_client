# YousignClient::SignatureUiInputUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Resource&#39;s name | 
**description** | **String** | Signature UI&#39;s description | [optional] 
**enable_header_bar** | **Boolean** | Toggle header bar of the app view | [optional] [default to true]
**enable_header_bar_sign_as** | **Boolean** | Toggle \&quot;Sign as\&quot; band on the top of the app view | [optional] [default to true]
**enable_sidebar** | **Boolean** | Toggle sidebar of the app view | [optional] [default to true]
**enable_member_list** | **Boolean** | Toggle list of members in the procedure | [optional] [default to true]
**enable_document_list** | **Boolean** | Toggle list of documents in the procedure | [optional] [default to true]
**enable_document_download** | **Boolean** | Toggle downloads buttons for documents | [optional] [default to true]
**enable_activities** | **Boolean** | Toggle activity feed | [optional] [default to true]
**authentication_popup** | **Boolean** | True for use a popup for enter the SMS code, false for use a fullscreen view. | [optional] [default to false]
**default_zoom** | **Float** | Default zoom of the pdf viewer. Default is the adapted to the resolution of your screen. | [optional] 
**logo** | **String** | Base64 of your logo | [optional] 
**sign_image_types_available** | **Array&lt;String&gt;** | Allow sign images types available for signature. | [optional] 
**default_language** | **String** | Default language of the view. Must be in \&quot;languages\&quot; field. | [optional] 
**languages** | **Array&lt;String&gt;** | Array of allowed languages, use country code | [optional] 
**fonts** | **Array&lt;String&gt;** | List of fonts to load on the view. (Loaded via google fonts) | [optional] 
**style** | **String** | CSS for customize the view | [optional] 
**redirect_cancel** | [**SignatureUiOutputRedirectCancel**](SignatureUiOutputRedirectCancel.md) |  | [optional] 
**redirect_error** | [**SignatureUiOutputRedirectError**](SignatureUiOutputRedirectError.md) |  | [optional] 
**redirect_success** | [**SignatureUiOutputRedirectSuccess**](SignatureUiOutputRedirectSuccess.md) |  | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiInputUpdate.new(name: null,
                                 description: null,
                                 enable_header_bar: null,
                                 enable_header_bar_sign_as: null,
                                 enable_sidebar: null,
                                 enable_member_list: null,
                                 enable_document_list: null,
                                 enable_document_download: null,
                                 enable_activities: null,
                                 authentication_popup: null,
                                 default_zoom: null,
                                 logo: null,
                                 sign_image_types_available: null,
                                 default_language: null,
                                 languages: null,
                                 fonts: Roboto,
                                 style: null,
                                 redirect_cancel: null,
                                 redirect_error: null,
                                 redirect_success: null)
```


