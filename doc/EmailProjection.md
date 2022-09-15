# mailslurp.model.EmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inboxId** | **String** |  | 
**attachments** | **List<String>** |  | [optional] [default to const []]
**to** | **List<String>** |  | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**bcc** | **List<String>** |  | [optional] [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**domainId** | **String** |  | [optional] 
**read** | **bool** |  | 
**teamAccess** | **bool** |  | 
**bodyMD5Hash** | **String** |  | [optional] 
**bodyExcerpt** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


