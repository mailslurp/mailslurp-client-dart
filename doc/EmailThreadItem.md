# mailslurp.model.EmailThreadItem

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemType** | **String** |  | 
**entityId** | **String** |  | 
**bodyExcerpt** | **String** |  | [optional] 
**textExcerpt** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**to** | **List<String>** |  | [default to const []]
**from** | **String** |  | [optional] 
**bcc** | **List<String>** |  | [optional] [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**attachments** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**read** | **bool** |  | 
**inReplyTo** | **String** |  | [optional] 
**messageId** | **String** |  | [optional] 
**threadId** | **String** |  | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


