# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**userId** | **String** |  | 
**attachments** | **List<String>** |  | [optional] [default to const []]
**inboxId** | **String** |  | 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [default to const []]
**bcc** | **List<String>** |  | [default to const []]
**messageId** | **String** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**bodyMD5Hash** | **String** |  | [optional] 
**virtualSend** | **bool** |  | 
**threadId** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


