# mailslurp.model.SentEmailProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**bodyMD5Hash** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**attachments** | **List<String>** |  | [default to const []]
**inboxId** | **String** |  | 
**to** | **List<String>** |  | [default to const []]
**bcc** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [default to const []]
**createdAt** | [**DateTime**](DateTime) |  | 
**virtualSend** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


