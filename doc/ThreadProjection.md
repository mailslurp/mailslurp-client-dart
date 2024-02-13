# mailslurp.model.ThreadProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID | 
**to** | **List<String>** | To recipients | [default to const []]
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**aliasId** | **String** | Alias ID | 
**subject** | **String** | Thread subject | [optional] 
**name** | **String** | Name of thread | [optional] 
**id** | **String** | ID of email thread | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


