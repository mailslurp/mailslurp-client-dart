# mailslurp.api.ApiMcpOAuthControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizationServerMetadata**](ApiMcpOAuthControllerApi#authorizationservermetadata) | **GET** /.well-known/oauth-authorization-server/mcp | 
[**authorizationServerMetadata1**](ApiMcpOAuthControllerApi#authorizationservermetadata1) | **GET** /.well-known/oauth-authorization-server | 
[**authorize**](ApiMcpOAuthControllerApi#authorize) | **GET** /mcp/oauth/authorize | 
[**protectedResourceMetadata**](ApiMcpOAuthControllerApi#protectedresourcemetadata) | **GET** /.well-known/oauth-protected-resource/mcp | 
[**protectedResourceMetadata1**](ApiMcpOAuthControllerApi#protectedresourcemetadata1) | **GET** /.well-known/oauth-protected-resource | 
[**register**](ApiMcpOAuthControllerApi#register) | **POST** /mcp/oauth/register | 
[**token**](ApiMcpOAuthControllerApi#token) | **POST** /mcp/oauth/token | 


# **authorizationServerMetadata**
> Map<String, Object> authorizationServerMetadata()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();

try {
    final result = api_instance.authorizationServerMetadata();
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->authorizationServerMetadata: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Map<String, Object>**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authorizationServerMetadata1**
> Map<String, Object> authorizationServerMetadata1()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();

try {
    final result = api_instance.authorizationServerMetadata1();
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->authorizationServerMetadata1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Map<String, Object>**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **authorize**
> Object authorize(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod, resource, scope, state)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();
final clientId = clientId_example; // String | 
final redirectUri = redirectUri_example; // String | 
final responseType = responseType_example; // String | 
final codeChallenge = codeChallenge_example; // String | 
final codeChallengeMethod = codeChallengeMethod_example; // String | 
final resource = resource_example; // String | 
final scope = scope_example; // String | 
final state = state_example; // String | 

try {
    final result = api_instance.authorize(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod, resource, scope, state);
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->authorize: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **redirectUri** | **String**|  | 
 **responseType** | **String**|  | 
 **codeChallenge** | **String**|  | 
 **codeChallengeMethod** | **String**|  | 
 **resource** | **String**|  | 
 **scope** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **protectedResourceMetadata**
> Map<String, Object> protectedResourceMetadata()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();

try {
    final result = api_instance.protectedResourceMetadata();
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->protectedResourceMetadata: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Map<String, Object>**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **protectedResourceMetadata1**
> Map<String, Object> protectedResourceMetadata1()



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();

try {
    final result = api_instance.protectedResourceMetadata1();
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->protectedResourceMetadata1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Map<String, Object>**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **register**
> Object register(mcpOAuthClientRegistrationOptions)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();
final mcpOAuthClientRegistrationOptions = McpOAuthClientRegistrationOptions(); // McpOAuthClientRegistrationOptions | 

try {
    final result = api_instance.register(mcpOAuthClientRegistrationOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->register: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mcpOAuthClientRegistrationOptions** | [**McpOAuthClientRegistrationOptions**](McpOAuthClientRegistrationOptions)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **token**
> Object token(grantType, clientId, resource, code, redirectUri, codeVerifier, refreshToken)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiMcpOAuthControllerApi();
final grantType = grantType_example; // String | 
final clientId = clientId_example; // String | 
final resource = resource_example; // String | 
final code = code_example; // String | 
final redirectUri = redirectUri_example; // String | 
final codeVerifier = codeVerifier_example; // String | 
final refreshToken = refreshToken_example; // String | 

try {
    final result = api_instance.token(grantType, clientId, resource, code, redirectUri, codeVerifier, refreshToken);
    print(result);
} catch (e) {
    print('Exception when calling ApiMcpOAuthControllerApi->token: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**|  | 
 **clientId** | **String**|  | 
 **resource** | **String**|  | 
 **code** | **String**|  | [optional] 
 **redirectUri** | **String**|  | [optional] 
 **codeVerifier** | **String**|  | [optional] 
 **refreshToken** | **String**|  | [optional] 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

