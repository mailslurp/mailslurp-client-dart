# mailslurp.model.WebhookNewContactPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** |  | [optional] 
**contactId** | **String** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**emailAddresses** | **List<String>** |  | [default to const []]
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**firstName** | **String** |  | [optional] 
**groupId** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**metaData** | [**Object**]() |  | [optional] 
**optOut** | **bool** |  | [optional] 
**primaryEmailAddress** | **String** |  | [optional] 
**tags** | **List<String>** |  | [default to const []]
**webhookId** | **String** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


