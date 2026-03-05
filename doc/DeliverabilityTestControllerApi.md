# mailslurp.api.DeliverabilityTestControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#canceldeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/cancel | Cancel deliverability simulation job
[**createDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#createdeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs | Create deliverability simulation job
[**createDeliverabilityTest**](DeliverabilityTestControllerApi#createdeliverabilitytest) | **POST** /test/deliverability | Create deliverability/load test
[**deleteDeliverabilityTest**](DeliverabilityTestControllerApi#deletedeliverabilitytest) | **DELETE** /test/deliverability/{testId} | Delete deliverability/load test
[**duplicateDeliverabilityTest**](DeliverabilityTestControllerApi#duplicatedeliverabilitytest) | **POST** /test/deliverability/{testId}/duplicate | Duplicate deliverability/load test
[**exportDeliverabilityTestReport**](DeliverabilityTestControllerApi#exportdeliverabilitytestreport) | **GET** /test/deliverability/{testId}/report/export | Export deliverability/load test report as PDF
[**exportDeliverabilityTestResults**](DeliverabilityTestControllerApi#exportdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results/export | Export deliverability/load test entity results as CSV
[**getDeliverabilityAnalyticsSeries**](DeliverabilityTestControllerApi#getdeliverabilityanalyticsseries) | **GET** /test/deliverability/analytics/series | Get deliverability analytics time series
[**getDeliverabilityFailureHotspots**](DeliverabilityTestControllerApi#getdeliverabilityfailurehotspots) | **GET** /test/deliverability/analytics/hotspots | Get deliverability failure hotspots
[**getDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#getdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId} | Get deliverability simulation job
[**getDeliverabilitySimulationJobEvents**](DeliverabilityTestControllerApi#getdeliverabilitysimulationjobevents) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId}/events | Get deliverability simulation job events
[**getDeliverabilityTest**](DeliverabilityTestControllerApi#getdeliverabilitytest) | **GET** /test/deliverability/{testId} | Get deliverability/load test
[**getDeliverabilityTestResults**](DeliverabilityTestControllerApi#getdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results | Get deliverability/load test entity results
[**getDeliverabilityTests**](DeliverabilityTestControllerApi#getdeliverabilitytests) | **GET** /test/deliverability | List deliverability/load tests
[**getLatestDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#getlatestdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/latest | Get latest deliverability simulation job
[**pauseDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#pausedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/pause | Pause deliverability simulation job
[**pauseDeliverabilityTest**](DeliverabilityTestControllerApi#pausedeliverabilitytest) | **POST** /test/deliverability/{testId}/pause | Pause deliverability/load test
[**pollDeliverabilityTestStatus**](DeliverabilityTestControllerApi#polldeliverabilityteststatus) | **GET** /test/deliverability/{testId}/status | Poll deliverability/load test status
[**resumeDeliverabilitySimulationJob**](DeliverabilityTestControllerApi#resumedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/resume | Resume deliverability simulation job
[**startDeliverabilityTest**](DeliverabilityTestControllerApi#startdeliverabilitytest) | **POST** /test/deliverability/{testId}/start | Start or resume deliverability/load test
[**stopDeliverabilityTest**](DeliverabilityTestControllerApi#stopdeliverabilitytest) | **POST** /test/deliverability/{testId}/stop | Stop deliverability/load test
[**updateDeliverabilityTest**](DeliverabilityTestControllerApi#updatedeliverabilitytest) | **PATCH** /test/deliverability/{testId} | Update deliverability/load test


# **cancelDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto cancelDeliverabilitySimulationJob(testId, jobId)

Cancel deliverability simulation job

Cancel a running or paused simulation job.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.cancelDeliverabilitySimulationJob(testId, jobId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->cancelDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **jobId** | **String**|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto createDeliverabilitySimulationJob(testId, createDeliverabilitySimulationJobOptions)

Create deliverability simulation job

Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDeliverabilitySimulationJobOptions = CreateDeliverabilitySimulationJobOptions(); // CreateDeliverabilitySimulationJobOptions | 

try {
    final result = api_instance.createDeliverabilitySimulationJob(testId, createDeliverabilitySimulationJobOptions);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->createDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **createDeliverabilitySimulationJobOptions** | [**CreateDeliverabilitySimulationJobOptions**](CreateDeliverabilitySimulationJobOptions)|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilityTest**
> DeliverabilityTestDto createDeliverabilityTest(createDeliverabilityTestOptions)

Create deliverability/load test

Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final createDeliverabilityTestOptions = CreateDeliverabilityTestOptions(); // CreateDeliverabilityTestOptions | 

try {
    final result = api_instance.createDeliverabilityTest(createDeliverabilityTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->createDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDeliverabilityTestOptions** | [**CreateDeliverabilityTestOptions**](CreateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDeliverabilityTest**
> DeleteResult deleteDeliverabilityTest(testId)

Delete deliverability/load test

Delete test and all persisted entity-level results.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->deleteDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeleteResult**](DeleteResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **duplicateDeliverabilityTest**
> DeliverabilityTestDto duplicateDeliverabilityTest(testId)

Duplicate deliverability/load test

Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.duplicateDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->duplicateDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestReport**
> exportDeliverabilityTestReport(testId)

Export deliverability/load test report as PDF

Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.exportDeliverabilityTestReport(testId);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->exportDeliverabilityTestReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestResults**
> exportDeliverabilityTestResults(testId, matched)

Export deliverability/load test entity results as CSV

Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final matched = true; // bool | 

try {
    api_instance.exportDeliverabilityTestResults(testId, matched);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->exportDeliverabilityTestResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **matched** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityAnalyticsSeries**
> DeliverabilityAnalyticsSeriesDto getDeliverabilityAnalyticsSeries(since, before, scope, bucket, runLimit)

Get deliverability analytics time series

Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final scope = scope_example; // String | 
final bucket = bucket_example; // String | 
final runLimit = 56; // int | 

try {
    final result = api_instance.getDeliverabilityAnalyticsSeries(since, before, scope, bucket, runLimit);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilityAnalyticsSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **scope** | **String**|  | [optional] 
 **bucket** | **String**|  | [optional] [default to 'DAY']
 **runLimit** | **int**|  | [optional] 

### Return type

[**DeliverabilityAnalyticsSeriesDto**](DeliverabilityAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityFailureHotspots**
> DeliverabilityFailureHotspotsDto getDeliverabilityFailureHotspots(since, before, scope, limit)

Get deliverability failure hotspots

Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final scope = scope_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getDeliverabilityFailureHotspots(since, before, scope, limit);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilityFailureHotspots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **scope** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**DeliverabilityFailureHotspotsDto**](DeliverabilityFailureHotspotsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto getDeliverabilitySimulationJob(testId, jobId)

Get deliverability simulation job

Get simulation job status and progress counters.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDeliverabilitySimulationJob(testId, jobId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **jobId** | **String**|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJobEvents**
> DeliverabilitySimulationJobEventPageDto getDeliverabilitySimulationJobEvents(testId, jobId, page, size, sort)

Get deliverability simulation job events

Get paged simulation events including send successes and failures.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 

try {
    final result = api_instance.getDeliverabilitySimulationJobEvents(testId, jobId, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilitySimulationJobEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **jobId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'DESC']

### Return type

[**DeliverabilitySimulationJobEventPageDto**](DeliverabilitySimulationJobEventPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTest**
> DeliverabilityTestDto getDeliverabilityTest(testId)

Get deliverability/load test

Get deliverability test configuration and latest progress counters.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTestResults**
> DeliverabilityEntityResultPageDto getDeliverabilityTestResults(testId, matched, page, size, sort)

Get deliverability/load test entity results

Get paged per-entity expectation results with optional matched/unmatched filtering.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final matched = true; // bool | 
final page = 56; // int | 
final size = 56; // int | 
final sort = sort_example; // String | 

try {
    final result = api_instance.getDeliverabilityTestResults(testId, matched, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilityTestResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **matched** | **bool**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**|  | [optional] [default to 'ASC']

### Return type

[**DeliverabilityEntityResultPageDto**](DeliverabilityEntityResultPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTests**
> DeliverabilityTestPageDto getDeliverabilityTests(page, size, sort)

List deliverability/load tests

List deliverability tests for the authenticated account.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final page = 56; // int | Page index
final size = 56; // int | Page size
final sort = sort_example; // String | Sort direction

try {
    final result = api_instance.getDeliverabilityTests(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getDeliverabilityTests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page index | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 20]
 **sort** | **String**| Sort direction | [optional] [default to 'DESC']

### Return type

[**DeliverabilityTestPageDto**](DeliverabilityTestPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto getLatestDeliverabilitySimulationJob(testId)

Get latest deliverability simulation job

Get the most recent simulation job for a deliverability test.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getLatestDeliverabilitySimulationJob(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->getLatestDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto pauseDeliverabilitySimulationJob(testId, jobId)

Pause deliverability simulation job

Pause a running simulation job.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.pauseDeliverabilitySimulationJob(testId, jobId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->pauseDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **jobId** | **String**|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilityTest**
> DeliverabilityTestDto pauseDeliverabilityTest(testId)

Pause deliverability/load test

Pause a RUNNING or SCHEDULED deliverability test.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.pauseDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->pauseDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pollDeliverabilityTestStatus**
> DeliverabilityPollStatusResultDto pollDeliverabilityTestStatus(testId)

Poll deliverability/load test status

Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.pollDeliverabilityTestStatus(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->pollDeliverabilityTestStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityPollStatusResultDto**](DeliverabilityPollStatusResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **resumeDeliverabilitySimulationJob**
> DeliverabilitySimulationJobDto resumeDeliverabilitySimulationJob(testId, jobId)

Resume deliverability simulation job

Resume a paused simulation job.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.resumeDeliverabilitySimulationJob(testId, jobId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->resumeDeliverabilitySimulationJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **jobId** | **String**|  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **startDeliverabilityTest**
> DeliverabilityTestDto startDeliverabilityTest(testId)

Start or resume deliverability/load test

Start a CREATED test or resume a PAUSED/SCHEDULED test.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.startDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->startDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **stopDeliverabilityTest**
> DeliverabilityTestDto stopDeliverabilityTest(testId)

Stop deliverability/load test

Stop a deliverability test and mark it terminal.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.stopDeliverabilityTest(testId);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->stopDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDeliverabilityTest**
> DeliverabilityTestDto updateDeliverabilityTest(testId, updateDeliverabilityTestOptions)

Update deliverability/load test

Update metadata, timeout, and expectations for a non-running non-terminal test.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DeliverabilityTestControllerApi();
final testId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDeliverabilityTestOptions = UpdateDeliverabilityTestOptions(); // UpdateDeliverabilityTestOptions | 

try {
    final result = api_instance.updateDeliverabilityTest(testId, updateDeliverabilityTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling DeliverabilityTestControllerApi->updateDeliverabilityTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **updateDeliverabilityTestOptions** | [**UpdateDeliverabilityTestOptions**](UpdateDeliverabilityTestOptions)|  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

