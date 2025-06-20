# mailslurp.model.EmailThreadProjection

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**inboxId** | **String** | Inbox ID | [optional] 
**userId** | **String** | User ID | 
**updatedAt** | [**DateTime**](DateTime) | Updated at DateTime | 
**createdAt** | [**DateTime**](DateTime) | Created at DateTime | 
**to** | **List<String>** | To recipients | [default to const []]
**cc** | **List<String>** | CC recipients | [optional] [default to const []]
**bcc** | **List<String>** | BCC recipients | [optional] [default to const []]
**hasAttachments** | **bool** | Has attachments | 
**unread** | **bool** | Has unread | 
**messageCount** | **int** | Number of messages in the thread | 
**lastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**lastTextExcerpt** | **String** | Last text excerpt | [optional] 
**lastCreatedAt** | [**DateTime**](DateTime) | Last email created time | [optional] 
**lastFrom** | **String** | Last sender | [optional] 
**lastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**subject** | **String** | Thread topic subject | [optional] 
**id** | **String** | ID of email thread | 
**from** | **String** | From sender | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


