# mailslurp.model.WebhookEmailOpenedPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **String** | ID of webhook entity being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**inboxId** | **String** | Id of the inbox that received an email | [optional] 
**pixelId** | **String** | ID of the tracking pixel | [optional] 
**sentEmailId** | **String** | ID of sent email | [optional] 
**recipient** | **String** | Email address for the recipient of the tracking pixel | [optional] 
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


