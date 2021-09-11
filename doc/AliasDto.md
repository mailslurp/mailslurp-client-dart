# mailslurp.model.AliasDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime) |  | [optional] 
**emailAddress** | **String** | The alias's email address for receiving email | [optional] 
**id** | **String** |  | 
**inboxId** | **String** | Inbox that is associated with the alias | [optional] 
**isVerified** | **bool** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | [optional] 
**maskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**name** | **String** |  | [optional] 
**updatedAt** | [**DateTime**](DateTime) |  | [optional] 
**useThreads** | **bool** | If alias will generate response threads or not when email are received by it | [optional] 
**userId** | **String** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


