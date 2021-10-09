# mailslurp.api.WebhookControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhookControllerApi#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**deleteAllWebhooks**](WebhookControllerApi#deleteallwebhooks) | **DELETE** /webhooks | Delete all webhooks
[**deleteWebhook**](WebhookControllerApi#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**getAllWebhookResults**](WebhookControllerApi#getallwebhookresults) | **GET** /webhooks/results | Get results for all webhooks
[**getAllWebhooks**](WebhookControllerApi#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getInboxWebhooksPaginated**](WebhookControllerApi#getinboxwebhookspaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**getJsonSchemaForWebhookPayload**](WebhookControllerApi#getjsonschemaforwebhookpayload) | **POST** /webhooks/{webhookId}/schema | Get JSON Schema definition for webhook payload
[**getTestWebhookPayload**](WebhookControllerApi#gettestwebhookpayload) | **GET** /webhooks/test | Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
[**getTestWebhookPayloadEmailOpened**](WebhookControllerApi#gettestwebhookpayloademailopened) | **GET** /webhooks/test/email-opened-payload | Get webhook test payload for email opened event
[**getTestWebhookPayloadEmailRead**](WebhookControllerApi#gettestwebhookpayloademailread) | **GET** /webhooks/test/email-read-payload | Get webhook test payload for email opened event
[**getTestWebhookPayloadForWebhook**](WebhookControllerApi#gettestwebhookpayloadforwebhook) | **POST** /webhooks/{webhookId}/example | Get example payload for webhook
[**getTestWebhookPayloadNewAttachment**](WebhookControllerApi#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](WebhookControllerApi#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](WebhookControllerApi#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getWebhook**](WebhookControllerApi#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**getWebhookResult**](WebhookControllerApi#getwebhookresult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**getWebhookResults**](WebhookControllerApi#getwebhookresults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**getWebhookResultsUnseenErrorCount**](WebhookControllerApi#getwebhookresultsunseenerrorcount) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**getWebhooks**](WebhookControllerApi#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redriveWebhookResult**](WebhookControllerApi#redrivewebhookresult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**sendTestData**](WebhookControllerApi#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data


# **createWebhook**
> WebhookDto createWebhook(inboxId, webhookOptions)

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
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
final webhookOptions = CreateWebhookOptions(); // CreateWebhookOptions | webhookOptions

try { 
    final result = api_instance.createWebhook(inboxId, webhookOptions);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->createWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| inboxId | 
 **webhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions)| webhookOptions | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllWebhooks**
> deleteAllWebhooks()

Delete all webhooks

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();

try { 
    api_instance.deleteAllWebhooks();
} catch (e) {
    print('Exception when calling WebhookControllerApi->deleteAllWebhooks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

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
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | webhookId

try { 
    api_instance.deleteWebhook(inboxId, webhookId);
} catch (e) {
    print('Exception when calling WebhookControllerApi->deleteWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| inboxId | 
 **webhookId** | [**String**]()| webhookId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookResults**
> PageWebhookResult getAllWebhookResults(before, page, searchFilter, since, size, sort, unseenOnly)

Get results for all webhooks

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unseenOnly = true; // bool | Filter for unseen exceptions only

try { 
    final result = api_instance.getAllWebhookResults(before, page, searchFilter, since, size, sort, unseenOnly);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhookResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unseenOnly** | **bool**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
> PageWebhookProjection getAllWebhooks(before, page, searchFilter, since, size, sort)

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
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllWebhooks(before, page, searchFilter, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxWebhooksPaginated**
> PageWebhookProjection getInboxWebhooksPaginated(inboxId, before, page, searchFilter, since, size, sort)

Get paginated webhooks for an Inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getInboxWebhooksPaginated(inboxId, before, page, searchFilter, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getInboxWebhooksPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| inboxId | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | webhookId

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
 **webhookId** | [**String**]()| webhookId | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
final eventName = eventName_example; // String | eventName

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
 **eventName** | **String**| eventName | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

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
 - **Accept**: application/json

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
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | webhookId

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
 **webhookId** | [**String**]()| webhookId | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 - **Accept**: application/json

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
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
> WebhookDto getWebhook(webhookId)

Get a webhook for an Inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | webhookId

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
 **webhookId** | [**String**]()| webhookId | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 **webhookResultId** | [**String**]()| Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResults**
> PageWebhookResult getWebhookResults(webhookId, before, page, searchFilter, since, size, sort, unseenOnly)

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
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unseenOnly = true; // bool | Filter for unseen exceptions only

try { 
    final result = api_instance.getWebhookResults(webhookId, before, page, searchFilter, since, size, sort, unseenOnly);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | [**String**]()| ID of webhook to get results for | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unseenOnly** | **bool**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsUnseenErrorCount**
> UnseenErrorCountDto getWebhookResultsUnseenErrorCount(inboxId)

Get count of unseen webhook results with error status

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId

try { 
    final result = api_instance.getWebhookResultsUnseenErrorCount(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhookResultsUnseenErrorCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| inboxId | 

### Return type

[**UnseenErrorCountDto**](UnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
> List<WebhookDto> getWebhooks(inboxId)

Get all webhooks for an Inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WebhookControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId

try { 
    final result = api_instance.getWebhooks(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| inboxId | 

### Return type

[**List<WebhookDto>**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
 **webhookResultId** | [**String**]()| Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
final webhookId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | webhookId

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
 **webhookId** | [**String**]()| webhookId | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

