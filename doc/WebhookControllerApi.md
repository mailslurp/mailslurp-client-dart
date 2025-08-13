# mailslurp.api.WebhookControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountWebhook**](WebhookControllerApi#createaccountwebhook) | **POST** /webhooks | Attach a WebHook URL to an inbox
[**createWebhook**](WebhookControllerApi#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**createWebhookForAITransformer**](WebhookControllerApi#createwebhookforaitransformer) | **POST** /ai-transformers/{transformerId}/webhooks | Attach a WebHook URL to an AI transformer
[**createWebhookForPhoneNumber**](WebhookControllerApi#createwebhookforphonenumber) | **POST** /phone/numbers/{phoneNumberId}/webhooks | Attach a WebHook URL to a phone number
[**deleteAllWebhooks**](WebhookControllerApi#deleteallwebhooks) | **DELETE** /webhooks | Delete all webhooks
[**deleteWebhook**](WebhookControllerApi#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**deleteWebhookById**](WebhookControllerApi#deletewebhookbyid) | **DELETE** /webhooks/{webhookId} | Delete a webhook
[**getAllAccountWebhooks**](WebhookControllerApi#getallaccountwebhooks) | **GET** /webhooks/account/paginated | List account webhooks Paginated
[**getAllWebhookEndpoints**](WebhookControllerApi#getallwebhookendpoints) | **GET** /webhooks/endpoints | List Webhooks endpoints Paginated
[**getAllWebhookResults**](WebhookControllerApi#getallwebhookresults) | **GET** /webhooks/results | Get results for all webhooks
[**getAllWebhooks**](WebhookControllerApi#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getInboxWebhooksPaginated**](WebhookControllerApi#getinboxwebhookspaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**getJsonSchemaForWebhookEvent**](WebhookControllerApi#getjsonschemaforwebhookevent) | **POST** /webhooks/schema | 
[**getJsonSchemaForWebhookPayload**](WebhookControllerApi#getjsonschemaforwebhookpayload) | **POST** /webhooks/{webhookId}/schema | 
[**getPhoneNumberWebhooksPaginated**](WebhookControllerApi#getphonenumberwebhookspaginated) | **GET** /phone/numbers/{phoneId}/webhooks/paginated | Get paginated webhooks for a phone number
[**getTestWebhookPayload**](WebhookControllerApi#gettestwebhookpayload) | **GET** /webhooks/test | 
[**getTestWebhookPayloadBounce**](WebhookControllerApi#gettestwebhookpayloadbounce) | **GET** /webhooks/test/email-bounce-payload | 
[**getTestWebhookPayloadBounceRecipient**](WebhookControllerApi#gettestwebhookpayloadbouncerecipient) | **GET** /webhooks/test/email-bounce-recipient-payload | 
[**getTestWebhookPayloadDeliveryStatus**](WebhookControllerApi#gettestwebhookpayloaddeliverystatus) | **GET** /webhooks/test/delivery-status-payload | Get webhook test payload for delivery status event
[**getTestWebhookPayloadEmailOpened**](WebhookControllerApi#gettestwebhookpayloademailopened) | **GET** /webhooks/test/email-opened-payload | 
[**getTestWebhookPayloadEmailRead**](WebhookControllerApi#gettestwebhookpayloademailread) | **GET** /webhooks/test/email-read-payload | 
[**getTestWebhookPayloadForWebhook**](WebhookControllerApi#gettestwebhookpayloadforwebhook) | **POST** /webhooks/{webhookId}/example | 
[**getTestWebhookPayloadNewAITransformResult**](WebhookControllerApi#gettestwebhookpayloadnewaitransformresult) | **GET** /webhooks/test/new-ai-transform-result-payload | Get webhook test payload for new ai transform result event
[**getTestWebhookPayloadNewAttachment**](WebhookControllerApi#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](WebhookControllerApi#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](WebhookControllerApi#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getTestWebhookPayloadNewSms**](WebhookControllerApi#gettestwebhookpayloadnewsms) | **GET** /webhooks/test/new-sms-payload | Get webhook test payload for new sms event
[**getWebhook**](WebhookControllerApi#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook
[**getWebhookResult**](WebhookControllerApi#getwebhookresult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**getWebhookResults**](WebhookControllerApi#getwebhookresults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**getWebhookResultsCount**](WebhookControllerApi#getwebhookresultscount) | **GET** /webhooks/{webhookId}/results/count | Get a webhook results count for a webhook
[**getWebhookResultsUnseenErrorCount**](WebhookControllerApi#getwebhookresultsunseenerrorcount) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**getWebhooks**](WebhookControllerApi#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redriveAllWebhookResults**](WebhookControllerApi#redriveallwebhookresults) | **POST** /webhooks/results/redrive | Redrive all webhook results that have failed status
[**redriveWebhookResult**](WebhookControllerApi#redrivewebhookresult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**sendTestData**](WebhookControllerApi#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data
[**updateWebhook**](WebhookControllerApi#updatewebhook) | **PATCH** /webhooks/{webhookId} | Update a webhook
[**updateWebhookHeaders**](WebhookControllerApi#updatewebhookheaders) | **PUT** /webhooks/{webhookId}/headers | Update a webhook request headers
[**verifyWebhookSignature**](WebhookControllerApi#verifywebhooksignature) | **POST** /webhooks/verify | Verify a webhook payload signature
[**waitForWebhookResults**](WebhookControllerApi#waitforwebhookresults) | **GET** /webhooks/{webhookId}/wait | Wait for webhook results for a webhook


# **createAccountWebhook**
> WebhookDto createAccountWebhook(createWebhookOptions)

Attach a WebHook URL to an inbox

Get notified of account level events such as bounce and bounce recipient.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final createWebhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | 

try {
    final result = api_instance.createAccountWebhook(createWebhookOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->createAccountWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhook**
> WebhookDto createWebhook(inboxId, createWebhookOptions)

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createWebhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | 

try {
    final result = api_instance.createWebhook(inboxId, createWebhookOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->createWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhookForAITransformer**
> WebhookDto createWebhookForAITransformer(transformerId, createWebhookOptions)

Attach a WebHook URL to an AI transformer

Get notified whenever AI transformation pipeline converts and email or SMS into structured data via a WebHook URL.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final transformerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createWebhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | 

try {
    final result = api_instance.createWebhookForAITransformer(transformerId, createWebhookOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->createWebhookForAITransformer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transformerId** | **String**|  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhookForPhoneNumber**
> WebhookDto createWebhookForPhoneNumber(phoneNumberId, createWebhookOptions)

Attach a WebHook URL to a phone number

Get notified whenever a phone number receives an SMS via a WebHook URL.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createWebhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | 

try {
    final result = api_instance.createWebhookForPhoneNumber(phoneNumberId, createWebhookOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->createWebhookForPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllWebhooks**
> deleteAllWebhooks(before)

Delete all webhooks

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final before = 2013-10-20T19:20:30+01:00; // DateTime | before

try {
    api_instance.deleteAllWebhooks(before);
} catch (e) {
    print('Exception when calling WebhookControllerApi->deleteAllWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| before | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhook**
> deleteWebhook(inboxId, webhookId)

Delete and disable a Webhook for an Inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteWebhook(inboxId, webhookId);
} catch (e) {
    print('Exception when calling WebhookControllerApi->deleteWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **webhookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhookById**
> deleteWebhookById(webhookId)

Delete a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteWebhookById(webhookId);
} catch (e) {
    print('Exception when calling WebhookControllerApi->deleteWebhookById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllAccountWebhooks**
> PageWebhookProjection getAllAccountWebhooks(page, size, sort, since, before, eventType, health, searchFilter)

List account webhooks Paginated

List account webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final eventType = eventType_example; // String | Optional event type
final health = health_example; // String | Filter by webhook health
final searchFilter = searchFilter_example; // String | Optional search filter

try {
    final result = api_instance.getAllAccountWebhooks(page, size, sort, since, before, eventType, health, searchFilter);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllAccountWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **eventType** | **String**| Optional event type | [optional] 
 **health** | **String**| Filter by webhook health | [optional] 
 **searchFilter** | **String**| Optional search filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookEndpoints**
> PageWebhookEndpointProjection getAllWebhookEndpoints(page, size, sort, searchFilter, since, inboxId, phoneId, before, health, eventType)

List Webhooks endpoints Paginated

List webhooks URL in paginated form. Allows for page index, page size, and sort direction.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by inboxId
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by phoneId
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final health = health_example; // String | Filter by webhook health
final eventType = eventType_example; // String | Optional event type

try {
    final result = api_instance.getAllWebhookEndpoints(page, size, sort, searchFilter, since, inboxId, phoneId, before, health, eventType);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhookEndpoints: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **inboxId** | **String**| Filter by inboxId | [optional] 
 **phoneId** | **String**| Filter by phoneId | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **health** | **String**| Filter by webhook health | [optional] 
 **eventType** | **String**| Optional event type | [optional] 

### Return type

[**PageWebhookEndpointProjection**](PageWebhookEndpointProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookResults**
> PageWebhookResult getAllWebhookResults(page, size, sort, searchFilter, since, before, unseenOnly, resultType, eventName, minStatusCode, maxStatusCode, inboxId, smsId, attachmentId, emailId, phoneId, aiTransformerId)

Get results for all webhooks

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final unseenOnly = true; // bool | Filter for unseen exceptions only
final resultType = resultType_example; // String | Filter by result type
final eventName = eventName_example; // String | Filter by event name
final minStatusCode = 56; // int | Minimum response status
final maxStatusCode = 56; // int | Maximum response status
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Sms ID
final attachmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Attachment ID
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Email ID
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Phone ID
final aiTransformerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | AI Transformer ID

try {
    final result = api_instance.getAllWebhookResults(page, size, sort, searchFilter, since, before, unseenOnly, resultType, eventName, minStatusCode, maxStatusCode, inboxId, smsId, attachmentId, emailId, phoneId, aiTransformerId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhookResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **bool**| Filter for unseen exceptions only | [optional] 
 **resultType** | **String**| Filter by result type | [optional] 
 **eventName** | **String**| Filter by event name | [optional] 
 **minStatusCode** | **int**| Minimum response status | [optional] 
 **maxStatusCode** | **int**| Maximum response status | [optional] 
 **inboxId** | **String**| Inbox ID | [optional] 
 **smsId** | **String**| Sms ID | [optional] 
 **attachmentId** | **String**| Attachment ID | [optional] 
 **emailId** | **String**| Email ID | [optional] 
 **phoneId** | **String**| Phone ID | [optional] 
 **aiTransformerId** | **String**| AI Transformer ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
> PageWebhookProjection getAllWebhooks(page, size, sort, searchFilter, since, inboxId, aiTransformerId, phoneId, before, health, eventType, url)

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by inboxId
final aiTransformerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by aiTransformerId
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by phoneId
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final health = health_example; // String | Filter by webhook health
final eventType = eventType_example; // String | Optional event type
final url = url_example; // String | Optional url endpoint filter

try {
    final result = api_instance.getAllWebhooks(page, size, sort, searchFilter, since, inboxId, aiTransformerId, phoneId, before, health, eventType, url);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **inboxId** | **String**| Filter by inboxId | [optional] 
 **aiTransformerId** | **String**| Filter by aiTransformerId | [optional] 
 **phoneId** | **String**| Filter by phoneId | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **health** | **String**| Filter by webhook health | [optional] 
 **eventType** | **String**| Optional event type | [optional] 
 **url** | **String**| Optional url endpoint filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxWebhooksPaginated**
> PageWebhookProjection getInboxWebhooksPaginated(inboxId, page, size, sort, searchFilter, since, before, health, eventType)

Get paginated webhooks for an Inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final health = health_example; // String | Filter by webhook health
final eventType = eventType_example; // String | Optional event type

try {
    final result = api_instance.getInboxWebhooksPaginated(inboxId, page, size, sort, searchFilter, since, before, health, eventType);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getInboxWebhooksPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **health** | **String**| Filter by webhook health | [optional] 
 **eventType** | **String**| Optional event type | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookEvent**
> JSONSchemaDto getJsonSchemaForWebhookEvent(event)



Get JSON Schema definition for webhook payload by event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final event = event_example; // String | 

try {
    final result = api_instance.getJsonSchemaForWebhookEvent(event);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getJsonSchemaForWebhookEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | **String**|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookPayload**
> JSONSchemaDto getJsonSchemaForWebhookPayload(webhookId)



Get JSON Schema definition for webhook payload

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getJsonSchemaForWebhookPayload(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getJsonSchemaForWebhookPayload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberWebhooksPaginated**
> PageWebhookProjection getPhoneNumberWebhooksPaginated(phoneId, page, size, sort, since, before, eventType, searchFilter, health)

Get paginated webhooks for a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final eventType = eventType_example; // String | Optional event type
final searchFilter = searchFilter_example; // String | Optional search filter
final health = health_example; // String | Filter by webhook health

try {
    final result = api_instance.getPhoneNumberWebhooksPaginated(phoneId, page, size, sort, since, before, eventType, searchFilter, health);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getPhoneNumberWebhooksPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneId** | **String**|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **eventType** | **String**| Optional event type | [optional] 
 **searchFilter** | **String**| Optional search filter | [optional] 
 **health** | **String**| Filter by webhook health | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayload**
> AbstractWebhookPayload getTestWebhookPayload(eventName)



Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final eventName = eventName_example; // String | 

try {
    final result = api_instance.getTestWebhookPayload(eventName);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventName** | **String**|  | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounce**
> WebhookBouncePayload getTestWebhookPayloadBounce()



Get webhook test payload for bounce

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadBounce();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadBounce: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBouncePayload**](WebhookBouncePayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounceRecipient**
> WebhookBounceRecipientPayload getTestWebhookPayloadBounceRecipient()



Get webhook test payload for bounce recipient

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadBounceRecipient();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadBounceRecipient: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookBounceRecipientPayload**](WebhookBounceRecipientPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadDeliveryStatus**
> WebhookDeliveryStatusPayload getTestWebhookPayloadDeliveryStatus()

Get webhook test payload for delivery status event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadDeliveryStatus();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadDeliveryStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookDeliveryStatusPayload**](WebhookDeliveryStatusPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailOpened**
> WebhookEmailOpenedPayload getTestWebhookPayloadEmailOpened()



Get webhook test payload for email opened event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadEmailOpened();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadEmailOpened: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailOpenedPayload**](WebhookEmailOpenedPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailRead**
> WebhookEmailReadPayload getTestWebhookPayloadEmailRead()



Get webhook test payload for email opened event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadEmailRead();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadEmailRead: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookEmailReadPayload**](WebhookEmailReadPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadForWebhook**
> AbstractWebhookPayload getTestWebhookPayloadForWebhook(webhookId)



Get example payload for webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getTestWebhookPayloadForWebhook(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadForWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAITransformResult**
> WebhookNewAITransformResultPayload getTestWebhookPayloadNewAITransformResult()

Get webhook test payload for new ai transform result event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadNewAITransformResult();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadNewAITransformResult: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewAITransformResultPayload**](WebhookNewAITransformResultPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAttachment**
> WebhookNewAttachmentPayload getTestWebhookPayloadNewAttachment()

Get webhook test payload for new attachment event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadNewAttachment();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadNewAttachment: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewAttachmentPayload**](WebhookNewAttachmentPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewContact**
> WebhookNewContactPayload getTestWebhookPayloadNewContact()

Get webhook test payload for new contact event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadNewContact();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadNewContact: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewContactPayload**](WebhookNewContactPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewEmail**
> WebhookNewEmailPayload getTestWebhookPayloadNewEmail()

Get webhook test payload for new email event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadNewEmail();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadNewEmail: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewEmailPayload**](WebhookNewEmailPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewSms**
> WebhookNewSmsPayload getTestWebhookPayloadNewSms()

Get webhook test payload for new sms event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getTestWebhookPayloadNewSms();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getTestWebhookPayloadNewSms: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookNewSmsPayload**](WebhookNewSmsPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
> WebhookDto getWebhook(webhookId)

Get a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getWebhook(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResult**
> WebhookResultDto getWebhookResult(webhookResultId)

Get a webhook result for a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookResultId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Webhook Result ID

try {
    final result = api_instance.getWebhookResult(webhookResultId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookResultId** | **String**| Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResults**
> PageWebhookResult getWebhookResults(webhookId, page, size, sort, searchFilter, since, before, unseenOnly, resultType, eventName, minStatusCode, maxStatusCode, inboxId, smsId, attachmentId, emailId, phoneId, aiTransformerId)

Get a webhook results for a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of webhook to get results for
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final unseenOnly = true; // bool | Filter for unseen exceptions only
final resultType = resultType_example; // String | Filter by result type
final eventName = eventName_example; // String | Filter by event name
final minStatusCode = 56; // int | Minimum response status
final maxStatusCode = 56; // int | Maximum response status
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Sms ID
final attachmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Attachment ID
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Email ID
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Phone ID
final aiTransformerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | AI Transformer ID

try {
    final result = api_instance.getWebhookResults(webhookId, page, size, sort, searchFilter, since, before, unseenOnly, resultType, eventName, minStatusCode, maxStatusCode, inboxId, smsId, attachmentId, emailId, phoneId, aiTransformerId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**| ID of webhook to get results for | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **bool**| Filter for unseen exceptions only | [optional] 
 **resultType** | **String**| Filter by result type | [optional] 
 **eventName** | **String**| Filter by event name | [optional] 
 **minStatusCode** | **int**| Minimum response status | [optional] 
 **maxStatusCode** | **int**| Maximum response status | [optional] 
 **inboxId** | **String**| Inbox ID | [optional] 
 **smsId** | **String**| Sms ID | [optional] 
 **attachmentId** | **String**| Attachment ID | [optional] 
 **emailId** | **String**| Email ID | [optional] 
 **phoneId** | **String**| Phone ID | [optional] 
 **aiTransformerId** | **String**| AI Transformer ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsCount**
> CountDto getWebhookResultsCount(webhookId)

Get a webhook results count for a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of webhook to get results for

try {
    final result = api_instance.getWebhookResultsCount(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResultsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**| ID of webhook to get results for | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsUnseenErrorCount**
> UnseenErrorCountDto getWebhookResultsUnseenErrorCount()

Get count of unseen webhook results with error status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.getWebhookResultsUnseenErrorCount();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResultsUnseenErrorCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnseenErrorCountDto**](UnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
> List<WebhookProjection> getWebhooks(inboxId, page, size, sort)

Get all webhooks for an Inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getWebhooks(inboxId, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**List<WebhookProjection>**](WebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveAllWebhookResults**
> WebhookRedriveAllResult redriveAllWebhookResults()

Redrive all webhook results that have failed status

Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try {
    final result = api_instance.redriveAllWebhookResults();
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->redriveAllWebhookResults: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookRedriveAllResult**](WebhookRedriveAllResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveWebhookResult**
> WebhookRedriveResult redriveWebhookResult(webhookResultId)

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookResultId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Webhook Result ID

try {
    final result = api_instance.redriveWebhookResult(webhookResultId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->redriveWebhookResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookResultId** | **String**| Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestData**
> WebhookTestResult sendTestData(webhookId)

Send webhook test data

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.sendTestData(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->sendTestData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhook**
> WebhookDto updateWebhook(webhookId, createWebhookOptions, inboxId, aiTransformerId, phoneNumberId, overrideAuth)

Update a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createWebhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final aiTransformerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final overrideAuth = true; // bool | 

try {
    final result = api_instance.updateWebhook(webhookId, createWebhookOptions, inboxId, aiTransformerId, phoneNumberId, overrideAuth);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->updateWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 
 **inboxId** | **String**|  | [optional] 
 **aiTransformerId** | **String**|  | [optional] 
 **phoneNumberId** | **String**|  | [optional] 
 **overrideAuth** | **bool**|  | [optional] 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhookHeaders**
> WebhookDto updateWebhookHeaders(webhookId, webhookHeaders)

Update a webhook request headers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final webhookHeaders = WebhookHeaders(); // WebhookHeaders | 

try {
    final result = api_instance.updateWebhookHeaders(webhookId, webhookHeaders);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->updateWebhookHeaders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**|  | 
 **webhookHeaders** | [**WebhookHeaders**](WebhookHeaders)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyWebhookSignature**
> VerifyWebhookSignatureResults verifyWebhookSignature(verifyWebhookSignatureOptions)

Verify a webhook payload signature

Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final verifyWebhookSignatureOptions = VerifyWebhookSignatureOptions(); // VerifyWebhookSignatureOptions | 

try {
    final result = api_instance.verifyWebhookSignature(verifyWebhookSignatureOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->verifyWebhookSignature: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyWebhookSignatureOptions** | [**VerifyWebhookSignatureOptions**](VerifyWebhookSignatureOptions)|  | 

### Return type

[**VerifyWebhookSignatureResults**](VerifyWebhookSignatureResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForWebhookResults**
> List<WebhookResultDto> waitForWebhookResults(webhookId, expectedCount, timeout)

Wait for webhook results for a webhook

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of webhook to get results for
final expectedCount = 56; // int | Expected result count
final timeout = 56; // int | Max time to wait in milliseconds

try {
    final result = api_instance.waitForWebhookResults(webhookId, expectedCount, timeout);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->waitForWebhookResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **String**| ID of webhook to get results for | 
 **expectedCount** | **int**| Expected result count | 
 **timeout** | **int**| Max time to wait in milliseconds | 

### Return type

[**List<WebhookResultDto>**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

