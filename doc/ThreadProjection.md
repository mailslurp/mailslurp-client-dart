# mailslurp.model.ThreadProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of thread | [optional] 
**id** | **String** | ID of email thread | 
**inboxId** | **String** | Inbox ID | 
**userId** | **String** | User ID | 
**subject** | **String** | Thread subject | [optional] 
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 
**to** | **List<String>** | To recipients | [default to const []]
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**aliasId** | **String** | Alias ID | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


