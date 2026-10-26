# mailslurp.api.ApiInboxPlacementTestControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmInboxPlacementTestSent**](ApiInboxPlacementTestControllerApi#confirminboxplacementtestsent) | **POST** /inbox-placement-tests/{id}/confirm-sent | Confirm an inbox placement test email has been sent
[**createInboxPlacementTest**](ApiInboxPlacementTestControllerApi#createinboxplacementtest) | **POST** /inbox-placement-tests | Create a new direct-send inbox placement test
[**exportInboxPlacementSeedList**](ApiInboxPlacementTestControllerApi#exportinboxplacementseedlist) | **GET** /inbox-placement-tests/{id}/seed-list.csv | Download inbox placement seed addresses as an email-platform CSV
[**exportInboxPlacementTestResults**](ApiInboxPlacementTestControllerApi#exportinboxplacementtestresults) | **GET** /inbox-placement-tests/{id}/results/export | Export inbox placement test results as CSV
[**getInboxPlacementAnalyticsBreakdown**](ApiInboxPlacementTestControllerApi#getinboxplacementanalyticsbreakdown) | **GET** /inbox-placement-tests/analytics/breakdown | Get inbox placement analytics breakdowns
[**getInboxPlacementAnalyticsSeries**](ApiInboxPlacementTestControllerApi#getinboxplacementanalyticsseries) | **GET** /inbox-placement-tests/analytics/series | Get inbox placement analytics time series
[**getInboxPlacementPublicShare**](ApiInboxPlacementTestControllerApi#getinboxplacementpublicshare) | **GET** /inbox-placement-tests/share/{shareToken} | Get a public inbox placement share
[**getInboxPlacementPublicShareAnalysis**](ApiInboxPlacementTestControllerApi#getinboxplacementpublicshareanalysis) | **GET** /inbox-placement-tests/share/{shareToken}/analysis | Get public inbox placement share analysis
[**getInboxPlacementTest**](ApiInboxPlacementTestControllerApi#getinboxplacementtest) | **GET** /inbox-placement-tests/{id} | Get inbox placement test run
[**getInboxPlacementTestAnalysis**](ApiInboxPlacementTestControllerApi#getinboxplacementtestanalysis) | **GET** /inbox-placement-tests/{id}/analysis | Get inbox placement run analysis
[**getInboxPlacementTestResults**](ApiInboxPlacementTestControllerApi#getinboxplacementtestresults) | **GET** /inbox-placement-tests/{id}/results | Get inbox placement test results
[**getInboxPlacementTests**](ApiInboxPlacementTestControllerApi#getinboxplacementtests) | **GET** /inbox-placement-tests | List inbox placement test runs
[**prepareInboxPlacementTest**](ApiInboxPlacementTestControllerApi#prepareinboxplacementtest) | **POST** /inbox-placement-tests/prepare | Prepare a direct-send inbox placement test without consuming allowance


# **confirmInboxPlacementTestSent**
> InboxPlacementTestRunDto confirmInboxPlacementTestSent(id)

Confirm an inbox placement test email has been sent

Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.confirmInboxPlacementTestSent(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->confirmInboxPlacementTestSent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxPlacementTest**
> InboxPlacementTestRunDto createInboxPlacementTest(createInboxPlacementTestOptions)

Create a new direct-send inbox placement test

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final createInboxPlacementTestOptions = CreateInboxPlacementTestOptions(); // CreateInboxPlacementTestOptions | 

try {
    final result = api_instance.createInboxPlacementTest(createInboxPlacementTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->createInboxPlacementTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxPlacementTestOptions** | [**CreateInboxPlacementTestOptions**](CreateInboxPlacementTestOptions)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportInboxPlacementSeedList**
> exportInboxPlacementSeedList(id, provider)

Download inbox placement seed addresses as an email-platform CSV

Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final provider = provider_example; // String | 

try {
    api_instance.exportInboxPlacementSeedList(id, provider);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->exportInboxPlacementSeedList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **provider** | **String**|  | [optional] [default to 'GENERIC']

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportInboxPlacementTestResults**
> exportInboxPlacementTestResults(id)

Export inbox placement test results as CSV

Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.exportInboxPlacementTestResults(id);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->exportInboxPlacementTestResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementAnalyticsBreakdown**
> InboxPlacementAnalyticsBreakdownDto getInboxPlacementAnalyticsBreakdown(since, before, senderDomain, fromEmail, limit)

Get inbox placement analytics breakdowns

Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final senderDomain = senderDomain_example; // String | 
final fromEmail = fromEmail_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getInboxPlacementAnalyticsBreakdown(since, before, senderDomain, fromEmail, limit);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementAnalyticsBreakdown: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **senderDomain** | **String**|  | [optional] 
 **fromEmail** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsBreakdownDto**](InboxPlacementAnalyticsBreakdownDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementAnalyticsSeries**
> InboxPlacementAnalyticsSeriesDto getInboxPlacementAnalyticsSeries(since, before, bucket, groupBy, senderDomain, fromEmail, runLimit, groupLimit)

Get inbox placement analytics time series

Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final bucket = bucket_example; // String | 
final groupBy = groupBy_example; // String | 
final senderDomain = senderDomain_example; // String | 
final fromEmail = fromEmail_example; // String | 
final runLimit = 56; // int | 
final groupLimit = 56; // int | 

try {
    final result = api_instance.getInboxPlacementAnalyticsSeries(since, before, bucket, groupBy, senderDomain, fromEmail, runLimit, groupLimit);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementAnalyticsSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **bucket** | **String**|  | [optional] [default to 'DAY']
 **groupBy** | **String**|  | [optional] [default to 'NONE']
 **senderDomain** | **String**|  | [optional] 
 **fromEmail** | **String**|  | [optional] 
 **runLimit** | **int**|  | [optional] 
 **groupLimit** | **int**|  | [optional] 

### Return type

[**InboxPlacementAnalyticsSeriesDto**](InboxPlacementAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementPublicShare**
> InboxPlacementPublicShareDto getInboxPlacementPublicShare(shareToken)

Get a public inbox placement share

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final shareToken = shareToken_example; // String | 

try {
    final result = api_instance.getInboxPlacementPublicShare(shareToken);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementPublicShare: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareToken** | **String**|  | 

### Return type

[**InboxPlacementPublicShareDto**](InboxPlacementPublicShareDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementPublicShareAnalysis**
> InboxPlacementAnalysisBundleDto getInboxPlacementPublicShareAnalysis(shareToken)

Get public inbox placement share analysis

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final shareToken = shareToken_example; // String | 

try {
    final result = api_instance.getInboxPlacementPublicShareAnalysis(shareToken);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementPublicShareAnalysis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareToken** | **String**|  | 

### Return type

[**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementTest**
> InboxPlacementTestRunDto getInboxPlacementTest(id)

Get inbox placement test run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getInboxPlacementTest(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementTestAnalysis**
> InboxPlacementAnalysisBundleDto getInboxPlacementTestAnalysis(id)

Get inbox placement run analysis

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getInboxPlacementTestAnalysis(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementTestAnalysis: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementTestResults**
> InboxPlacementTestResultsDto getInboxPlacementTestResults(id)

Get inbox placement test results

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getInboxPlacementTestResults(id);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementTestResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InboxPlacementTestResultsDto**](InboxPlacementTestResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxPlacementTests**
> List<InboxPlacementTestRunDto> getInboxPlacementTests(limit)

List inbox placement test runs

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final limit = 56; // int | 

try {
    final result = api_instance.getInboxPlacementTests(limit);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->getInboxPlacementTests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**List<InboxPlacementTestRunDto>**](InboxPlacementTestRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **prepareInboxPlacementTest**
> InboxPlacementTestRunDto prepareInboxPlacementTest(createInboxPlacementTestOptions)

Prepare a direct-send inbox placement test without consuming allowance

Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInboxPlacementTestControllerApi();
final createInboxPlacementTestOptions = CreateInboxPlacementTestOptions(); // CreateInboxPlacementTestOptions | 

try {
    final result = api_instance.prepareInboxPlacementTest(createInboxPlacementTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiInboxPlacementTestControllerApi->prepareInboxPlacementTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxPlacementTestOptions** | [**CreateInboxPlacementTestOptions**](CreateInboxPlacementTestOptions)|  | 

### Return type

[**InboxPlacementTestRunDto**](InboxPlacementTestRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

