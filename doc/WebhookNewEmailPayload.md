# mailslurp.model.WebhookNewEmailPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **String** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**inboxId** | **String** | Id of the inbox | 
**domainId** | **String** | Id of the domain that received an email | [optional] 
**emailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the `EmailController`. | 
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | 
**to** | **List<String>** | List of `To` recipient email addresses that the email was addressed to. See recipients object for names. | [default to const []]
**from** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | 
**cc** | **List<String>** | List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. | [default to const []]
**bcc** | **List<String>** | List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. | [default to const []]
**subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**attachmentMetaDatas** | [**List<AttachmentMetaData>**](AttachmentMetaData) | List of attachment meta data objects if attachments present | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


