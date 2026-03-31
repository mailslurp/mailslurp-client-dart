# mailslurp.model.WebhookEmailReadPayload

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
**emailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the `EmailController`. | 
**inboxId** | **String** | Id of the inbox | 
**emailIsRead** | **bool** | Is the email read | 
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


