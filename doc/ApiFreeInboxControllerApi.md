# mailslurp.api.ApiFreeInboxControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ApiFreeInboxControllerApi#create) | **POST** /tools/free-inbox | 
[**delete**](ApiFreeInboxControllerApi#delete) | **DELETE** /tools/free-inbox/{id} | 
[**read**](ApiFreeInboxControllerApi#read) | **GET** /tools/free-inbox/{id} | 


# **create**
> CreatedFreeInboxDto create(createFreeInboxOptions)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiFreeInboxControllerApi();
final createFreeInboxOptions = CreateFreeInboxOptions(); // CreateFreeInboxOptions | 

try {
    final result = api_instance.create(createFreeInboxOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiFreeInboxControllerApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFreeInboxOptions** | [**CreateFreeInboxOptions**](CreateFreeInboxOptions)|  | 

### Return type

[**CreatedFreeInboxDto**](CreatedFreeInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **delete**
> delete(id, xFreeInboxToken)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiFreeInboxControllerApi();
final id = id_example; // String | 
final xFreeInboxToken = xFreeInboxToken_example; // String | 

try {
    api_instance.delete(id, xFreeInboxToken);
} catch (e) {
    print('Exception when calling ApiFreeInboxControllerApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **xFreeInboxToken** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **read**
> FreeInboxDto read(id, xFreeInboxToken)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiFreeInboxControllerApi();
final id = id_example; // String | 
final xFreeInboxToken = xFreeInboxToken_example; // String | 

try {
    final result = api_instance.read(id, xFreeInboxToken);
    print(result);
} catch (e) {
    print('Exception when calling ApiFreeInboxControllerApi->read: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **xFreeInboxToken** | **String**|  | 

### Return type

[**FreeInboxDto**](FreeInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

