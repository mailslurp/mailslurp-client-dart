# mailslurp.model.SentEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of sent email | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID email was sent from | 
**domainId** | **String** | Domain ID | [optional] 
**to** | **List<String>** | Recipients email was sent to | [optional] [default to const []]
**from** | **String** | Sent from address | [optional] 
**replyTo** | **String** |  | [optional] 
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**attachments** | **List<String>** | Array of IDs of attachments that were sent with this email | [optional] [default to const []]
**subject** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**body** | **String** | Sent email body | [optional] 
**toContacts** | **List<String>** |  | [optional] [default to const []]
**toGroup** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**isHTML** | **bool** |  | [optional] 
**sentAt** | [**DateTime**](DateTime) |  | 
**pixelIds** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**messageIds** | **List<String>** |  | [optional] [default to const []]
**virtualSend** | **bool** |  | [optional] 
**templateId** | **String** |  | [optional] 
**templateVariables** | [**Map<String, Object>**](Object) |  | [optional] [default to const {}]
**headers** | **Map<String, String>** |  | [optional] [default to const {}]
**html** | **bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


