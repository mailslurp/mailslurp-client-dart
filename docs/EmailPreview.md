# mailslurp.model.EmailPreview

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List&lt;String&gt;** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] [default to []]
**bcc** | **List&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] [default to []]
**cc** | **List&lt;String&gt;** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] [default to []]
**createdAt** | [**DateTime**](DateTime.md) | When was the email received by MailSlurp | [optional] [default to null]
**from** | **String** | Who the email was sent from | [optional] [default to null]
**id** | **String** | ID of the email | [optional] [default to null]
**read** | **bool** | Has the email been viewed ever | [optional] [default to null]
**subject** | **String** | The subject line of the email message | [optional] [default to null]
**to** | **List&lt;String&gt;** | List of &#x60;To&#x60; recipients email was addressed to | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


