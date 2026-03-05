# mailslurp.api.CampaignProbeControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCampaignProbe**](CampaignProbeControllerApi#createcampaignprobe) | **POST** /campaign-probe/probes | Create campaign probe
[**deleteCampaignProbe**](CampaignProbeControllerApi#deletecampaignprobe) | **DELETE** /campaign-probe/probes/{probeId} | Delete campaign probe
[**getCampaignProbe**](CampaignProbeControllerApi#getcampaignprobe) | **GET** /campaign-probe/probes/{probeId} | Get campaign probe
[**getCampaignProbeInsights**](CampaignProbeControllerApi#getcampaignprobeinsights) | **GET** /campaign-probe/probes/{probeId}/insights | Get campaign probe insights
[**getCampaignProbeRuns**](CampaignProbeControllerApi#getcampaignproberuns) | **GET** /campaign-probe/probes/{probeId}/runs | List campaign probe runs
[**getCampaignProbeSeries**](CampaignProbeControllerApi#getcampaignprobeseries) | **GET** /campaign-probe/probes/{probeId}/series | Get campaign probe trend series
[**getCampaignProbes**](CampaignProbeControllerApi#getcampaignprobes) | **GET** /campaign-probe/probes | List campaign probes
[**runCampaignProbeNow**](CampaignProbeControllerApi#runcampaignprobenow) | **POST** /campaign-probe/probes/{probeId}/run-now | Run campaign probe now
[**runDueCampaignProbes**](CampaignProbeControllerApi#runduecampaignprobes) | **POST** /campaign-probe/probes/run-due | Run due campaign probes for user
[**updateCampaignProbe**](CampaignProbeControllerApi#updatecampaignprobe) | **PUT** /campaign-probe/probes/{probeId} | Update campaign probe


# **createCampaignProbe**
> CampaignProbeDto createCampaignProbe(createCampaignProbeOptions)

Create campaign probe

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final createCampaignProbeOptions = CreateCampaignProbeOptions(); // CreateCampaignProbeOptions | 

try {
    final result = api_instance.createCampaignProbe(createCampaignProbeOptions);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->createCampaignProbe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCampaignProbeOptions** | [**CreateCampaignProbeOptions**](CreateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteCampaignProbe**
> deleteCampaignProbe(probeId)

Delete campaign probe

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteCampaignProbe(probeId);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->deleteCampaignProbe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbe**
> CampaignProbeDto getCampaignProbe(probeId)

Get campaign probe

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getCampaignProbe(probeId);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->getCampaignProbe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeInsights**
> CampaignProbeInsightsDto getCampaignProbeInsights(probeId, since, before)

Get campaign probe insights

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getCampaignProbeInsights(probeId, since, before);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->getCampaignProbeInsights: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**CampaignProbeInsightsDto**](CampaignProbeInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeRuns**
> List<CampaignProbeRunDto> getCampaignProbeRuns(probeId, since, before, status, limit)

List campaign probe runs

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final status = status_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getCampaignProbeRuns(probeId, since, before, status, limit);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->getCampaignProbeRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **status** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<CampaignProbeRunDto>**](CampaignProbeRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeSeries**
> CampaignProbeSeriesDto getCampaignProbeSeries(probeId, since, before, bucket)

Get campaign probe trend series

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final bucket = bucket_example; // String | 

try {
    final result = api_instance.getCampaignProbeSeries(probeId, since, before, bucket);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->getCampaignProbeSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **String**|  | [optional] [default to 'DAY']

### Return type

[**CampaignProbeSeriesDto**](CampaignProbeSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbes**
> List<CampaignProbeDto> getCampaignProbes()

List campaign probes

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();

try {
    final result = api_instance.getCampaignProbes();
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->getCampaignProbes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CampaignProbeDto>**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runCampaignProbeNow**
> CampaignProbeRunNowResult runCampaignProbeNow(probeId, createCampaignProbeRunOptions)

Run campaign probe now

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createCampaignProbeRunOptions = CreateCampaignProbeRunOptions(); // CreateCampaignProbeRunOptions | 

try {
    final result = api_instance.runCampaignProbeNow(probeId, createCampaignProbeRunOptions);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->runCampaignProbeNow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 
 **createCampaignProbeRunOptions** | [**CreateCampaignProbeRunOptions**](CreateCampaignProbeRunOptions)|  | 

### Return type

[**CampaignProbeRunNowResult**](CampaignProbeRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueCampaignProbes**
> CampaignProbeRunDueResult runDueCampaignProbes(maxRuns)

Run due campaign probes for user

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final maxRuns = 56; // int | 

try {
    final result = api_instance.runDueCampaignProbes(maxRuns);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->runDueCampaignProbes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxRuns** | **int**|  | [optional] 

### Return type

[**CampaignProbeRunDueResult**](CampaignProbeRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateCampaignProbe**
> CampaignProbeDto updateCampaignProbe(probeId, updateCampaignProbeOptions)

Update campaign probe

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CampaignProbeControllerApi();
final probeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateCampaignProbeOptions = UpdateCampaignProbeOptions(); // UpdateCampaignProbeOptions | 

try {
    final result = api_instance.updateCampaignProbe(probeId, updateCampaignProbeOptions);
    print(result);
} catch (e) {
    print('Exception when calling CampaignProbeControllerApi->updateCampaignProbe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | **String**|  | 
 **updateCampaignProbeOptions** | [**UpdateCampaignProbeOptions**](UpdateCampaignProbeOptions)|  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

