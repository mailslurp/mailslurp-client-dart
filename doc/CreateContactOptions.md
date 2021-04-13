# mailslurp.model.CreateContactOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emailAddresses** | **List&lt;String&gt;** | Set of email addresses belonging to the contact | [optional] [default to []]
**firstName** | **String** |  | [optional] [default to null]
**groupId** | **String** | Group IDs that contact belongs to | [optional] [default to null]
**metaData** | [**Object**]() |  | [optional] [default to null]
**optOut** | **bool** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Tags that can be used to search and group contacts | [optional] [default to []]
**lastName** | **String** |  | [optional] [default to null]
**company** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


