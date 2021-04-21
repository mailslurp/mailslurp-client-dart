# mailslurp.model.EmailPreview

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List<String>** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] [default to const []]
**bcc** | **List<String>** | List of `BCC` recipients email was addressed to | [optional] [default to const []]
**cc** | **List<String>** | List of `CC` recipients email was addressed to | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime) | When was the email received by MailSlurp | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**id** | **String** | ID of the email | [optional] 
**read** | **bool** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **List<String>** | List of `To` recipients email was addressed to | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


