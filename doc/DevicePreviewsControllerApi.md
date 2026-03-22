# mailslurp.api.DevicePreviewsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDevicePreviewRun**](DevicePreviewsControllerApi#canceldevicepreviewrun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**createDevicePreviewFeedback**](DevicePreviewsControllerApi#createdevicepreviewfeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**createDevicePreviewRun**](DevicePreviewsControllerApi#createdevicepreviewrun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**deleteDevicePreviewRun**](DevicePreviewsControllerApi#deletedevicepreviewrun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**ensureDevicePreviewRun**](DevicePreviewsControllerApi#ensuredevicepreviewrun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**getDevicePreviewFeedback**](DevicePreviewsControllerApi#getdevicepreviewfeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**getDevicePreviewFeedbackItems**](DevicePreviewsControllerApi#getdevicepreviewfeedbackitems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**getDevicePreviewRun**](DevicePreviewsControllerApi#getdevicepreviewrun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**getDevicePreviewRunProviderProgress**](DevicePreviewsControllerApi#getdevicepreviewrunproviderprogress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**getDevicePreviewRunResults**](DevicePreviewsControllerApi#getdevicepreviewrunresults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**getDevicePreviewRunScreenshot**](DevicePreviewsControllerApi#getdevicepreviewrunscreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a seeded device preview screenshot image
[**getDevicePreviewRuns**](DevicePreviewsControllerApi#getdevicepreviewruns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**getDevicePreviewRunsForAccount**](DevicePreviewsControllerApi#getdevicepreviewrunsforaccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**getDevicePreviewRunsOffsetPaginated**](DevicePreviewsControllerApi#getdevicepreviewrunsoffsetpaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**updateDevicePreviewFeedback**](DevicePreviewsControllerApi#updatedevicepreviewfeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback


# **cancelDevicePreviewRun**
> CancelDevicePreviewRunResult cancelDevicePreviewRun(runId, cancelDevicePreviewRunOptions)

Cancel a running device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final cancelDevicePreviewRunOptions = CancelDevicePreviewRunOptions(); // CancelDevicePreviewRunOptions | 

try {
    final result = api_instance.cancelDevicePreviewRun(runId, cancelDevicePreviewRunOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->cancelDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **cancelDevicePreviewRunOptions** | [**CancelDevicePreviewRunOptions**](CancelDevicePreviewRunOptions)|  | [optional] 

### Return type

[**CancelDevicePreviewRunResult**](CancelDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewFeedback**
> DevicePreviewFeedbackDto createDevicePreviewFeedback(createDevicePreviewFeedbackOptions)

Create device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final createDevicePreviewFeedbackOptions = CreateDevicePreviewFeedbackOptions(); // CreateDevicePreviewFeedbackOptions | 

try {
    final result = api_instance.createDevicePreviewFeedback(createDevicePreviewFeedbackOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewFeedbackOptions** | [**CreateDevicePreviewFeedbackOptions**](CreateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRun**
> CreateDevicePreviewRunResult createDevicePreviewRun(emailId, createDevicePreviewOptions)

Create a new device preview run for an email

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDevicePreviewOptions = CreateDevicePreviewOptions(); // CreateDevicePreviewOptions | 

try {
    final result = api_instance.createDevicePreviewRun(emailId, createDevicePreviewOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->createDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewRun**
> DeleteDevicePreviewRunResult deleteDevicePreviewRun(runId)

Delete local device preview run data

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDevicePreviewRun(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->deleteDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DeleteDevicePreviewRunResult**](DeleteDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **ensureDevicePreviewRun**
> CreateDevicePreviewRunResult ensureDevicePreviewRun(emailId, createDevicePreviewOptions)

Return active run for email or create one when none exists

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createDevicePreviewOptions = CreateDevicePreviewOptions(); // CreateDevicePreviewOptions | 

try {
    final result = api_instance.ensureDevicePreviewRun(emailId, createDevicePreviewOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->ensureDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions)|  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedback**
> DevicePreviewFeedbackDto getDevicePreviewFeedback(feedbackId)

Get a single device preview feedback item

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final feedbackId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewFeedback(feedbackId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | **String**|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedbackItems**
> DevicePreviewFeedbackListDto getDevicePreviewFeedbackItems(page, size, source_, runId, status, provider, category, search)

List device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final page = 56; // int | 
final size = 56; // int | 
final source_ = source__example; // String | 
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final status = status_example; // String | 
final provider = provider_example; // String | 
final category = category_example; // String | 
final search = search_example; // String | 

try {
    final result = api_instance.getDevicePreviewFeedbackItems(page, size, source_, runId, status, provider, category, search);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewFeedbackItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] 
 **size** | **int**|  | [optional] 
 **source_** | **String**|  | [optional] 
 **runId** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **provider** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 

### Return type

[**DevicePreviewFeedbackListDto**](DevicePreviewFeedbackListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRun**
> DevicePreviewRunDto getDevicePreviewRun(runId)

Get device preview run status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRun(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DevicePreviewRunDto**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunProviderProgress**
> DevicePreviewProviderProgressDto getDevicePreviewRunProviderProgress(runId, provider)

Get provider-level progress for a device preview run

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final provider = provider_example; // String | 

try {
    final result = api_instance.getDevicePreviewRunProviderProgress(runId, provider);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunProviderProgress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **provider** | **String**|  | 

### Return type

[**DevicePreviewProviderProgressDto**](DevicePreviewProviderProgressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunResults**
> DevicePreviewRunResultsDto getDevicePreviewRunResults(runId)

Get device preview run results

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunResults(runId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 

### Return type

[**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunScreenshot**
> String getDevicePreviewRunScreenshot(runId, screenshotId)

Get a seeded device preview screenshot image

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final runId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final screenshotId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDevicePreviewRunScreenshot(runId, screenshotId);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunScreenshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **String**|  | 
 **screenshotId** | **String**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRuns**
> List<DevicePreviewRunDto> getDevicePreviewRuns(emailId, limit)

List previous device preview runs for an email

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getDevicePreviewRuns(emailId, limit);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**List<DevicePreviewRunDto>**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsForAccount**
> List<DevicePreviewRunDto> getDevicePreviewRunsForAccount(limit)

List previous device preview runs for account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final limit = 56; // int | 

try {
    final result = api_instance.getDevicePreviewRunsForAccount(limit);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunsForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]

### Return type

[**List<DevicePreviewRunDto>**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsOffsetPaginated**
> PageDevicePreviewRunProjection getDevicePreviewRunsOffsetPaginated(emailId, page, size, sort)

List previous device preview runs for an email in paginated form

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size for paginated result list.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getDevicePreviewRunsOffsetPaginated(emailId, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->getDevicePreviewRunsOffsetPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewFeedback**
> DevicePreviewFeedbackDto updateDevicePreviewFeedback(feedbackId, updateDevicePreviewFeedbackOptions)

Update device preview feedback

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DevicePreviewsControllerApi();
final feedbackId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDevicePreviewFeedbackOptions = UpdateDevicePreviewFeedbackOptions(); // UpdateDevicePreviewFeedbackOptions | 

try {
    final result = api_instance.updateDevicePreviewFeedback(feedbackId, updateDevicePreviewFeedbackOptions);
    print(result);
} catch (e) {
    print('Exception when calling DevicePreviewsControllerApi->updateDevicePreviewFeedback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | **String**|  | 
 **updateDevicePreviewFeedbackOptions** | [**UpdateDevicePreviewFeedbackOptions**](UpdateDevicePreviewFeedbackOptions)|  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

