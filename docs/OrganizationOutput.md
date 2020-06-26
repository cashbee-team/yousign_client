# YousignClient::OrganizationOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Organization ID | [optional] 
**name** | **String** | Organization name | [optional] 
**url** | **String** | Custom URL for the Organization (internal usage only, should not be used) | [optional] 
**created_at** | **DateTime** | Created date of the object | [optional] 
**updated_at** | **DateTime** | Updated date of the object | [optional] 
**f_sso** | **Boolean** | Internal usage, should not be used | [optional] 
**max_users** | **Float** | Internal usage, should not be used | [optional] 
**procedure_related_files_enable** | **Boolean** | Defined if the organization anable the related files | [optional] 
**subscriptions** | **Array&lt;String&gt;** |  | [optional] 
**auto_collection** | **Boolean** | Internal usage, should not be used | [optional] 
**vat_number** | **String** | Internal usage, should not be used | [optional] 
**billing_address** | [**OrganizationBillingAddress**](OrganizationBillingAddress.md) |  | [optional] 
**in_app_support** | **Boolean** | Internal usage, should not be used | [optional] 
**in_app_updates** | **String** | Internal usage, should not be used | [optional] 
**file_template** | **Boolean** | Internal usage, should not be used | [optional] 
**f_archive** | **Boolean** | Internal usage, should not be used | [optional] 
**f_user_permissions** | **Boolean** | Internal usage, should not be used | [optional] 
**f_procedure_template** | **Boolean** | Internal usage, should not be used | [optional] 
**f_procedure_reminder_auto** | **Boolean** | Internal usage, should not be used | [optional] 
**f_api** | **Boolean** | Internal usage, should not be used | [optional] 
**f_checkdocument** | **Boolean** | Internal usage, should not be used | [optional] 
**f_procedure_create** | **Boolean** | Internal usage, should not be used | [optional] 
**f_signature_ui** | **Boolean** | Internal usage, should not be used | [optional] 
**f_server_stamp** | **Boolean** | Internal usage, should not be used | [optional] 
**f_operation_level_none** | **Boolean** | Internal usage, should not be used | [optional] 
**f_consent_process** | **Boolean** | Internal usage, should not be used | [optional] 
**f_operation_level_advanced** | **Boolean** | Internal usage, should not be used | [optional] 
**f_operation_custom_mode_email** | **Boolean** | Internal usage, should not be used | [optional] 
**f_dynamic_fields** | **Boolean** | Internal usage, should not be used | [optional] 
**saml_identity_provider** | **String** | Internal usage, should not be used | [optional] 
**password_policy_pattern** | **String** | Pattern of the password policy for the organization | [optional] 
**password_policy_description** | **String** | Description for the password policy | [optional] 
**user_activation** | **Boolean** | Internal usage, should not be used | [optional] 
**f_procedure_template_permissions** | **Boolean** | Internal usage, should not be used | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::OrganizationOutput.new(id: /organizations/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 name: null,
                                 url: null,
                                 created_at: null,
                                 updated_at: null,
                                 f_sso: null,
                                 max_users: null,
                                 procedure_related_files_enable: null,
                                 subscriptions: null,
                                 auto_collection: null,
                                 vat_number: null,
                                 billing_address: null,
                                 in_app_support: null,
                                 in_app_updates: null,
                                 file_template: null,
                                 f_archive: null,
                                 f_user_permissions: null,
                                 f_procedure_template: null,
                                 f_procedure_reminder_auto: null,
                                 f_api: null,
                                 f_checkdocument: null,
                                 f_procedure_create: null,
                                 f_signature_ui: null,
                                 f_server_stamp: null,
                                 f_operation_level_none: null,
                                 f_consent_process: null,
                                 f_operation_level_advanced: null,
                                 f_operation_custom_mode_email: null,
                                 f_dynamic_fields: null,
                                 saml_identity_provider: null,
                                 password_policy_pattern: null,
                                 password_policy_description: null,
                                 user_activation: null,
                                 f_procedure_template_permissions: null)
```


