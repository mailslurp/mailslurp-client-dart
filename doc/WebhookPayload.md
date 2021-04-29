# mailslurp.model.WebhookPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachmentMetaDatas** | [**List<AttachmentMetaData>**](AttachmentMetaData) | List of attachment meta data objects if attachments present | [optional] [default to const []]
**bcc** | **List<String>** | List of `BCC` recipients email was addressed to | [optional] [default to const []]
**cc** | **List<String>** | List of `CC` recipients email was addressed to | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | [optional] 
**emailId** | **String** | ID of the email that was received. Use this ID for fetching the email | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**inboxId** | **String** | Id of the inbox that receive an email | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **List<String>** | List of `To` recipients email was addressed to | [optional] [default to const []]
**webhookId** | **String** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


