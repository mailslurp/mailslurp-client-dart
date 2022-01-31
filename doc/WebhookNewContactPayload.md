# mailslurp.model.WebhookNewContactPayload

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **String** | ID of webhook entity being triggered | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**contactId** | **String** |  | 
**groupId** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**primaryEmailAddress** | **String** |  | [optional] 
**emailAddresses** | **List<String>** |  | [default to const []]
**tags** | **List<String>** |  | [default to const []]
**metaData** | [**Object**]() |  | [optional] 
**optOut** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


