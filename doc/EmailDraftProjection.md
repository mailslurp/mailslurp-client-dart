# mailslurp.model.EmailDraftProjection

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
**updatedAt** | [**DateTime**](DateTime) |  | 
**sender** | [**Sender**](Sender) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


