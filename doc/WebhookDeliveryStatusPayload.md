# mailslurp.model.WebhookDeliveryStatusPayload

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
**id** | **String** | ID of delivery status | 
**userId** | **String** | User ID of event | 
**sentId** | **String** | ID of sent email | [optional] 
**remoteMtaIp** | **String** | IP address of the remote Mail Transfer Agent | [optional] 
**inboxId** | **String** | Id of the inbox | [optional] 
**reportingMta** | **String** | Mail Transfer Agent reporting delivery status | [optional] 
**recipients** | **List<String>** | Recipients for delivery | [optional] [default to const []]
**smtpResponse** | **String** | SMTP server response message | [optional] 
**smtpStatusCode** | **int** | SMTP server status | [optional] 
**processingTimeMillis** | **int** | Time in milliseconds for delivery processing | [optional] 
**received** | [**DateTime**](DateTime) | Time event was received | [optional] 
**subject** | **String** | Email subject | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


