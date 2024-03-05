# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime) |  | 
**id** | **String** |  | 
**bodyMD5Hash** | **String** |  | [optional] 
**userId** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inboxId** | **String** |  | 
**attachments** | **List<String>** |  | [default to const []]
**to** | **List<String>** |  | [default to const []]
**bcc** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [default to const []]
**virtualSend** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


