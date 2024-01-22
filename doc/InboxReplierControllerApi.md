# mailslurp.api.InboxReplierControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxReplier**](InboxReplierControllerApi#createnewinboxreplier) | **POST** /repliers | Create an inbox replier
[**deleteInboxReplier**](InboxReplierControllerApi#deleteinboxreplier) | **DELETE** /repliers/{id} | Delete an inbox replier
[**deleteInboxRepliers**](InboxReplierControllerApi#deleteinboxrepliers) | **DELETE** /repliers | Delete inbox repliers
[**getInboxReplier**](InboxReplierControllerApi#getinboxreplier) | **GET** /repliers/{id} | Get an inbox replier
[**getInboxReplierEvents**](InboxReplierControllerApi#getinboxreplierevents) | **GET** /repliers/{id}/events | Get an inbox replier event list
[**getInboxRepliers**](InboxReplierControllerApi#getinboxrepliers) | **GET** /repliers | List inbox repliers
[**updateInboxReplier**](InboxReplierControllerApi#updateinboxreplier) | **PUT** /repliers/{id} | Update an inbox replier


# **createNewInboxReplier**
> InboxReplierDto createNewInboxReplier(createInboxReplierOptions)

Create an inbox replier

Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final createInboxReplierOptions = CreateInboxReplierOptions(); // CreateInboxReplierOptions | 

try {
    final result = api_instance.createNewInboxReplier(createInboxReplierOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->createNewInboxReplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxReplierOptions** | [**CreateInboxReplierOptions**](CreateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxReplier**
> deleteInboxReplier(id)

Delete an inbox replier

Delete inbox replier

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox replier

try {
    api_instance.deleteInboxReplier(id);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->deleteInboxReplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox replier | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRepliers**
> deleteInboxRepliers(inboxId)

Delete inbox repliers

Delete inbox repliers. Accepts optional inboxId filter.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to attach replier to

try {
    api_instance.deleteInboxRepliers(inboxId);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->deleteInboxRepliers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to attach replier to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplier**
> InboxReplierDto getInboxReplier(id)

Get an inbox replier

Get inbox ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox replier

try {
    final result = api_instance.getInboxReplier(id);
    print(result);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->getInboxReplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox replier | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplierEvents**
> PageInboxReplierEvents getInboxReplierEvents(id, page, size, sort)

Get an inbox replier event list

Get inbox ruleset events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox replier
final page = 56; // int | Optional page index in inbox replier event list pagination
final size = 56; // int | Optional page size in inbox replier event list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getInboxReplierEvents(id, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->getInboxReplierEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox replier | 
 **page** | **int**| Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRepliers**
> PageInboxReplierDto getInboxRepliers(inboxId, page, size, sort, since, before)

List inbox repliers

List all repliers attached to an inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to get repliers from
final page = 56; // int | Optional page index in inbox replier list pagination
final size = 56; // int | Optional page size in inbox replier list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getInboxRepliers(inboxId, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->getInboxRepliers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to get repliers from | [optional] 
 **page** | **int**| Optional page index in inbox replier list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox replier list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxReplierDto**](PageInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxReplier**
> InboxReplierDto updateInboxReplier(id, updateInboxReplierOptions)

Update an inbox replier

Update inbox ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxReplierControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox replier
final updateInboxReplierOptions = UpdateInboxReplierOptions(); // UpdateInboxReplierOptions | 

try {
    final result = api_instance.updateInboxReplier(id, updateInboxReplierOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxReplierControllerApi->updateInboxReplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of inbox replier | 
 **updateInboxReplierOptions** | [**UpdateInboxReplierOptions**](UpdateInboxReplierOptions)|  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

