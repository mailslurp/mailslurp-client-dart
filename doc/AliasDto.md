# mailslurp.model.AliasDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**emailAddress** | **String** | The alias's email address for receiving email | [optional] 
**maskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**userId** | **String** |  | [optional] 
**inboxId** | **String** | Inbox that is associated with the alias | [optional] 
**name** | **String** |  | [optional] 
**useThreads** | **bool** | If alias will generate response threads or not when email are received by it | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime) |  | [optional] 
**verified** | **bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


