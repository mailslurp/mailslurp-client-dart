# mailslurp.model.EmailThreadProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **String** | Thread topic subject | [optional] 
**from** | **String** | From sender | [optional] 
**id** | **String** | ID of email thread | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID | [optional] 
**recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**to** | **List<String>** | To recipients | [default to const []]
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 
**sender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**lastCreatedAt** | [**DateTime**](DateTime) | Last email created time | [optional] 
**hasAttachments** | **bool** | Has attachments | 
**lastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**lastFrom** | **String** | Last sender | [optional] 
**unread** | **bool** | Has unread | 
**messageCount** | **int** | Number of messages in the thread | 
**lastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**lastTextExcerpt** | **String** | Last text excerpt | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


