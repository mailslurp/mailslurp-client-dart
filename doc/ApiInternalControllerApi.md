# mailslurp.api.ApiInternalControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSamlUserOrCreate**](ApiInternalControllerApi#getsamluserorcreate) | **POST** /internal/saml/user | 


# **getSamlUserOrCreate**
> UserDto getSamlUserOrCreate(key, getOrCreateSamlUserOptions)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiInternalControllerApi();
final key = key_example; // String | 
final getOrCreateSamlUserOptions = GetOrCreateSamlUserOptions(); // GetOrCreateSamlUserOptions | 

try { 
    final result = api_instance.getSamlUserOrCreate(key, getOrCreateSamlUserOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiInternalControllerApi->getSamlUserOrCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 
 **getOrCreateSamlUserOptions** | [**GetOrCreateSamlUserOptions**](GetOrCreateSamlUserOptions)|  | 

### Return type

[**UserDto**](UserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

