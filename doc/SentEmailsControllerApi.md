# mailslurp.api.SentEmailsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllSentEmails**](SentEmailsControllerApi#deleteallsentemails) | **DELETE** /sent | Delete all sent email receipts
[**deleteSentEmail**](SentEmailsControllerApi#deletesentemail) | **DELETE** /sent/{id} | Delete sent email receipt
[**getAllSentTrackingPixels**](SentEmailsControllerApi#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | 
[**getRawSentEmailContents**](SentEmailsControllerApi#getrawsentemailcontents) | **GET** /sent/{emailId}/raw | Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[**getRawSentEmailJson**](SentEmailsControllerApi#getrawsentemailjson) | **GET** /sent/{emailId}/raw/json | Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getSentDeliveryStatus**](SentEmailsControllerApi#getsentdeliverystatus) | **GET** /sent/delivery-status/{deliveryId} | 
[**getSentDeliveryStatuses**](SentEmailsControllerApi#getsentdeliverystatuses) | **GET** /sent/delivery-status | 
[**getSentDeliveryStatusesBySentId**](SentEmailsControllerApi#getsentdeliverystatusesbysentid) | **GET** /sent/{sentId}/delivery-status | 
[**getSentEmail**](SentEmailsControllerApi#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](SentEmailsControllerApi#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailPreviewURLs**](SentEmailsControllerApi#getsentemailpreviewurls) | **GET** /sent/{id}/urls | Get sent email URL for viewing in browser or downloading
[**getSentEmailTrackingPixels**](SentEmailsControllerApi#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | 
[**getSentEmails**](SentEmailsControllerApi#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentEmailsWithQueueResults**](SentEmailsControllerApi#getsentemailswithqueueresults) | **GET** /sent/queue-results | Get results of email sent with queues in paginated form
[**getSentOrganizationEmails**](SentEmailsControllerApi#getsentorganizationemails) | **GET** /sent/organization | 


# **deleteAllSentEmails**
> deleteAllSentEmails()

Delete all sent email receipts

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();

try { 
    api_instance.deleteAllSentEmails();
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->deleteAllSentEmails: $e\n');
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

# **deleteSentEmail**
> deleteSentEmail(id)

Delete sent email receipt

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.deleteSentEmail(id);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->deleteSentEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllSentTrackingPixels**
> PageTrackingPixelProjection getAllSentTrackingPixels(page, size, sort, searchFilter, since, before)



Get all sent email tracking pixels in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final page = 56; // int | Optional page index in sent email tracking pixel list pagination
final size = 56; // int | Optional page size in sent email tracking pixel list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getAllSentTrackingPixels(page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getAllSentTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailContents**
> String getRawSentEmailContents(emailId)

Get raw sent email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    final result = api_instance.getRawSentEmailContents(emailId);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getRawSentEmailContents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailJson**
> RawEmailJson getRawSentEmailJson(emailId)

Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of email

try { 
    final result = api_instance.getRawSentEmailJson(emailId);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getRawSentEmailJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**String**]()| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatus**
> DeliveryStatus getSentDeliveryStatus(deliveryId)



Get a sent email delivery status

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final deliveryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getSentDeliveryStatus(deliveryId);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentDeliveryStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryId** | [**String**]()|  | 

### Return type

[**DeliveryStatus**](DeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatuses**
> PageDeliveryStatus getSentDeliveryStatuses(page, size, sort, since, before)



Get all sent email delivery statuses

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final page = 56; // int | Optional page index in delivery status list pagination
final size = 56; // int | Optional page size in delivery status list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentDeliveryStatuses(page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentDeliveryStatuses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatusesBySentId**
> PageDeliveryStatus getSentDeliveryStatusesBySentId(sentId, page, size, sort, since, before)



Get all sent email delivery statuses

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final sentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in delivery status list pagination
final size = 56; // int | Optional page size in delivery status list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentDeliveryStatusesBySentId(sentId, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentDeliveryStatusesBySentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentId** | [**String**]()|  | 
 **page** | **int**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmail**
> SentEmailDto getSentEmail(id)

Get sent email receipt

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getSentEmail(id);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailHTMLContent**
> String getSentEmailHTMLContent(id)

Get sent email HTML content

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getSentEmailHTMLContent(id);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailHTMLContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailPreviewURLs**
> EmailPreviewUrls getSentEmailPreviewURLs(id)

Get sent email URL for viewing in browser or downloading

Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getSentEmailPreviewURLs(id);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailPreviewURLs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
> PageTrackingPixelProjection getSentEmailTrackingPixels(id, page, size, sort, searchFilter, since, before)



Get all tracking pixels for a sent email in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in sent email tracking pixel list pagination
final size = 56; // int | Optional page size in sent email tracking pixel list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentEmailTrackingPixels(id, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
> PageSentEmailProjection getSentEmails(inboxId, page, size, sort, searchFilter, since, before)

Get all sent emails in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inboxId to filter sender of sent emails by
final page = 56; // int | Optional page index in inbox sent email list pagination
final size = 56; // int | Optional page size in inbox sent email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentEmails(inboxId, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailsWithQueueResults**
> PageSentEmailWithQueueProjection getSentEmailsWithQueueResults(page, size, sort, since, before)

Get results of email sent with queues in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final page = 56; // int | Optional page index in inbox sent email list pagination
final size = 56; // int | Optional page size in inbox sent email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentEmailsWithQueueResults(page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailsWithQueueResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailWithQueueProjection**](PageSentEmailWithQueueProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
> PageSentEmailProjection getSentOrganizationEmails(inboxId, page, size, sort, searchFilter, since, before)



Get all sent organization emails in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inboxId to filter sender of sent emails by
final page = 56; // int | Optional page index in sent email list pagination
final size = 56; // int | Optional page size in sent email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getSentOrganizationEmails(inboxId, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentOrganizationEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

