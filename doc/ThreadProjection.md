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
**subject** | **String** | Thread subject | [optional] 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID | 
**to** | **List<String>** | To recipients | [default to const []]
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 
**aliasId** | **String** | Alias ID | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


