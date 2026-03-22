# mailslurp.api.ConsentControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkSendingConsentForEmailAddress**](ConsentControllerApi#checksendingconsentforemailaddress) | **GET** /consent/opt-in/sending-consent | 
[**getOptInIdentities**](ConsentControllerApi#getoptinidentities) | **GET** /consent/opt-in | 
[**revokeOptInConsentForEmailAddress**](ConsentControllerApi#revokeoptinconsentforemailaddress) | **DELETE** /consent/opt-in | 
[**sendOptInConsentForEmailAddress**](ConsentControllerApi#sendoptinconsentforemailaddress) | **POST** /consent/opt-in/send | Send a verification code to a user once they have explicitly submitted their email address


# **checkSendingConsentForEmailAddress**
> OptInSendingConsentDto checkSendingConsentForEmailAddress(emailAddress)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConsentControllerApi();
final emailAddress = emailAddress_example; // String | Email address to check consent for

try {
    final result = api_instance.checkSendingConsentForEmailAddress(emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling ConsentControllerApi->checkSendingConsentForEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**| Email address to check consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOptInIdentities**
> PageOptInIdentityProjection getOptInIdentities(page, size, sort)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConsentControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getOptInIdentities(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling ConsentControllerApi->getOptInIdentities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageOptInIdentityProjection**](PageOptInIdentityProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **revokeOptInConsentForEmailAddress**
> OptInSendingConsentDto revokeOptInConsentForEmailAddress(emailAddress)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConsentControllerApi();
final emailAddress = emailAddress_example; // String | Email address to revoke consent for

try {
    final result = api_instance.revokeOptInConsentForEmailAddress(emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling ConsentControllerApi->revokeOptInConsentForEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**| Email address to revoke consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendOptInConsentForEmailAddress**
> OptInConsentSendResult sendOptInConsentForEmailAddress(optInConsentOptions)

Send a verification code to a user once they have explicitly submitted their email address

Send double-opt in consent for an email address

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConsentControllerApi();
final optInConsentOptions = OptInConsentOptions(); // OptInConsentOptions | 

try {
    final result = api_instance.sendOptInConsentForEmailAddress(optInConsentOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConsentControllerApi->sendOptInConsentForEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optInConsentOptions** | [**OptInConsentOptions**](OptInConsentOptions)|  | 

### Return type

[**OptInConsentSendResult**](OptInConsentSendResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

