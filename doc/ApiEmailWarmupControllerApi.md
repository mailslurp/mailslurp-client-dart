# mailslurp.api.ApiEmailWarmupControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailWarmupProgram**](ApiEmailWarmupControllerApi#createemailwarmupprogram) | **POST** /email-warmup/programs | Create an email warmup program
[**deleteEmailWarmupProgram**](ApiEmailWarmupControllerApi#deleteemailwarmupprogram) | **DELETE** /email-warmup/programs/{programId} | Delete an email warmup program
[**deleteEmailWarmupSenderSeats**](ApiEmailWarmupControllerApi#deleteemailwarmupsenderseats) | **DELETE** /email-warmup/programs/sender-seats | Cancel purchased email warmup sender seats
[**getEmailWarmupOverview**](ApiEmailWarmupControllerApi#getemailwarmupoverview) | **GET** /email-warmup/programs/overview | Get operational email warmup activity and program progress
[**getEmailWarmupPlacementChecks**](ApiEmailWarmupControllerApi#getemailwarmupplacementchecks) | **GET** /email-warmup/programs/{programId}/placement-checks | List Gmail and Outlook placement checks for an email warmup program
[**getEmailWarmupProgram**](ApiEmailWarmupControllerApi#getemailwarmupprogram) | **GET** /email-warmup/programs/{programId} | Get an email warmup program
[**getEmailWarmupProgramAnalytics**](ApiEmailWarmupControllerApi#getemailwarmupprogramanalytics) | **GET** /email-warmup/programs/{programId}/analytics | Get email warmup program progress and daily activity
[**getEmailWarmupPrograms**](ApiEmailWarmupControllerApi#getemailwarmupprograms) | **GET** /email-warmup/programs | List email warmup programs
[**getEmailWarmupReadiness**](ApiEmailWarmupControllerApi#getemailwarmupreadiness) | **GET** /email-warmup/programs/{programId}/readiness | Get warmup readiness, adaptive pacing, and sender-health signals
[**getEmailWarmupSlots**](ApiEmailWarmupControllerApi#getemailwarmupslots) | **GET** /email-warmup/programs/{programId}/slots | List scheduled email warmup slots
[**getEmailWarmupUsage**](ApiEmailWarmupControllerApi#getemailwarmupusage) | **GET** /email-warmup/programs/usage | Get email warmup sender capacity, included credits, and billable usage
[**pauseEmailWarmupProgram**](ApiEmailWarmupControllerApi#pauseemailwarmupprogram) | **POST** /email-warmup/programs/{programId}/pause | Pause an email warmup program
[**resumeEmailWarmupProgram**](ApiEmailWarmupControllerApi#resumeemailwarmupprogram) | **POST** /email-warmup/programs/{programId}/resume | Resume an email warmup program
[**retryEmailWarmupProgram**](ApiEmailWarmupControllerApi#retryemailwarmupprogram) | **POST** /email-warmup/programs/{programId}/retry | Retry a system-paused email warmup program
[**startEmailWarmupProgram**](ApiEmailWarmupControllerApi#startemailwarmupprogram) | **POST** /email-warmup/programs/{programId}/start | Start an email warmup program
[**stopEmailWarmupProgram**](ApiEmailWarmupControllerApi#stopemailwarmupprogram) | **POST** /email-warmup/programs/{programId}/stop | Stop an email warmup program
[**updateEmailWarmupProgram**](ApiEmailWarmupControllerApi#updateemailwarmupprogram) | **PUT** /email-warmup/programs/{programId} | Update a draft email warmup program
[**updateEmailWarmupSenderSeats**](ApiEmailWarmupControllerApi#updateemailwarmupsenderseats) | **PUT** /email-warmup/programs/sender-seats | Update purchased email warmup sender seats


# **createEmailWarmupProgram**
> EmailWarmupProgramDto createEmailWarmupProgram(createEmailWarmupProgramOptions)

Create an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final createEmailWarmupProgramOptions = CreateEmailWarmupProgramOptions(); // CreateEmailWarmupProgramOptions | 

try {
    final result = api_instance.createEmailWarmupProgram(createEmailWarmupProgramOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->createEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmailWarmupProgramOptions** | [**CreateEmailWarmupProgramOptions**](CreateEmailWarmupProgramOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailWarmupProgram**
> deleteEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Delete an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    api_instance.deleteEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->deleteEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailWarmupSenderSeats**
> EmailWarmupUsageSummaryDto deleteEmailWarmupSenderSeats()

Cancel purchased email warmup sender seats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();

try {
    final result = api_instance.deleteEmailWarmupSenderSeats();
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->deleteEmailWarmupSenderSeats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupOverview**
> EmailWarmupOverviewDto getEmailWarmupOverview(days)

Get operational email warmup activity and program progress

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final days = 56; // int | 

try {
    final result = api_instance.getEmailWarmupOverview(days);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupOverview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int**|  | [optional] [default to 30]

### Return type

[**EmailWarmupOverviewDto**](EmailWarmupOverviewDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupPlacementChecks**
> List<EmailWarmupPlacementCheckDto> getEmailWarmupPlacementChecks(programId)

List Gmail and Outlook placement checks for an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailWarmupPlacementChecks(programId);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupPlacementChecks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 

### Return type

[**List<EmailWarmupPlacementCheckDto>**](EmailWarmupPlacementCheckDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupProgram**
> EmailWarmupProgramDto getEmailWarmupProgram(programId)

Get an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailWarmupProgram(programId);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupProgramAnalytics**
> EmailWarmupProgramAnalyticsDto getEmailWarmupProgramAnalytics(programId, days)

Get email warmup program progress and daily activity

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final days = 56; // int | 

try {
    final result = api_instance.getEmailWarmupProgramAnalytics(programId, days);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupProgramAnalytics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **days** | **int**|  | [optional] [default to 30]

### Return type

[**EmailWarmupProgramAnalyticsDto**](EmailWarmupProgramAnalyticsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupPrograms**
> EmailWarmupProgramPageDto getEmailWarmupPrograms(page, size)

List email warmup programs

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getEmailWarmupPrograms(page, size);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupPrograms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**EmailWarmupProgramPageDto**](EmailWarmupProgramPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupReadiness**
> EmailWarmupReadinessDto getEmailWarmupReadiness(programId)

Get warmup readiness, adaptive pacing, and sender-health signals

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailWarmupReadiness(programId);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupReadiness: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 

### Return type

[**EmailWarmupReadinessDto**](EmailWarmupReadinessDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupSlots**
> EmailWarmupSendSlotPageDto getEmailWarmupSlots(programId, page, size)

List scheduled email warmup slots

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getEmailWarmupSlots(programId, page, size);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupSlots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 50]

### Return type

[**EmailWarmupSendSlotPageDto**](EmailWarmupSendSlotPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailWarmupUsage**
> EmailWarmupUsageSummaryDto getEmailWarmupUsage()

Get email warmup sender capacity, included credits, and billable usage

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();

try {
    final result = api_instance.getEmailWarmupUsage();
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->getEmailWarmupUsage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseEmailWarmupProgram**
> EmailWarmupProgramDto pauseEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Pause an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    final result = api_instance.pauseEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->pauseEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **resumeEmailWarmupProgram**
> EmailWarmupProgramDto resumeEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Resume an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    final result = api_instance.resumeEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->resumeEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **retryEmailWarmupProgram**
> EmailWarmupProgramDto retryEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Retry a system-paused email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    final result = api_instance.retryEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->retryEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **startEmailWarmupProgram**
> EmailWarmupProgramDto startEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Start an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    final result = api_instance.startEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->startEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **stopEmailWarmupProgram**
> EmailWarmupProgramDto stopEmailWarmupProgram(programId, emailWarmupProgramCommandOptions)

Stop an email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final emailWarmupProgramCommandOptions = EmailWarmupProgramCommandOptions(); // EmailWarmupProgramCommandOptions | 

try {
    final result = api_instance.stopEmailWarmupProgram(programId, emailWarmupProgramCommandOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->stopEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **emailWarmupProgramCommandOptions** | [**EmailWarmupProgramCommandOptions**](EmailWarmupProgramCommandOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateEmailWarmupProgram**
> EmailWarmupProgramDto updateEmailWarmupProgram(programId, updateEmailWarmupProgramOptions)

Update a draft email warmup program

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final programId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateEmailWarmupProgramOptions = UpdateEmailWarmupProgramOptions(); // UpdateEmailWarmupProgramOptions | 

try {
    final result = api_instance.updateEmailWarmupProgram(programId, updateEmailWarmupProgramOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->updateEmailWarmupProgram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **String**|  | 
 **updateEmailWarmupProgramOptions** | [**UpdateEmailWarmupProgramOptions**](UpdateEmailWarmupProgramOptions)|  | 

### Return type

[**EmailWarmupProgramDto**](EmailWarmupProgramDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateEmailWarmupSenderSeats**
> EmailWarmupUsageSummaryDto updateEmailWarmupSenderSeats(updateEmailWarmupSenderSeatsOptions)

Update purchased email warmup sender seats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiEmailWarmupControllerApi();
final updateEmailWarmupSenderSeatsOptions = UpdateEmailWarmupSenderSeatsOptions(); // UpdateEmailWarmupSenderSeatsOptions | 

try {
    final result = api_instance.updateEmailWarmupSenderSeats(updateEmailWarmupSenderSeatsOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiEmailWarmupControllerApi->updateEmailWarmupSenderSeats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateEmailWarmupSenderSeatsOptions** | [**UpdateEmailWarmupSenderSeatsOptions**](UpdateEmailWarmupSenderSeatsOptions)|  | 

### Return type

[**EmailWarmupUsageSummaryDto**](EmailWarmupUsageSummaryDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

