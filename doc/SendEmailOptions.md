# mailslurp.model.SendEmailOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List<String>** | Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. | [optional] [default to const []]
**bcc** | **List<String>** | Optional list of bcc destination email addresses | [optional] [default to const []]
**body** | **String** | Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body. | [optional] 
**cc** | **List<String>** | Optional list of cc destination email addresses | [optional] [default to const []]
**charset** | **String** | Optional charset | [optional] 
**from** | **String** | Optional from address. If not set the source inbox address will be used for this field. Beware of potential spam penalties when setting this field to an address not used by the inbox. For custom email addresses use a custom domain. | [optional] 
**isHTML** | **bool** | Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients | [optional] 
**replyTo** | **String** | Optional replyTo header | [optional] 
**sendStrategy** | **String** | Optional strategy to use when sending the email | [optional] 
**subject** | **String** | Optional email subject line | [optional] 
**template** | **String** | Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard. | [optional] 
**templateVariables** | [**Object**]() | Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found. | [optional] 
**to** | **List<String>** | List of destination email addresses. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). | [optional] [default to const []]
**toContacts** | **List<String>** | Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients. | [optional] [default to const []]
**toGroup** | **String** | Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


