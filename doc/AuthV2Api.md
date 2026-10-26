# mailslurp.api.AuthV2Api

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authV2AccountSwitch**](AuthV2Api#authv2accountswitch) | **POST** /auth/v2/account/switch | Switch the account bound to an Auth v2 session
[**authV2Bootstrap**](AuthV2Api#authv2bootstrap) | **POST** /auth/v2/bootstrap | Bootstrap an existing Auth v2 session
[**authV2EnvironmentSwitch**](AuthV2Api#authv2environmentswitch) | **POST** /auth/v2/environment/{targetUserId}/switch | Switch the environment bound to an Auth v2 session
[**authV2Logout**](AuthV2Api#authv2logout) | **POST** /auth/v2/logout | Revoke an Auth v2 session
[**authV2PasswordLogin**](AuthV2Api#authv2passwordlogin) | **POST** /auth/v2/password/login | Create an Auth v2 session using a password
[**authV2ProviderCallback**](AuthV2Api#authv2providercallback) | **GET** /auth/v2/callback/{providerKind} | Redeem a staging provider handoff and continue to the app
[**emailCallback**](AuthV2Api#emailcallback) | **GET** /auth/v2/callback/email | 
[**emailCallbackComplete**](AuthV2Api#emailcallbackcomplete) | **POST** /auth/v2/callback/email/complete | 
[**emailCallbackContinue**](AuthV2Api#emailcallbackcontinue) | **GET** /auth/v2/callback/email/continue | 
[**emailCallbackContinueScript**](AuthV2Api#emailcallbackcontinuescript) | **GET** /auth/v2/callback/email/continue.js | 
[**emailCallbackHead**](AuthV2Api#emailcallbackhead) | **HEAD** /auth/v2/callback/email | 


# **authV2AccountSwitch**
> AuthV2BootstrapDto authV2AccountSwitch(switchAccountOptions)

Switch the account bound to an Auth v2 session

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final switchAccountOptions = SwitchAccountOptions(); // SwitchAccountOptions | 

try {
    final result = api_instance.authV2AccountSwitch(switchAccountOptions);
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->authV2AccountSwitch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **switchAccountOptions** | [**SwitchAccountOptions**](SwitchAccountOptions)|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authV2Bootstrap**
> AuthV2BootstrapDto authV2Bootstrap(authV2BootstrapOptions)

Bootstrap an existing Auth v2 session

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final authV2BootstrapOptions = AuthV2BootstrapOptions(); // AuthV2BootstrapOptions | 

try {
    final result = api_instance.authV2Bootstrap(authV2BootstrapOptions);
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->authV2Bootstrap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authV2BootstrapOptions** | [**AuthV2BootstrapOptions**](AuthV2BootstrapOptions)|  | [optional] 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authV2EnvironmentSwitch**
> AuthV2BootstrapDto authV2EnvironmentSwitch(targetUserId)

Switch the environment bound to an Auth v2 session

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final targetUserId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.authV2EnvironmentSwitch(targetUserId);
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->authV2EnvironmentSwitch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetUserId** | **String**|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authV2Logout**
> authV2Logout()

Revoke an Auth v2 session

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();

try {
    api_instance.authV2Logout();
} catch (e) {
    print('Exception when calling AuthV2Api->authV2Logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authV2PasswordLogin**
> AuthV2BootstrapDto authV2PasswordLogin(authV2PasswordLoginOptions)

Create an Auth v2 session using a password

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final authV2PasswordLoginOptions = AuthV2PasswordLoginOptions(); // AuthV2PasswordLoginOptions | 

try {
    final result = api_instance.authV2PasswordLogin(authV2PasswordLoginOptions);
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->authV2PasswordLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authV2PasswordLoginOptions** | [**AuthV2PasswordLoginOptions**](AuthV2PasswordLoginOptions)|  | 

### Return type

[**AuthV2BootstrapDto**](AuthV2BootstrapDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authV2ProviderCallback**
> authV2ProviderCallback(providerKind, code)

Redeem a staging provider handoff and continue to the app

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final providerKind = providerKind_example; // String | 
final code = code_example; // String | 

try {
    api_instance.authV2ProviderCallback(providerKind, code);
} catch (e) {
    print('Exception when calling AuthV2Api->authV2ProviderCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerKind** | **String**|  | 
 **code** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emailCallback**
> emailCallback(code)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final code = code_example; // String | 

try {
    api_instance.emailCallback(code);
} catch (e) {
    print('Exception when calling AuthV2Api->emailCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emailCallbackComplete**
> emailCallbackComplete(attempt)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final attempt = attempt_example; // String | 

try {
    api_instance.emailCallbackComplete(attempt);
} catch (e) {
    print('Exception when calling AuthV2Api->emailCallbackComplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attempt** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emailCallbackContinue**
> String emailCallbackContinue(attempt)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();
final attempt = attempt_example; // String | 

try {
    final result = api_instance.emailCallbackContinue(attempt);
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->emailCallbackContinue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attempt** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emailCallbackContinueScript**
> String emailCallbackContinueScript()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();

try {
    final result = api_instance.emailCallbackContinueScript();
    print(result);
} catch (e) {
    print('Exception when calling AuthV2Api->emailCallbackContinueScript: $e\n');
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
 - **Accept**: application/javascript;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emailCallbackHead**
> emailCallbackHead()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AuthV2Api();

try {
    api_instance.emailCallbackHead();
} catch (e) {
    print('Exception when calling AuthV2Api->emailCallbackHead: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

