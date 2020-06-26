# YousignClient::SignatureUiOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Resource&#39;s ID | [optional] 
**name** | **String** | Resource&#39;s name | 
**description** | **String** |  | [optional] 
**enable_header_bar** | **Boolean** | Toggle header bar of the app view | [optional] [default to true]
**enable_header_bar_sign_as** | **Boolean** | Toggle \&quot;Sign as\&quot; band on the top of the app view | [optional] [default to true]
**enable_sidebar** | **Boolean** | Toggle sidebar of the app view | [optional] [default to true]
**enable_member_list** | **Boolean** | Toggle list of members in the procedure | [optional] [default to true]
**enable_document_list** | **Boolean** | Toggle list of documents in the procedure | [optional] [default to true]
**enable_document_download** | **Boolean** | Toggle downloads buttons for documents | [optional] [default to true]
**enable_activities** | **Boolean** | Toggle activity feed | [optional] [default to true]
**authentication_popup** | **Boolean** | True for use a popup for enter the SMS code, false for use a fullscreen view. | [optional] [default to false]
**default_zoom** | **Float** | Default value for zoom of the PDF viewer. Default value is the adapted to the resolution of your screen. | [optional] 
**logo** | **String** | Base64 of your logo | [optional] 
**sign_image_types_available** | **Array&lt;String&gt;** | Allow sign images types available for signature. | [optional] 
**default_language** | **String** | Default language of the view. Must be in \&quot;languages\&quot; field. | [optional] 
**languages** | **Array&lt;String&gt;** | Array of allowed languages, use country code | [optional] 
**labels** | [**Array&lt;SignatureUiLabelOutput&gt;**](SignatureUiLabelOutput.md) |  | [optional] 
**fonts** | **Array&lt;String&gt;** | List of fonts to load on the view. (Loaded via google fonts) | [optional] 
**style** | **String** | CSS for customize the view | [optional] 
**redirect_cancel** | [**SignatureUiOutputRedirectCancel**](SignatureUiOutputRedirectCancel.md) |  | [optional] 
**redirect_error** | [**SignatureUiOutputRedirectError**](SignatureUiOutputRedirectError.md) |  | [optional] 
**redirect_success** | [**SignatureUiOutputRedirectSuccess**](SignatureUiOutputRedirectSuccess.md) |  | [optional] 
**creator** | **String** | Creator&#39;s ID | [optional] 
**workspace** | **String** | Associated Workspace&#39;s ID | [optional] 
**created_at** | **DateTime** | Date of creation | [optional] 
**updated_at** | **DateTime** | Date of last update | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiOutput.new(id: null,
                                 name: null,
                                 description: null,
                                 enable_header_bar: true,
                                 enable_header_bar_sign_as: true,
                                 enable_sidebar: true,
                                 enable_member_list: true,
                                 enable_document_list: true,
                                 enable_document_download: true,
                                 enable_activities: true,
                                 authentication_popup: true,
                                 default_zoom: null,
                                 logo: data:image/png;base64,iVBORw[...],
                                 sign_image_types_available: null,
                                 default_language: null,
                                 languages: null,
                                 labels: null,
                                 fonts: Roboto,
                                 style: null,
                                 redirect_cancel: null,
                                 redirect_error: null,
                                 redirect_success: null,
                                 creator: null,
                                 workspace: null,
                                 created_at: null,
                                 updated_at: null)
```


