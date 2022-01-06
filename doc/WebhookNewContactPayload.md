# mailslurp.model.WebhookNewContactPayload

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
**contactId** | **String** |  | [optional] 
**groupId** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**primaryEmailAddress** | **String** |  | [optional] 
**emailAddresses** | **Set<String>** |  | [optional] [default to const {}]
**tags** | **Set<String>** |  | [optional] [default to const {}]
**metaData** | [**Object**]() |  | [optional] 
**optOut** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


