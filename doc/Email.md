# mailslurp.model.Email

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**EmailAnalysis**](EmailAnalysis) |  | [optional] [default to null]
**attachments** | **List&lt;String&gt;** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] [default to []]
**bcc** | **List&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] [default to []]
**body** | **String** | The body of the email message | [optional] [default to null]
**bodyMD5Hash** | **String** | A hash signature of the email message | [optional] [default to null]
**cc** | **List&lt;String&gt;** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] [default to []]
**charset** | **String** | Detected character set of the email body such as UTF-8 | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime) | When was the email received by MailSlurp | [optional] [default to null]
**from** | **String** | Who the email was sent from | [optional] [default to null]
**headers** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**id** | **String** | ID of the email | [optional] [default to null]
**inboxId** | **String** | ID of the inbox that received the email | [optional] [default to null]
**isHTML** | **bool** | Was HTML sent in the email body | [optional] [default to null]
**read** | **bool** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] [default to null]
**replyTo** | **String** | The replyTo field on the received email | [optional] [default to null]
**subject** | **String** | The subject line of the email message | [optional] [default to null]
**teamAccess** | **bool** | Can the email be accessed by organization team members | [optional] [default to null]
**to** | **List&lt;String&gt;** | List of &#x60;To&#x60; recipients email was addressed to | [optional] [default to []]
**updatedAt** | [**DateTime**](DateTime) | When was the email last updated | [optional] [default to null]
**userId** | **String** | ID of user that email belongs | [optional] [default to null]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


