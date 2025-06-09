# mailslurp.model.EmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
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
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**from** | **String** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


