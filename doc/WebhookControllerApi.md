# mailslurp.api.WebhookControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhookControllerApi#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**deleteWebhook**](WebhookControllerApi#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**getAllWebhooks**](WebhookControllerApi#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getWebhook**](WebhookControllerApi#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**getWebhooks**](WebhookControllerApi#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all Webhooks for an Inbox
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

# **getAllWebhooks**
> PageWebhookProjection getAllWebhooks(page, size, sort)

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
final page = 56; // int | Optional page index in inbox list pagination
final size = 56; // int | Optional page size in inbox list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllWebhooks(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling WebhookControllerApi->getAllWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

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

# **getWebhooks**
> List<WebhookDto> getWebhooks(inboxId)

Get all Webhooks for an Inbox

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

