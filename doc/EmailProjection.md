# mailslurp.model.EmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**attachments** | **List<String>** |  | [optional] [default to const []]
**inboxId** | **String** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** |  | [optional] 
**domainId** | **String** |  | [optional] 
**favourite** | **bool** |  | [optional] 
**plusAddress** | **String** |  | [optional] 
**sizeBytes** | **int** |  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**read** | **bool** |  | 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**bodyPartContentTypes** | **List<String>** |  | [optional] [default to const []]
**bodyMD5Hash** | **String** |  | [optional] 
**teamAccess** | **bool** |  | 
**subject** | **String** |  | [optional] 
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**from** | **String** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


