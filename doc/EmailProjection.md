# mailslurp.model.EmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**from** | **String** |  | 
**subject** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**inboxId** | **String** |  | 
**attachments** | **List<String>** |  | [optional] [default to const []]
**sizeBytes** | **int** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**favourite** | **bool** |  | [optional] 
**domainId** | **String** |  | [optional] 
**plusAddress** | **String** |  | [optional] 
**imapUid** | **int** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**read** | **bool** |  | 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**bodyPartContentTypes** | **List<String>** |  | [optional] [default to const []]
**bodyMD5Hash** | **String** |  | [optional] 
**teamAccess** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


