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
> String exportEntities(apiKey, exportType, outputFormat, createdEarliestTime, createdOldestTime, excludePreviouslyExported, filter, listSeparatorToken)

Export inboxes link callable via browser

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ExportControllerApi();
final apiKey = apiKey_example; // String | apiKey
final exportType = exportType_example; // String | exportType
final outputFormat = outputFormat_example; // String | outputFormat
final createdEarliestTime = 2013-10-20T19:20:30+01:00; // DateTime | createdEarliestTime
final createdOldestTime = 2013-10-20T19:20:30+01:00; // DateTime | createdOldestTime
final excludePreviouslyExported = true; // bool | excludePreviouslyExported
final filter = filter_example; // String | filter
final listSeparatorToken = listSeparatorToken_example; // String | listSeparatorToken

try { 
    final result = api_instance.exportEntities(apiKey, exportType, outputFormat, createdEarliestTime, createdOldestTime, excludePreviouslyExported, filter, listSeparatorToken);
    print(result);
} catch (e) {
    print('Exception when calling ExportControllerApi->exportEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String**| apiKey | 
 **exportType** | **String**| exportType | 
 **outputFormat** | **String**| outputFormat | 
 **createdEarliestTime** | **DateTime**| createdEarliestTime | [optional] 
 **createdOldestTime** | **DateTime**| createdOldestTime | [optional] 
 **excludePreviouslyExported** | **bool**| excludePreviouslyExported | [optional] 
 **filter** | **String**| filter | [optional] 
 **listSeparatorToken** | **String**| listSeparatorToken | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
final exportType = exportType_example; // String | exportType
final exportOptions = ExportOptions(); // ExportOptions | exportOptions
final apiKey = apiKey_example; // String | apiKey

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
 **exportType** | **String**| exportType | 
 **exportOptions** | [**ExportOptions**](ExportOptions)| exportOptions | 
 **apiKey** | **String**| apiKey | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

