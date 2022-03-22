# mailslurp.model.CreateContactOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**emailAddresses** | **List<String>** | Set of email addresses belonging to the contact | [optional] [default to const []]
**tags** | **List<String>** | Tags that can be used to search and group contacts | [optional] [default to const []]
**metaData** | [**Object**]() |  | [optional] 
**optOut** | **bool** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**groupId** | **String** | Group IDs that contact belongs to | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


