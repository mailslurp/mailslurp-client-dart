# mailslurp.api.PhoneControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](PhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | 
[**deleteEmergencyAddress**](PhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | 
[**deletePhoneNumber**](PhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | 
[**getEmergencyAddress**](PhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | 
[**getEmergencyAddresses**](PhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | 
[**getPhoneNumber**](PhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | 
[**getPhoneNumbers**](PhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | 
[**getPhonePlans**](PhoneControllerApi#getphoneplans) | **GET** /phone/plans | 
[**testPhoneNumberSendSms**](PhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | 


# **createEmergencyAddress**
> EmergencyAddress createEmergencyAddress(createEmergencyAddressOptions)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final createEmergencyAddressOptions = CreateEmergencyAddressOptions(); // CreateEmergencyAddressOptions | 

try { 
    final result = api_instance.createEmergencyAddress(createEmergencyAddressOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->createEmergencyAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmergencyAddressOptions** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions)|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmergencyAddress**
> EmptyResponseDto deleteEmergencyAddress(addressId)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final addressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.deleteEmergencyAddress(addressId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->deleteEmergencyAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressId** | [**String**]()|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deletePhoneNumber**
> deletePhoneNumber(phoneNumberId)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.deletePhoneNumber(phoneNumberId);
} catch (e) {
    print('Exception when calling PhoneControllerApi->deletePhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
> EmergencyAddress getEmergencyAddress(addressId)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final addressId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getEmergencyAddress(addressId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getEmergencyAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressId** | [**String**]()|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddresses**
> List<EmergencyAddressDto> getEmergencyAddresses()



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try { 
    final result = api_instance.getEmergencyAddresses();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getEmergencyAddresses: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<EmergencyAddressDto>**](EmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumber**
> PhoneNumberDto getPhoneNumber(phoneNumberId)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getPhoneNumber(phoneNumberId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**String**]()|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
> PagePhoneNumberProjection getPhoneNumbers(phoneCountry, page, size, sort, since, before)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneCountry = phoneCountry_example; // String | Optional phone country
final page = 56; // int | Optional page index for list pagination
final size = 56; // int | Optional page size for list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getPhoneNumbers(phoneCountry, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneCountry** | **String**| Optional phone country | [optional] 
 **page** | **int**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePlans**
> List<PhonePlanDto> getPhonePlans()



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try { 
    final result = api_instance.getPhonePlans();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhonePlans: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PhonePlanDto>**](PhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
> testPhoneNumberSendSms(phoneNumberId, testPhoneNumberOptions, xTestId)



### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final testPhoneNumberOptions = TestPhoneNumberOptions(); // TestPhoneNumberOptions | 
final xTestId = xTestId_example; // String | 

try { 
    api_instance.testPhoneNumberSendSms(phoneNumberId, testPhoneNumberOptions, xTestId);
} catch (e) {
    print('Exception when calling PhoneControllerApi->testPhoneNumberSendSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**String**]()|  | 
 **testPhoneNumberOptions** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions)|  | 
 **xTestId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

