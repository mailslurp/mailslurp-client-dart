# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** |  | [optional] 
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**attachments** | **List<String>** |  | [optional] [default to const []]
**inboxId** | **String** |  | 
**userId** | **String** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [default to const []]
**bcc** | **List<String>** |  | [default to const []]
**messageId** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**bodyMD5Hash** | **String** |  | [optional] 
**virtualSend** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


