# mailslurp.model.SentEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of sent email | 
**userId** | **String** | User ID | 
**inboxId** | **String** | Inbox ID email was sent from | 
**domainId** | **String** | Domain ID | [optional] 
**to** | **List<String>** | Recipients email was sent to | [optional] [default to const []]
**from** | **String** | Sent from address | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**replyTo** | **String** |  | [optional] 
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**attachments** | **List<String>** | Array of IDs of attachments that were sent with this email | [optional] [default to const []]
**subject** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**body** | **String** | Sent email body | [optional] 
**toContacts** | **List<String>** |  | [optional] [default to const []]
**toGroup** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**isHTML** | **bool** |  | [optional] 
**sentAt** | [**DateTime**](DateTime) |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**pixelIds** | **List<String>** |  | [optional] [default to const []]
**messageId** | **String** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**messageIds** | **List<String>** |  | [optional] [default to const []]
**virtualSend** | **bool** |  | [optional] 
**templateId** | **String** |  | [optional] 
**templateVariables** | [**Map<String, Object>**](Object) |  | [optional] [default to const {}]
**headers** | **Map<String, String>** |  | [optional] [default to const {}]
**threadId** | **String** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**bodyExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**textExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**inReplyTo** | **String** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**favourite** | **bool** | Is email favourited | [optional] 
**html** | **bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


