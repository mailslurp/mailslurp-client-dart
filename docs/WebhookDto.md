# mailslurp.model.WebhookDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basicAuth** | **bool** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) | When the webhook was created | [optional] [default to null]
**id** | **String** | ID of the Webhook | [optional] [default to null]
**inboxId** | **String** | The inbox that the Webhook will be triggered by | [optional] [default to null]
**method** | **String** | HTTP method that your server endpoint must listen for | [optional] [default to null]
**name** | **String** | Name of the webhook | [optional] [default to null]
**payloadJsonSchema** | **String** | JSON Schema for the payload that will be sent to your URL via the HTTP method described. | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


