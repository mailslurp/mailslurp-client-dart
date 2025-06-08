# mailslurp.api.UserControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntityAutomations**](UserControllerApi#getentityautomations) | **GET** /user/automations | 
[**getEntityEvents**](UserControllerApi#getentityevents) | **GET** /user/events | 
[**getEntityFavorites**](UserControllerApi#getentityfavorites) | **GET** /user/favorites | 
[**getJsonPropertyAsString**](UserControllerApi#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](UserControllerApi#getuserinfo) | **GET** /user/info | 


# **getEntityAutomations**
> PageEntityAutomationItems getEntityAutomations(page, size, sort, since, before, inboxId, phoneId, filter)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final page = 56; // int | Optional page index
final size = 56; // int | Optional page size
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox ID
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional phone ID
final filter = filter_example; // String | Optional automation type filter

try {
    final result = api_instance.getEntityAutomations(page, size, sort, since, before, inboxId, phoneId, filter);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getEntityAutomations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inboxId** | **String**| Optional inbox ID | [optional] 
 **phoneId** | **String**| Optional phone ID | [optional] 
 **filter** | **String**| Optional automation type filter | [optional] 

### Return type

[**PageEntityAutomationItems**](PageEntityAutomationItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityEvents**
> PageEntityEventItems getEntityEvents(page, size, sort, since, before, inboxId, emailId, phoneId, smsId, attachmentId, filter)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final page = 56; // int | Optional page index
final size = 56; // int | Optional page size
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox ID
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional email ID
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional phone ID
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional SMS ID
final attachmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional attachment ID
final filter = filter_example; // String | Optional type filter

try {
    final result = api_instance.getEntityEvents(page, size, sort, since, before, inboxId, emailId, phoneId, smsId, attachmentId, filter);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getEntityEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inboxId** | **String**| Optional inbox ID | [optional] 
 **emailId** | **String**| Optional email ID | [optional] 
 **phoneId** | **String**| Optional phone ID | [optional] 
 **smsId** | **String**| Optional SMS ID | [optional] 
 **attachmentId** | **String**| Optional attachment ID | [optional] 
 **filter** | **String**| Optional type filter | [optional] 

### Return type

[**PageEntityEventItems**](PageEntityEventItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityFavorites**
> PageEntityFavouriteItems getEntityFavorites(page, size, sort, since, before, filter)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final page = 56; // int | Optional page index
final size = 56; // int | Optional page size
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final filter = filter_example; // String | Optional type filter

try {
    final result = api_instance.getEntityFavorites(page, size, sort, since, before, filter);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getEntityFavorites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **filter** | **String**| Optional type filter | [optional] 

### Return type

[**PageEntityFavouriteItems**](PageEntityFavouriteItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonPropertyAsString**
> String getJsonPropertyAsString(property, body)



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final property = property_example; // String | JSON property name or dot separated path selector such as `a.b.c`
final body = Object(); // Object | 

try {
    final result = api_instance.getJsonPropertyAsString(property, body);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getJsonPropertyAsString: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property** | **String**| JSON property name or dot separated path selector such as `a.b.c` | 
 **body** | **Object**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
> UserInfoDto getUserInfo()



Get account information for your user

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();

try {
    final result = api_instance.getUserInfo();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

