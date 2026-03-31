# mailslurp.api.MissedSmsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedSmsMessages**](MissedSmsControllerApi#getallmissedsmsmessages) | **GET** /missed-sms | Get all missed SMS messages in paginated format
[**getMissedSmsCount**](MissedSmsControllerApi#getmissedsmscount) | **GET** /missed-sms/count | Get missed SMS count
[**getMissedSmsMessage**](MissedSmsControllerApi#getmissedsmsmessage) | **GET** /missed-sms/{missedSmsId} | Get missed SMS content


# **getAllMissedSmsMessages**
> PageMissedSmsProjection getAllMissedSmsMessages(phoneNumber, page, size, sort, since, before, search)

Get all missed SMS messages in paginated format

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MissedSmsControllerApi();
final phoneNumber = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional receiving phone number to filter missed SMS for
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter missed SMS after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter missed SMS before given date time
final search = search_example; // String | Optional search filter

try {
    final result = api_instance.getAllMissedSmsMessages(phoneNumber, page, size, sort, since, before, search);
    print(result);
} catch (e) {
    print('Exception when calling MissedSmsControllerApi->getAllMissedSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| Optional receiving phone number to filter missed SMS for | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter missed SMS after given date time | [optional] 
 **before** | **DateTime**| Optional filter missed SMS before given date time | [optional] 
 **search** | **String**| Optional search filter | [optional] 

### Return type

[**PageMissedSmsProjection**](PageMissedSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsCount**
> CountDto getMissedSmsCount()

Get missed SMS count

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MissedSmsControllerApi();

try {
    final result = api_instance.getMissedSmsCount();
    print(result);
} catch (e) {
    print('Exception when calling MissedSmsControllerApi->getMissedSmsCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsMessage**
> MissedSmsDto getMissedSmsMessage(missedSmsId)

Get missed SMS content

Returns a missed SMS with full content.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MissedSmsControllerApi();
final missedSmsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getMissedSmsMessage(missedSmsId);
    print(result);
} catch (e) {
    print('Exception when calling MissedSmsControllerApi->getMissedSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missedSmsId** | **String**|  | 

### Return type

[**MissedSmsDto**](MissedSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

