# mailslurp.api.ApiUserControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJsonPropertyAsString**](ApiUserControllerApi#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](ApiUserControllerApi#getuserinfo) | **GET** /user/info | 


# **getJsonPropertyAsString**
> String getJsonPropertyAsString(property, body)



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiUserControllerApi();
final property = property_example; // String | JSON property name or dot separated path selector such as `a.b.c`
final body = Object(); // Object | 

try { 
    final result = api_instance.getJsonPropertyAsString(property, body);
    print(result);
} catch (e) {
    print('Exception when calling ApiUserControllerApi->getJsonPropertyAsString: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property** | **String**| JSON property name or dot separated path selector such as `a.b.c` | 
 **body** | **Object**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
> UserInfoDto getUserInfo()



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiUserControllerApi();

try { 
    final result = api_instance.getUserInfo();
    print(result);
} catch (e) {
    print('Exception when calling ApiUserControllerApi->getUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

