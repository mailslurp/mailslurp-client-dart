# mailslurp.model.EmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** |  | [optional] 
**from** | **String** |  | 
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**inboxId** | **String** |  | 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**attachments** | **List<String>** |  | [optional] [default to const []]
**read** | **bool** |  | 
**textExcerpt** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 
**to** | **List<String>** |  | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**favourite** | **bool** |  | [optional] 
**sizeBytes** | **int** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**domainId** | **String** |  | [optional] 
**bodyPartContentTypes** | **List<String>** |  | [optional] [default to const []]
**bodyMD5Hash** | **String** |  | [optional] 
**plusAddress** | **String** |  | [optional] 
**imapUid** | **int** |  | [optional] 
**teamAccess** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


