# mailslurp.model.SentEmailDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **List&lt;String&gt;** | Array of IDs of attachments that were sent with this email | [optional] [default to []]
**bcc** | **List&lt;String&gt;** |  | [optional] [default to []]
**body** | **String** |  | [optional] [default to null]
**bodyMD5Hash** | **String** | MD5 Hash | [optional] [default to null]
**cc** | **List&lt;String&gt;** |  | [optional] [default to []]
**charset** | **String** |  | [optional] [default to null]
**from** | **String** |  | [optional] [default to null]
**id** | **String** | ID of sent email | [optional] [default to null]
**inboxId** | **String** | Inbox ID email was sent from | [optional] [default to null]
**isHTML** | **bool** |  | [optional] [default to null]
**replyTo** | **String** |  | [optional] [default to null]
**sentAt** | [**DateTime**](DateTime) |  | [default to null]
**subject** | **String** |  | [optional] [default to null]
**to** | **List&lt;String&gt;** | Recipients email was sent to | [optional] [default to []]
**userId** | **String** | User ID | [optional] [default to null]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


