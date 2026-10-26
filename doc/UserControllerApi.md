# mailslurp.api.UserControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInboxRetentionPolicy**](UserControllerApi#createinboxretentionpolicy) | **POST** /user/inbox-retention-policies | 
[**createInboxRetentionPolicyRun**](UserControllerApi#createinboxretentionpolicyrun) | **POST** /user/inbox-retention-policies/account/run | 
[**createOrUpdateInboxRetentionPolicyForAccount**](UserControllerApi#createorupdateinboxretentionpolicyforaccount) | **POST** /user/inbox-retention-policies/account | 
[**deleteInboxRetentionPolicy**](UserControllerApi#deleteinboxretentionpolicy) | **DELETE** /user/inbox-retention-policies/{policyId} | 
[**deleteInboxRetentionPolicyForAccount**](UserControllerApi#deleteinboxretentionpolicyforaccount) | **DELETE** /user/inbox-retention-policies/account | 
[**getEntityAutomations**](UserControllerApi#getentityautomations) | **GET** /user/automations | 
[**getEntityEvents**](UserControllerApi#getentityevents) | **GET** /user/events | 
[**getEntityFavorites**](UserControllerApi#getentityfavorites) | **GET** /user/favorites | 
[**getInboxRetentionPolicy**](UserControllerApi#getinboxretentionpolicy) | **GET** /user/inbox-retention-policies/{policyId} | 
[**getInboxRetentionPolicyForAccount**](UserControllerApi#getinboxretentionpolicyforaccount) | **GET** /user/inbox-retention-policies/account | 
[**getInboxRetentionPolicyRun**](UserControllerApi#getinboxretentionpolicyrun) | **GET** /user/inbox-retention-policies/runs/{runId} | 
[**getInboxRetentionPolicyRuns**](UserControllerApi#getinboxretentionpolicyruns) | **GET** /user/inbox-retention-policies/runs | 
[**getJsonPropertyAsString**](UserControllerApi#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](UserControllerApi#getuserinfo) | **GET** /user/info | 
[**getUserStorageInsights**](UserControllerApi#getuserstorageinsights) | **GET** /user/storage/insights | 
[**listInboxRetentionPolicies**](UserControllerApi#listinboxretentionpolicies) | **GET** /user/inbox-retention-policies | 
[**updateInboxRetentionPolicy**](UserControllerApi#updateinboxretentionpolicy) | **PUT** /user/inbox-retention-policies/{policyId} | 


# **createInboxRetentionPolicy**
> InboxRetentionPolicyDto createInboxRetentionPolicy(createInboxRetentionPolicyOptions)



Create an inbox retention policy for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final createInboxRetentionPolicyOptions = CreateInboxRetentionPolicyOptions(); // CreateInboxRetentionPolicyOptions | 

try {
    final result = api_instance.createInboxRetentionPolicy(createInboxRetentionPolicyOptions);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->createInboxRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxRetentionPolicyOptions** | [**CreateInboxRetentionPolicyOptions**](CreateInboxRetentionPolicyOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxRetentionPolicyRun**
> InboxRetentionPolicyRunDto createInboxRetentionPolicyRun()



Start an asynchronous inbox retention policy run for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();

try {
    final result = api_instance.createInboxRetentionPolicyRun();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->createInboxRetentionPolicyRun: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPolicyRunDto**](InboxRetentionPolicyRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createOrUpdateInboxRetentionPolicyForAccount**
> InboxRetentionPolicyDto createOrUpdateInboxRetentionPolicyForAccount(createInboxRetentionPolicyForAccountOptions)



Create inbox retention policy for your global account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final createInboxRetentionPolicyForAccountOptions = CreateInboxRetentionPolicyForAccountOptions(); // CreateInboxRetentionPolicyForAccountOptions | 

try {
    final result = api_instance.createOrUpdateInboxRetentionPolicyForAccount(createInboxRetentionPolicyForAccountOptions);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->createOrUpdateInboxRetentionPolicyForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxRetentionPolicyForAccountOptions** | [**CreateInboxRetentionPolicyForAccountOptions**](CreateInboxRetentionPolicyForAccountOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRetentionPolicy**
> EmptyResponseDto deleteInboxRetentionPolicy(policyId)



Delete an inbox retention policy for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final policyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteInboxRetentionPolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->deleteInboxRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRetentionPolicyForAccount**
> EmptyResponseDto deleteInboxRetentionPolicyForAccount()



Delete inbox retention policy for your global account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();

try {
    final result = api_instance.deleteInboxRetentionPolicyForAccount();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->deleteInboxRetentionPolicyForAccount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

# **getInboxRetentionPolicy**
> InboxRetentionPolicyDto getInboxRetentionPolicy(policyId)



Get an inbox retention policy for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final policyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getInboxRetentionPolicy(policyId);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getInboxRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRetentionPolicyForAccount**
> InboxRetentionPolicyOptionalDto getInboxRetentionPolicyForAccount()



Get inbox retention policy for your global account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();

try {
    final result = api_instance.getInboxRetentionPolicyForAccount();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getInboxRetentionPolicyForAccount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPolicyOptionalDto**](InboxRetentionPolicyOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRetentionPolicyRun**
> InboxRetentionPolicyRunDto getInboxRetentionPolicyRun(runId)



Get a previously submitted inbox retention policy run for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getInboxRetentionPolicyRun(runId);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getInboxRetentionPolicyRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**InboxRetentionPolicyRunDto**](InboxRetentionPolicyRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRetentionPolicyRuns**
> PageInboxRetentionPolicyRunProjection getInboxRetentionPolicyRuns(page, size, sort)



List recent inbox retention policy runs for your account

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

try {
    final result = api_instance.getInboxRetentionPolicyRuns(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getInboxRetentionPolicyRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index | [optional] [default to 0]
 **size** | **int**| Optional page size | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']

### Return type

[**PageInboxRetentionPolicyRunProjection**](PageInboxRetentionPolicyRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonPropertyAsString**
> String getJsonPropertyAsString(property, jsonNode)



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
final jsonNode = JsonNode(); // JsonNode | 

try {
    final result = api_instance.getJsonPropertyAsString(property, jsonNode);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getJsonPropertyAsString: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property** | **String**| JSON property name or dot separated path selector such as `a.b.c` | 
 **jsonNode** | [**JsonNode**](JsonNode)|  | 

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

# **getUserStorageInsights**
> UserStorageInsightsDto getUserStorageInsights(limit)



Get retained storage usage insights for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final limit = 56; // int | Maximum number of inboxes and domains to return

try {
    final result = api_instance.getUserStorageInsights(limit);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getUserStorageInsights: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Maximum number of inboxes and domains to return | [optional] [default to 10]

### Return type

[**UserStorageInsightsDto**](UserStorageInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxRetentionPolicies**
> InboxRetentionPoliciesDto listInboxRetentionPolicies()



List inbox retention policies for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();

try {
    final result = api_instance.listInboxRetentionPolicies();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->listInboxRetentionPolicies: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxRetentionPoliciesDto**](InboxRetentionPoliciesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxRetentionPolicy**
> InboxRetentionPolicyDto updateInboxRetentionPolicy(policyId, updateInboxRetentionPolicyOptions)



Update an inbox retention policy for your account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = UserControllerApi();
final policyId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateInboxRetentionPolicyOptions = UpdateInboxRetentionPolicyOptions(); // UpdateInboxRetentionPolicyOptions | 

try {
    final result = api_instance.updateInboxRetentionPolicy(policyId, updateInboxRetentionPolicyOptions);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->updateInboxRetentionPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policyId** | **String**|  | 
 **updateInboxRetentionPolicyOptions** | [**UpdateInboxRetentionPolicyOptions**](UpdateInboxRetentionPolicyOptions)|  | 

### Return type

[**InboxRetentionPolicyDto**](InboxRetentionPolicyDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

