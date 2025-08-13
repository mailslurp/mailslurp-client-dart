# mailslurp.model.WebhookNewAITransformResultPayload

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
**aiTransformResultId** | **String** | AI Transform ID of event | 
**userId** | **String** | User ID of event | 
**aiTransformId** | **String** | ID of AI Transform | 
**aiTransformMappingId** | **String** | ID of AI Transform mapping | [optional] 
**entityId** | **String** | ID of entity that triggered the transformation | [optional] 
**entityType** | **String** | Entity type that triggered the transformation | [optional] 
**result** | **String** | JSON string result of the AI transformation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


