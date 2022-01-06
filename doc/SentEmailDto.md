# mailslurp.model.SentEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of sent email | [optional] 
**userId** | **String** | User ID | [optional] 
**inboxId** | **String** | Inbox ID email was sent from | [optional] 
**to** | **List<String>** | Recipients email was sent to | [optional] [default to const []]
**from** | **String** |  | [optional] 
**replyTo** | **String** |  | [optional] 
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**attachments** | **List<String>** | Array of IDs of attachments that were sent with this email | [optional] [default to const []]
**subject** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**body** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**sentAt** | [**DateTime**](DateTime) |  | [optional] 
**pixelIds** | **List<String>** |  | [optional] [default to const []]
**html** | **bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


