# mailslurp.api.MailServerControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**describeMailServerDomain**](MailServerControllerApi.md#describeMailServerDomain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
[**verifyEmailAddress**](MailServerControllerApi.md#verifyEmailAddress) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.


# **describeMailServerDomain**
> DescribeMailServerDomainResult describeMailServerDomain(describeOptions)

Get DNS Mail Server records for a domain

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = MailServerControllerApi();
var describeOptions = DescribeDomainOptions(); // DescribeDomainOptions | describeOptions

try { 
    var result = api_instance.describeMailServerDomain(describeOptions);
    print(result);
} catch (e) {
    print("Exception when calling MailServerControllerApi->describeMailServerDomain: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **describeOptions** | [**DescribeDomainOptions**](DescribeDomainOptions.md)| describeOptions | 

### Return type

[**DescribeMailServerDomainResult**](DescribeMailServerDomainResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmailAddress**
> EmailVerificationResult verifyEmailAddress(verifyOptions)

Verify the existence of an email address at a given mail server.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = MailServerControllerApi();
var verifyOptions = VerifyEmailAddressOptions(); // VerifyEmailAddressOptions | verifyOptions

try { 
    var result = api_instance.verifyEmailAddress(verifyOptions);
    print(result);
} catch (e) {
    print("Exception when calling MailServerControllerApi->verifyEmailAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyOptions** | [**VerifyEmailAddressOptions**](VerifyEmailAddressOptions.md)| verifyOptions | 

### Return type

[**EmailVerificationResult**](EmailVerificationResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

