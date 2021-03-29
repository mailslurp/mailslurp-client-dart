# mailslurp.model.AliasDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**emailAddress** | **String** | The alias&#39;s email address for receiving email | [optional] [default to null]
**id** | **String** |  | [default to null]
**inboxId** | **String** | Inbox that is associated with the alias | [optional] [default to null]
**isVerified** | **bool** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | [optional] [default to null]
**maskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**useThreads** | **bool** | If alias will generate response threads or not when email are received by it | [optional] [default to null]
**userId** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


