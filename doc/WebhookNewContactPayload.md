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
**contactId** | **String** | Contact ID | 
**groupId** | **String** | Contact group ID | [optional] 
**firstName** | **String** | Contact first name | [optional] 
**lastName** | **String** | Contact last name | [optional] 
**company** | **String** | Contact company name | [optional] 
**primaryEmailAddress** | **String** | Primary email address for contact | [optional] 
**emailAddresses** | **List<String>** | Email addresses for contact | [default to const []]
**tags** | **List<String>** | Tags for contact | [default to const []]
**metaData** | [**Object**]() |  | [optional] 
**optOut** | **bool** | Has contact opted out of emails | 
**createdAt** | [**DateTime**](DateTime) | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


