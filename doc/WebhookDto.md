# mailslurp.model.WebhookDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the Webhook | 
**userId** | **String** | User ID of the Webhook | 
**basicAuth** | **bool** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | 
**name** | **String** | Name of the webhook | [optional] 
**phoneId** | **String** | The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set | [optional] 
**inboxId** | **String** | The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set | [optional] 
**requestBodyTemplate** | **String** | Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload. | [optional] 
**url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | 
**method** | **String** | HTTP method that your server endpoint must listen for | 
**payloadJsonSchema** | **String** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | 
**createdAt** | [**DateTime**](DateTime) | When the webhook was created | 
**updatedAt** | [**DateTime**](DateTime) |  | 
**eventName** | **String** | Webhook trigger event name | [optional] 
**requestHeaders** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 
**aiTransformId** | **String** | ID of AI transformer for payload | [optional] 
**ignoreInsecureSslCertificates** | **bool** | Should notifier ignore insecure SSL certificates | [optional] 
**useStaticIpRange** | **bool** | Should notifier use static IP range when sending webhook payload | [optional] 
**healthStatus** | **String** | Webhook health | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


