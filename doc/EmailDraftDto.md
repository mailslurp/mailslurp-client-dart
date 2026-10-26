# mailslurp.model.EmailDraftDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the draft | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID the draft will send from | 
**to** | **List<String>** | Draft recipients | [optional] [default to const []]
**cc** | **List<String>** | Draft CC recipients | [optional] [default to const []]
**bcc** | **List<String>** | Draft BCC recipients | [optional] [default to const []]
**from** | **String** | Draft sender | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**subject** | **String** | Draft subject | [optional] 
**bodyExcerpt** | **String** | Draft body preview | [optional] 
**textExcerpt** | **String** | Draft text preview | [optional] 
**attachments** | **List<String>** | Attachment IDs selected for the draft | [optional] [default to const []]
**sendOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 
**createdAt** | [**DateTime**](DateTime) | Draft creation time | 
**updatedAt** | [**DateTime**](DateTime) | Draft last update time | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


