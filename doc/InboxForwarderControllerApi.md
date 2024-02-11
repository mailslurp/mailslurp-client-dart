# mailslurp.api.InboxForwarderControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxForwarder**](InboxForwarderControllerApi#createnewinboxforwarder) | **POST** /forwarders | Create an inbox forwarder
[**deleteInboxForwarder**](InboxForwarderControllerApi#deleteinboxforwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**deleteInboxForwarders**](InboxForwarderControllerApi#deleteinboxforwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**getAllInboxForwarderEvents**](InboxForwarderControllerApi#getallinboxforwarderevents) | **GET** /forwarders/events | Get all inbox forwarder events
[**getForwarderEvent**](InboxForwarderControllerApi#getforwarderevent) | **GET** /forwarders/events/{eventId} | Get a forwarder event
[**getInboxForwarder**](InboxForwarderControllerApi#getinboxforwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**getInboxForwarderEvent**](InboxForwarderControllerApi#getinboxforwarderevent) | **GET** /forwarders/{id}/events/{eventId} | Get an inbox forwarder event
[**getInboxForwarderEvents**](InboxForwarderControllerApi#getinboxforwarderevents) | **GET** /forwarders/{id}/events | Get an inbox forwarder event list
[**getInboxForwarders**](InboxForwarderControllerApi#getinboxforwarders) | **GET** /forwarders | List inbox forwarders
[**testInboxForwarder**](InboxForwarderControllerApi#testinboxforwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**testInboxForwardersForInbox**](InboxForwarderControllerApi#testinboxforwardersforinbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**testNewInboxForwarder**](InboxForwarderControllerApi#testnewinboxforwarder) | **PATCH** /forwarders | Test new inbox forwarder
[**updateInboxForwarder**](InboxForwarderControllerApi#updateinboxforwarder) | **PUT** /forwarders/{id} | Update an inbox forwarder


# **createNewInboxForwarder**
> InboxForwarderDto createNewInboxForwarder(inboxId, createInboxForwarderOptions)

Create an inbox forwarder

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox id to attach forwarder to
final createInboxForwarderOptions = CreateInboxForwarderOptions(); // CreateInboxForwarderOptions | 

try {
    final result = api_instance.createNewInboxForwarder(inboxId, createInboxForwarderOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->createNewInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Inbox id to attach forwarder to | 
 **createInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarder**
> deleteInboxForwarder(id)

Delete an inbox forwarder

Delete inbox forwarder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder

try {
    api_instance.deleteInboxForwarder(id);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->deleteInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarders**
> deleteInboxForwarders(inboxId)

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to attach forwarder to

try {
    api_instance.deleteInboxForwarders(inboxId);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->deleteInboxForwarders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to attach forwarder to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxForwarderEvents**
> PageInboxForwarderEvents getAllInboxForwarderEvents(page, size, sort)

Get all inbox forwarder events

Get all inbox forwarder events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final page = 56; // int | Optional page index in inbox forwarder event list pagination
final size = 56; // int | Optional page size in inbox forwarder event list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getAllInboxForwarderEvents(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getAllInboxForwarderEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getForwarderEvent**
> InboxForwarderEventDto getForwarderEvent(eventId)

Get a forwarder event

Get forwarder event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final eventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder event

try {
    final result = api_instance.getForwarderEvent(eventId);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getForwarderEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarder**
> InboxForwarderDto getInboxForwarder(id)

Get an inbox forwarder

Get inbox forwarder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder

try {
    final result = api_instance.getInboxForwarder(id);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarderEvent**
> InboxForwarderEventDto getInboxForwarderEvent(id, eventId)

Get an inbox forwarder event

Get inbox forwarder event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder
final eventId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder event

try {
    final result = api_instance.getInboxForwarderEvent(id, eventId);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getInboxForwarderEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 
 **eventId** | **String**| ID of inbox forwarder event | 

### Return type

[**InboxForwarderEventDto**](InboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarderEvents**
> PageInboxForwarderEvents getInboxForwarderEvents(id, page, size, sort)

Get an inbox forwarder event list

Get inbox forwarder events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder
final page = 56; // int | Optional page index in inbox forwarder event list pagination
final size = 56; // int | Optional page size in inbox forwarder event list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getInboxForwarderEvents(id, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getInboxForwarderEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 
 **page** | **int**| Optional page index in inbox forwarder event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder event list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageInboxForwarderEvents**](PageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarders**
> PageInboxForwarderDto getInboxForwarders(inboxId, page, size, sort, searchFilter, since, before)

List inbox forwarders

List all forwarders attached to an inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to get forwarders from
final page = 56; // int | Optional page index in inbox forwarder list pagination
final size = 56; // int | Optional page size in inbox forwarder list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getInboxForwarders(inboxId, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->getInboxForwarders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to get forwarders from | [optional] 
 **page** | **int**| Optional page index in inbox forwarder list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwarder**
> InboxForwarderTestResult testInboxForwarder(id, inboxForwarderTestOptions)

Test an inbox forwarder

Test an inbox forwarder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder
final inboxForwarderTestOptions = InboxForwarderTestOptions(); // InboxForwarderTestOptions | 

try {
    final result = api_instance.testInboxForwarder(id, inboxForwarderTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->testInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 
 **inboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwardersForInbox**
> InboxForwarderTestResult testInboxForwardersForInbox(inboxId, inboxForwarderTestOptions)

Test inbox forwarders for inbox

Test inbox forwarders for inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox
final inboxForwarderTestOptions = InboxForwarderTestOptions(); // InboxForwarderTestOptions | 

try {
    final result = api_instance.testInboxForwardersForInbox(inboxId, inboxForwarderTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->testInboxForwardersForInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox | 
 **inboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewInboxForwarder**
> InboxForwarderTestResult testNewInboxForwarder(testNewInboxForwarderOptions)

Test new inbox forwarder

Test new inbox forwarder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final testNewInboxForwarderOptions = TestNewInboxForwarderOptions(); // TestNewInboxForwarderOptions | 

try {
    final result = api_instance.testNewInboxForwarder(testNewInboxForwarderOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->testNewInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testNewInboxForwarderOptions** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxForwarder**
> InboxForwarderDto updateInboxForwarder(id, createInboxForwarderOptions)

Update an inbox forwarder

Update inbox forwarder

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxForwarderControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox forwarder
final createInboxForwarderOptions = CreateInboxForwarderOptions(); // CreateInboxForwarderOptions | 

try {
    final result = api_instance.updateInboxForwarder(id, createInboxForwarderOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxForwarderControllerApi->updateInboxForwarder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox forwarder | 
 **createInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

