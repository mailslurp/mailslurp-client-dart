# mailslurp.api.DomainMonitorControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDomainMonitor**](DomainMonitorControllerApi#createdomainmonitor) | **POST** /domain-monitor/monitors | Create domain monitor
[**createDomainMonitorAlertSink**](DomainMonitorControllerApi#createdomainmonitoralertsink) | **POST** /domain-monitor/monitors/{monitorId}/alert-sinks | Create alert sink for monitor
[**deleteDomainMonitor**](DomainMonitorControllerApi#deletedomainmonitor) | **DELETE** /domain-monitor/monitors/{monitorId} | Delete domain monitor
[**deleteDomainMonitorAlertSink**](DomainMonitorControllerApi#deletedomainmonitoralertsink) | **DELETE** /domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId} | Delete monitor alert sink
[**getDomainMonitor**](DomainMonitorControllerApi#getdomainmonitor) | **GET** /domain-monitor/monitors/{monitorId} | Get domain monitor
[**getDomainMonitorAlertSinks**](DomainMonitorControllerApi#getdomainmonitoralertsinks) | **GET** /domain-monitor/monitors/{monitorId}/alert-sinks | List alert sinks for monitor
[**getDomainMonitorInsights**](DomainMonitorControllerApi#getdomainmonitorinsights) | **GET** /domain-monitor/monitors/{monitorId}/insights | Get monitor insights
[**getDomainMonitorRuns**](DomainMonitorControllerApi#getdomainmonitorruns) | **GET** /domain-monitor/monitors/{monitorId}/runs | List monitor runs
[**getDomainMonitorSeries**](DomainMonitorControllerApi#getdomainmonitorseries) | **GET** /domain-monitor/monitors/{monitorId}/series | Get monitor trend series
[**getDomainMonitors**](DomainMonitorControllerApi#getdomainmonitors) | **GET** /domain-monitor/monitors | List domain monitors
[**runDomainMonitorNow**](DomainMonitorControllerApi#rundomainmonitornow) | **POST** /domain-monitor/monitors/{monitorId}/run-now | Run monitor now
[**runDueDomainMonitors**](DomainMonitorControllerApi#runduedomainmonitors) | **POST** /domain-monitor/monitors/run-due | Run due monitors for user
[**updateDomainMonitor**](DomainMonitorControllerApi#updatedomainmonitor) | **PUT** /domain-monitor/monitors/{monitorId} | Update domain monitor


# **createDomainMonitor**
> DomainMonitorDto createDomainMonitor(createDomainMonitorOptions)

Create domain monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final createDomainMonitorOptions = CreateDomainMonitorOptions(); // CreateDomainMonitorOptions | 

try {
    final result = api_instance.createDomainMonitor(createDomainMonitorOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->createDomainMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainMonitorOptions** | [**CreateDomainMonitorOptions**](CreateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomainMonitorAlertSink**
> DomainMonitorAlertSinkDto createDomainMonitorAlertSink(monitorId, createDomainMonitorAlertSinkOptions)

Create alert sink for monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDomainMonitorAlertSinkOptions = CreateDomainMonitorAlertSinkOptions(); // CreateDomainMonitorAlertSinkOptions | 

try {
    final result = api_instance.createDomainMonitorAlertSink(monitorId, createDomainMonitorAlertSinkOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->createDomainMonitorAlertSink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **createDomainMonitorAlertSinkOptions** | [**CreateDomainMonitorAlertSinkOptions**](CreateDomainMonitorAlertSinkOptions)|  | 

### Return type

[**DomainMonitorAlertSinkDto**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitor**
> deleteDomainMonitor(monitorId)

Delete domain monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteDomainMonitor(monitorId);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->deleteDomainMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitorAlertSink**
> deleteDomainMonitorAlertSink(monitorId, sinkId)

Delete monitor alert sink

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sinkId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteDomainMonitorAlertSink(monitorId, sinkId);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->deleteDomainMonitorAlertSink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **sinkId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitor**
> DomainMonitorDto getDomainMonitor(monitorId)

Get domain monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDomainMonitor(monitorId);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorAlertSinks**
> List<DomainMonitorAlertSinkDto> getDomainMonitorAlertSinks(monitorId)

List alert sinks for monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDomainMonitorAlertSinks(monitorId);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitorAlertSinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 

### Return type

[**List<DomainMonitorAlertSinkDto>**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorInsights**
> DomainMonitorInsightsDto getDomainMonitorInsights(monitorId, since, before)

Get monitor insights

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getDomainMonitorInsights(monitorId, since, before);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitorInsights: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**DomainMonitorInsightsDto**](DomainMonitorInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorRuns**
> List<DomainMonitorRunDto> getDomainMonitorRuns(monitorId, since, before, status, limit)

List monitor runs

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final status = status_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getDomainMonitorRuns(monitorId, since, before, status, limit);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitorRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **status** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<DomainMonitorRunDto>**](DomainMonitorRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorSeries**
> DomainMonitorSeriesDto getDomainMonitorSeries(monitorId, since, before, bucket)

Get monitor trend series

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final bucket = bucket_example; // String | 

try {
    final result = api_instance.getDomainMonitorSeries(monitorId, since, before, bucket);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitorSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **String**|  | [optional] [default to 'DAY']

### Return type

[**DomainMonitorSeriesDto**](DomainMonitorSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitors**
> List<DomainMonitorDto> getDomainMonitors()

List domain monitors

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();

try {
    final result = api_instance.getDomainMonitors();
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->getDomainMonitors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DomainMonitorDto>**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDomainMonitorNow**
> DomainMonitorRunNowResult runDomainMonitorNow(monitorId)

Run monitor now

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.runDomainMonitorNow(monitorId);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->runDomainMonitorNow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 

### Return type

[**DomainMonitorRunNowResult**](DomainMonitorRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueDomainMonitors**
> DomainMonitorRunDueResult runDueDomainMonitors(maxRuns)

Run due monitors for user

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final maxRuns = 56; // int | 

try {
    final result = api_instance.runDueDomainMonitors(maxRuns);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->runDueDomainMonitors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxRuns** | **int**|  | [optional] 

### Return type

[**DomainMonitorRunDueResult**](DomainMonitorRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomainMonitor**
> DomainMonitorDto updateDomainMonitor(monitorId, updateDomainMonitorOptions)

Update domain monitor

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorControllerApi();
final monitorId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDomainMonitorOptions = UpdateDomainMonitorOptions(); // UpdateDomainMonitorOptions | 

try {
    final result = api_instance.updateDomainMonitor(monitorId, updateDomainMonitorOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorControllerApi->updateDomainMonitor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | **String**|  | 
 **updateDomainMonitorOptions** | [**UpdateDomainMonitorOptions**](UpdateDomainMonitorOptions)|  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

