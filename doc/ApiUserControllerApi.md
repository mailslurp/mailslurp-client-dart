# mailslurp.api.ApiUserControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmtpPassword**](ApiUserControllerApi#getsmtppassword) | **GET** /user/smtp/password | 
[**getSmtpUsername**](ApiUserControllerApi#getsmtpusername) | **GET** /user/smtp/username | 
[**getUserInfo**](ApiUserControllerApi#getuserinfo) | **GET** /user/info | 


# **getSmtpPassword**
> String getSmtpPassword()



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiUserControllerApi();

try { 
    final result = api_instance.getSmtpPassword();
    print(result);
} catch (e) {
    print('Exception when calling ApiUserControllerApi->getSmtpPassword: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmtpUsername**
> String getSmtpUsername()



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiUserControllerApi();

try { 
    final result = api_instance.getSmtpUsername();
    print(result);
} catch (e) {
    print('Exception when calling ApiUserControllerApi->getSmtpUsername: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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

