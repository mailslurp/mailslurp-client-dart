# mailslurp.api.GuestPortalControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestPortal**](GuestPortalControllerApi#createguestportal) | **POST** /guest-portal | Create a portal page for your customers or clients to log into email accounts and view emails.
[**createGuestPortalUser**](GuestPortalControllerApi#createguestportaluser) | **POST** /guest-portal/{portalId}/user | Create a portal guest user
[**getAllGuestPortalUsers**](GuestPortalControllerApi#getallguestportalusers) | **GET** /guest-portal/user | Get all guest users for portal
[**getGuestPortal**](GuestPortalControllerApi#getguestportal) | **GET** /guest-portal/{portalId} | Get a client email portal
[**getGuestPortalUser**](GuestPortalControllerApi#getguestportaluser) | **GET** /guest-portal/{portalId}/user/{guestId} | Get guest user for portal
[**getGuestPortalUserById**](GuestPortalControllerApi#getguestportaluserbyid) | **GET** /guest-portal/user/{guestId} | Get guest user
[**getGuestPortalUsers**](GuestPortalControllerApi#getguestportalusers) | **GET** /guest-portal/{portalId}/user | Get all guest users for portal
[**getGuestPortals**](GuestPortalControllerApi#getguestportals) | **GET** /guest-portal | Get guest portals


# **createGuestPortal**
> GuestPortalDto createGuestPortal(createPortalOptions)

Create a portal page for your customers or clients to log into email accounts and view emails.

Create a guest login page for customers or clients to access assigned email addresses

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final createPortalOptions = CreatePortalOptions(); // CreatePortalOptions | 

try {
    final result = api_instance.createGuestPortal(createPortalOptions);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->createGuestPortal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPortalOptions** | [**CreatePortalOptions**](CreatePortalOptions)|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGuestPortalUser**
> GuestPortalUserCreateDto createGuestPortalUser(portalId, createPortalUserOptions)

Create a portal guest user

Add customer to portal

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final portalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createPortalUserOptions = CreatePortalUserOptions(); // CreatePortalUserOptions | 

try {
    final result = api_instance.createGuestPortalUser(portalId, createPortalUserOptions);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->createGuestPortalUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **String**|  | 
 **createPortalUserOptions** | [**CreatePortalUserOptions**](CreatePortalUserOptions)|  | 

### Return type

[**GuestPortalUserCreateDto**](GuestPortalUserCreateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGuestPortalUsers**
> PageGuestPortalUsers getAllGuestPortalUsers(portalId, search, page, size, sort, since, before)

Get all guest users for portal

Get all customers for a portal

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final portalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional portal ID
final search = search_example; // String | Optional search term
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getAllGuestPortalUsers(portalId, search, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getAllGuestPortalUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **String**| Optional portal ID | [optional] 
 **search** | **String**| Optional search term | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortal**
> GuestPortalDto getGuestPortal(portalId)

Get a client email portal

Fetch a customer guest portal

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final portalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getGuestPortal(portalId);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getGuestPortal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **String**|  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUser**
> GuestPortalUserDto getGuestPortalUser(portalId, guestId)

Get guest user for portal

Get customer for portal

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final portalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final guestId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getGuestPortalUser(portalId, guestId);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getGuestPortalUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **String**|  | 
 **guestId** | **String**|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUserById**
> GuestPortalUserDto getGuestPortalUserById(guestId)

Get guest user

Get customer by ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final guestId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getGuestPortalUserById(guestId);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getGuestPortalUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestId** | **String**|  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUsers**
> PageGuestPortalUsers getGuestPortalUsers(portalId, search, page, size, sort, since, before)

Get all guest users for portal

Get customers for a portal

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();
final portalId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final search = search_example; // String | Optional search term
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getGuestPortalUsers(portalId, search, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getGuestPortalUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **String**|  | 
 **search** | **String**| Optional search term | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortals**
> List<GuestPortalDto> getGuestPortals()

Get guest portals

Get portals

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GuestPortalControllerApi();

try {
    final result = api_instance.getGuestPortals();
    print(result);
} catch (e) {
    print('Exception when calling GuestPortalControllerApi->getGuestPortals: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GuestPortalDto>**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

