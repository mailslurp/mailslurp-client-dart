# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**userId** | **String** |  | 
**inboxId** | **String** |  | 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**attachments** | **List<String>** |  | [optional] [default to const []]
**textExcerpt** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 
**to** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**bodyMD5Hash** | **String** |  | [optional] 
**virtualSend** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


