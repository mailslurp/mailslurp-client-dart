# mailslurp.api.ExportControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportEntities**](ExportControllerApi#exportentities) | **GET** /export | Export inboxes link callable via browser
[**getExportLink**](ExportControllerApi#getexportlink) | **POST** /export | Get export link


# **exportEntities**
> List<String> exportEntities(exportType, apiKey, outputFormat, filter, listSeparatorToken, excludePreviouslyExported, createdEarliestTime, createdOldestTime)

Export inboxes link callable via browser

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ExportControllerApi();
final exportType = exportType_example; // String | 
final apiKey = apiKey_example; // String | 
final outputFormat = outputFormat_example; // String | 
final filter = filter_example; // String | 
final listSeparatorToken = listSeparatorToken_example; // String | 
final excludePreviouslyExported = true; // bool | 
final createdEarliestTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final createdOldestTime = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.exportEntities(exportType, apiKey, outputFormat, filter, listSeparatorToken, excludePreviouslyExported, createdEarliestTime, createdOldestTime);
    print(result);
} catch (e) {
    print('Exception when calling ExportControllerApi->exportEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exportType** | **String**|  | 
 **apiKey** | **String**|  | 
 **outputFormat** | **String**|  | 
 **filter** | **String**|  | [optional] 
 **listSeparatorToken** | **String**|  | [optional] 
 **excludePreviouslyExported** | **bool**|  | [optional] 
 **createdEarliestTime** | **DateTime**|  | [optional] 
 **createdOldestTime** | **DateTime**|  | [optional] 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExportLink**
> ExportLink getExportLink(exportType, exportOptions, apiKey)

Get export link

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ExportControllerApi();
final exportType = exportType_example; // String | 
final exportOptions = ExportOptions(); // ExportOptions | 
final apiKey = apiKey_example; // String | 

try {
    final result = api_instance.getExportLink(exportType, exportOptions, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling ExportControllerApi->getExportLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exportType** | **String**|  | 
 **exportOptions** | [**ExportOptions**](ExportOptions)|  | 
 **apiKey** | **String**|  | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

