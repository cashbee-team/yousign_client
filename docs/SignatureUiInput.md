# YousignClient::SignatureUiInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Signature UI&#39;s name | 
**description** | **String** | Signature UI&#39;s description | [optional] 
**enable_header_bar** | **BOOLEAN** | Toggle header bar of the app view | [optional] [default to true]
**enable_header_bar_sign_as** | **BOOLEAN** | Toggle \&quot;Sign as\&quot; band on the top of the app view | [optional] [default to true]
**enable_sidebar** | **BOOLEAN** | Toggle sidebar of the app view | [optional] [default to true]
**enable_member_list** | **BOOLEAN** | Toggle list of members in the procedure | [optional] [default to true]
**enable_document_list** | **BOOLEAN** | Toggle list of documents in the procedure | [optional] [default to true]
**enable_document_download** | **BOOLEAN** | Toggle downloads buttons for documents | [optional] [default to true]
**enable_activities** | **BOOLEAN** | Toggle activity feed | [optional] [default to true]
**authentication_popup** | **BOOLEAN** | True for use a popup to enter the SMS code, false for use a fullscreen view. | [optional] [default to false]
**default_zoom** | **Float** | Default value for zoom of the PDF viewer. Default value is the adapted to the resolution of your screen. | [optional] 
**logo** | **String** | Base64 of your logo | [optional] 
**sign_image_types_available** | **Array&lt;String&gt;** | Allow sign images types available for signature. The first type of the list will be selected as default for the signer. | [optional] 
**default_language** | **String** | Default selected language of the interface. Must be present in \&quot;languages\&quot; field. | [optional] 
**languages** | **Array&lt;String&gt;** | Array of allowed languages, use country code | [optional] 
**labels** | [**Array&lt;SignatureUiLabelInputIncluded&gt;**](SignatureUiLabelInputIncluded.md) |  | [optional] 
**fonts** | **Array&lt;String&gt;** | List of fonts to load on the view. (Loaded via Google fonts) | [optional] 
**style** | **String** | CSS for customize the view | [optional] 
**redirect_cancel** | [**SignatureUiInputRedirectCancel**](SignatureUiInputRedirectCancel.md) |  | [optional] 
**redirect_error** | [**SignatureUiInputRedirectError**](SignatureUiInputRedirectError.md) |  | [optional] 
**redirect_success** | [**SignatureUiInputRedirectSuccess**](SignatureUiInputRedirectSuccess.md) |  | [optional] 


