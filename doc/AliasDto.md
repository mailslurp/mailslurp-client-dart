# mailslurp.model.AliasDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**emailAddress** | **String** | The alias's email address for receiving email | 
**maskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**userId** | **String** |  | 
**inboxId** | **String** | Inbox that is associated with the alias | 
**name** | **String** |  | [optional] 
**useThreads** | **bool** | If alias will generate response threads or not when email are received by it | [optional] 
**isVerified** | **bool** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | 
**createdAt** | [**DateTime**](DateTime) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


