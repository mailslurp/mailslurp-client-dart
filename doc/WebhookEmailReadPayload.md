# mailslurp.model.WebhookEmailReadPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | [optional] 
**emailId** | **String** | ID of the email that was received. Use this ID for fetching the email with the `EmailController`. | [optional] 
**emailIsRead** | **bool** | Is the email read | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**inboxId** | **String** | Id of the inbox that received an email | [optional] 
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **String** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


