# mailslurp.model.CreateWebhookOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basicAuth** | [**BasicAuthOptions**](BasicAuthOptions.md) |  | [optional] [default to null]
**name** | **String** | Optional name for the webhook | [optional] [default to null]
**url** | **String** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


