# mailslurp.model.EmailThreadDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of email thread | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID | [optional] 
**from** | **String** | From sender | [optional] 
**to** | **List<String>** | To recipients | [default to const []]
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**subject** | **String** | Thread topic subject | [optional] 
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


