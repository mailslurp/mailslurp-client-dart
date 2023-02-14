# mailslurp.model.MissedEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 
**attachmentCount** | **int** |  | 
**from** | **String** |  | [optional] 
**rawUrl** | **String** |  | [optional] 
**rawKey** | **String** |  | [optional] 
**rawBucket** | **String** |  | [optional] 
**canRestore** | **bool** |  | [optional] 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [default to const []]
**bcc** | **List<String>** |  | [default to const []]
**inboxIds** | **List<String>** |  | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


