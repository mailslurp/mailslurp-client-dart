# mailslurp.model.WebhookNewAttachmentPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **String** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**attachmentId** | **String** | ID of attachment. Use the `AttachmentController` to | [optional] 
**name** | **String** | Filename of the attachment if present | [optional] 
**contentType** | **String** | Content type of attachment such as 'image/png' or 'application/pdf | [optional] 
**contentLength** | **int** | Size of attachment in bytes | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


