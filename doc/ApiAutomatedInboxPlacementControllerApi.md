# mailslurp.api.ApiAutomatedInboxPlacementControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#createautomatedinboxplacementconnection) | **POST** /inbox-placement-tests/automations/connections | Create an encrypted sender connection
[**createAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#createautomatedinboxplacementschedule) | **POST** /inbox-placement-tests/automations/schedules | Create an automated inbox placement schedule
[**deleteAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#deleteautomatedinboxplacementconnection) | **DELETE** /inbox-placement-tests/automations/connections/{connectionId} | Disconnect a sender connection
[**deleteAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#deleteautomatedinboxplacementschedule) | **DELETE** /inbox-placement-tests/automations/schedules/{scheduleId} | Delete an automated inbox placement schedule
[**getAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementconnection) | **GET** /inbox-placement-tests/automations/connections/{connectionId} | Get a sender connection
[**getAutomatedInboxPlacementConnections**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementconnections) | **GET** /inbox-placement-tests/automations/connections | List sender connections
[**getAutomatedInboxPlacementExecutionEvents**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementexecutionevents) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/executions/{executionId}/events | List non-secret execution events
[**getAutomatedInboxPlacementExecutions**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementexecutions) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/executions | List schedule executions
[**getAutomatedInboxPlacementProviders**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementproviders) | **GET** /inbox-placement-tests/automations/providers | List automated inbox placement sender providers
[**getAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementschedule) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId} | Get an automated inbox placement schedule
[**getAutomatedInboxPlacementScheduleAnalyticsSeries**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementscheduleanalyticsseries) | **GET** /inbox-placement-tests/automations/schedules/{scheduleId}/analytics/series | Get automation inbox placement analytics over time
[**getAutomatedInboxPlacementSchedules**](ApiAutomatedInboxPlacementControllerApi#getautomatedinboxplacementschedules) | **GET** /inbox-placement-tests/automations/schedules | List automated inbox placement schedules
[**rotateAutomatedInboxPlacementConnectionCredentials**](ApiAutomatedInboxPlacementControllerApi#rotateautomatedinboxplacementconnectioncredentials) | **POST** /inbox-placement-tests/automations/connections/{connectionId}/credentials | Rotate sender connection credentials
[**runAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#runautomatedinboxplacementschedule) | **POST** /inbox-placement-tests/automations/schedules/{scheduleId}/run | Run an automated inbox placement schedule now
[**updateAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#updateautomatedinboxplacementconnection) | **PATCH** /inbox-placement-tests/automations/connections/{connectionId} | Update a sender connection
[**updateAutomatedInboxPlacementSchedule**](ApiAutomatedInboxPlacementControllerApi#updateautomatedinboxplacementschedule) | **PATCH** /inbox-placement-tests/automations/schedules/{scheduleId} | Update an automated inbox placement schedule
[**verifyAutomatedInboxPlacementConnection**](ApiAutomatedInboxPlacementControllerApi#verifyautomatedinboxplacementconnection) | **POST** /inbox-placement-tests/automations/connections/{connectionId}/verify | Verify a sender connection


# **createAutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto createAutomatedInboxPlacementConnection(createAutomatedInboxPlacementConnectionOptions)

Create an encrypted sender connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final createAutomatedInboxPlacementConnectionOptions = CreateAutomatedInboxPlacementConnectionOptions(); // CreateAutomatedInboxPlacementConnectionOptions | 

try {
    final result = api_instance.createAutomatedInboxPlacementConnection(createAutomatedInboxPlacementConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->createAutomatedInboxPlacementConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAutomatedInboxPlacementConnectionOptions** | [**CreateAutomatedInboxPlacementConnectionOptions**](CreateAutomatedInboxPlacementConnectionOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createAutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto createAutomatedInboxPlacementSchedule(createAutomatedInboxPlacementScheduleOptions)

Create an automated inbox placement schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final createAutomatedInboxPlacementScheduleOptions = CreateAutomatedInboxPlacementScheduleOptions(); // CreateAutomatedInboxPlacementScheduleOptions | 

try {
    final result = api_instance.createAutomatedInboxPlacementSchedule(createAutomatedInboxPlacementScheduleOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->createAutomatedInboxPlacementSchedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAutomatedInboxPlacementScheduleOptions** | [**CreateAutomatedInboxPlacementScheduleOptions**](CreateAutomatedInboxPlacementScheduleOptions)|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAutomatedInboxPlacementConnection**
> deleteAutomatedInboxPlacementConnection(connectionId)

Disconnect a sender connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteAutomatedInboxPlacementConnection(connectionId);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->deleteAutomatedInboxPlacementConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAutomatedInboxPlacementSchedule**
> deleteAutomatedInboxPlacementSchedule(scheduleId)

Delete an automated inbox placement schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteAutomatedInboxPlacementSchedule(scheduleId);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->deleteAutomatedInboxPlacementSchedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto getAutomatedInboxPlacementConnection(connectionId)

Get a sender connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAutomatedInboxPlacementConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementConnections**
> List<AutomatedInboxPlacementConnectionDto> getAutomatedInboxPlacementConnections()

List sender connections

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();

try {
    final result = api_instance.getAutomatedInboxPlacementConnections();
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementConnections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AutomatedInboxPlacementConnectionDto>**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementExecutionEvents**
> List<AutomatedInboxPlacementEventDto> getAutomatedInboxPlacementExecutionEvents(scheduleId, executionId)

List non-secret execution events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final executionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAutomatedInboxPlacementExecutionEvents(scheduleId, executionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementExecutionEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 
 **executionId** | **String**|  | 

### Return type

[**List<AutomatedInboxPlacementEventDto>**](AutomatedInboxPlacementEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementExecutions**
> List<AutomatedInboxPlacementExecutionDto> getAutomatedInboxPlacementExecutions(scheduleId, limit)

List schedule executions

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getAutomatedInboxPlacementExecutions(scheduleId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementExecutions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**List<AutomatedInboxPlacementExecutionDto>**](AutomatedInboxPlacementExecutionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementProviders**
> List<AutomatedInboxPlacementProviderDto> getAutomatedInboxPlacementProviders()

List automated inbox placement sender providers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();

try {
    final result = api_instance.getAutomatedInboxPlacementProviders();
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AutomatedInboxPlacementProviderDto>**](AutomatedInboxPlacementProviderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto getAutomatedInboxPlacementSchedule(scheduleId)

Get an automated inbox placement schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getAutomatedInboxPlacementSchedule(scheduleId);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementSchedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementScheduleAnalyticsSeries**
> InboxPlacementAnalyticsSeriesDto getAutomatedInboxPlacementScheduleAnalyticsSeries(scheduleId, since, before, bucket, runLimit)

Get automation inbox placement analytics over time

Returns chart-ready metrics for billed placement runs created by this schedule only.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final bucket = bucket_example; // String | 
final runLimit = 56; // int | 

try {
    final result = api_instance.getAutomatedInboxPlacementScheduleAnalyticsSeries(scheduleId, since, before, bucket, runLimit);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementScheduleAnalyticsSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **String**|  | [optional] [default to 'DAY']
 **runLimit** | **int**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsSeriesDto**](InboxPlacementAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAutomatedInboxPlacementSchedules**
> List<AutomatedInboxPlacementScheduleDto> getAutomatedInboxPlacementSchedules()

List automated inbox placement schedules

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();

try {
    final result = api_instance.getAutomatedInboxPlacementSchedules();
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->getAutomatedInboxPlacementSchedules: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AutomatedInboxPlacementScheduleDto>**](AutomatedInboxPlacementScheduleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **rotateAutomatedInboxPlacementConnectionCredentials**
> AutomatedInboxPlacementConnectionDto rotateAutomatedInboxPlacementConnectionCredentials(connectionId, rotateAutomatedInboxPlacementConnectionCredentialsOptions)

Rotate sender connection credentials

Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final rotateAutomatedInboxPlacementConnectionCredentialsOptions = RotateAutomatedInboxPlacementConnectionCredentialsOptions(); // RotateAutomatedInboxPlacementConnectionCredentialsOptions | 

try {
    final result = api_instance.rotateAutomatedInboxPlacementConnectionCredentials(connectionId, rotateAutomatedInboxPlacementConnectionCredentialsOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->rotateAutomatedInboxPlacementConnectionCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 
 **rotateAutomatedInboxPlacementConnectionCredentialsOptions** | [**RotateAutomatedInboxPlacementConnectionCredentialsOptions**](RotateAutomatedInboxPlacementConnectionCredentialsOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runAutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementExecutionDto runAutomatedInboxPlacementSchedule(scheduleId)

Run an automated inbox placement schedule now

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.runAutomatedInboxPlacementSchedule(scheduleId);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->runAutomatedInboxPlacementSchedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 

### Return type

[**AutomatedInboxPlacementExecutionDto**](AutomatedInboxPlacementExecutionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateAutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto updateAutomatedInboxPlacementConnection(connectionId, updateAutomatedInboxPlacementConnectionOptions)

Update a sender connection

Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateAutomatedInboxPlacementConnectionOptions = UpdateAutomatedInboxPlacementConnectionOptions(); // UpdateAutomatedInboxPlacementConnectionOptions | 

try {
    final result = api_instance.updateAutomatedInboxPlacementConnection(connectionId, updateAutomatedInboxPlacementConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->updateAutomatedInboxPlacementConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 
 **updateAutomatedInboxPlacementConnectionOptions** | [**UpdateAutomatedInboxPlacementConnectionOptions**](UpdateAutomatedInboxPlacementConnectionOptions)|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateAutomatedInboxPlacementSchedule**
> AutomatedInboxPlacementScheduleDto updateAutomatedInboxPlacementSchedule(scheduleId, updateAutomatedInboxPlacementScheduleOptions)

Update an automated inbox placement schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final scheduleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateAutomatedInboxPlacementScheduleOptions = UpdateAutomatedInboxPlacementScheduleOptions(); // UpdateAutomatedInboxPlacementScheduleOptions | 

try {
    final result = api_instance.updateAutomatedInboxPlacementSchedule(scheduleId, updateAutomatedInboxPlacementScheduleOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->updateAutomatedInboxPlacementSchedule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **String**|  | 
 **updateAutomatedInboxPlacementScheduleOptions** | [**UpdateAutomatedInboxPlacementScheduleOptions**](UpdateAutomatedInboxPlacementScheduleOptions)|  | 

### Return type

[**AutomatedInboxPlacementScheduleDto**](AutomatedInboxPlacementScheduleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyAutomatedInboxPlacementConnection**
> AutomatedInboxPlacementConnectionDto verifyAutomatedInboxPlacementConnection(connectionId)

Verify a sender connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAutomatedInboxPlacementControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.verifyAutomatedInboxPlacementConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiAutomatedInboxPlacementControllerApi->verifyAutomatedInboxPlacementConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**AutomatedInboxPlacementConnectionDto**](AutomatedInboxPlacementConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

