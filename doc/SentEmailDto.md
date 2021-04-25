# mailslurp.model.SentEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List<String>** | Array of IDs of attachments that were sent with this email | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**body** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**cc** | **List<String>** |  | [optional] [default to const []]
**charset** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**id** | **String** | ID of sent email | [optional] 
**inboxId** | **String** | Inbox ID email was sent from | [optional] 
**isHTML** | **bool** |  | [optional] 
**replyTo** | **String** |  | [optional] 
**sentAt** | [**DateTime**](DateTime) |  | 
**subject** | **String** |  | [optional] 
**to** | **List<String>** | Recipients email was sent to | [optional] [default to const []]
**userId** | **String** | User ID | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


