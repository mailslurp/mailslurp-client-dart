# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**subject** | **String** |  | [optional] 
**userId** | **String** |  | 
**attachments** | **List<String>** |  | [optional] [default to const []]
**inboxId** | **String** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**to** | **List<String>** |  | [optional] [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**virtualSend** | **bool** |  | 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**bodyMD5Hash** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


