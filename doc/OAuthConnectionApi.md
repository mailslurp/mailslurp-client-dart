# mailslurp.api.OAuthConnectionApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthConnection**](OAuthConnectionApi#createoauthconnection) | **POST** /oauth-connection | Create an OAuth connection
[**exchangeAuthorizationTokenAndCreateOrUpdateInbox**](OAuthConnectionApi#exchangeauthorizationtokenandcreateorupdateinbox) | **POST** /oauth-connection/oauth-exchange/google | Exchange authorization code for access token and create inbox


# **createOAuthConnection**
> CreateOAuthConnectionResult createOAuthConnection(redirectBase, oAuthConnectionType, emailAddress)

Create an OAuth connection

Configure an inbox for OAuth sync with MailSlurp

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = OAuthConnectionApi();
final redirectBase = redirectBase_example; // String | 
final oAuthConnectionType = oAuthConnectionType_example; // String | 
final emailAddress = emailAddress_example; // String | 

try {
    final result = api_instance.createOAuthConnection(redirectBase, oAuthConnectionType, emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling OAuthConnectionApi->createOAuthConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirectBase** | **String**|  | 
 **oAuthConnectionType** | **String**|  | 
 **emailAddress** | **String**|  | [optional] 

### Return type

[**CreateOAuthConnectionResult**](CreateOAuthConnectionResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exchangeAuthorizationTokenAndCreateOrUpdateInbox**
> CreateOAuthExchangeResult exchangeAuthorizationTokenAndCreateOrUpdateInbox(authorizationCode, redirectUri)

Exchange authorization code for access token and create inbox

Exchange an OAuth code for an access token and create an inbox connection in MailSlurp

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = OAuthConnectionApi();
final authorizationCode = authorizationCode_example; // String | 
final redirectUri = redirectUri_example; // String | 

try {
    final result = api_instance.exchangeAuthorizationTokenAndCreateOrUpdateInbox(authorizationCode, redirectUri);
    print(result);
} catch (e) {
    print('Exception when calling OAuthConnectionApi->exchangeAuthorizationTokenAndCreateOrUpdateInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationCode** | **String**|  | 
 **redirectUri** | **String**|  | 

### Return type

[**CreateOAuthExchangeResult**](CreateOAuthExchangeResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

