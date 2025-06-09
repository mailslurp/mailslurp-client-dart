# mailslurp.api.MFAControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTotpDeviceForCustom**](MFAControllerApi#createtotpdeviceforcustom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**createTotpDeviceForOtpAuthUrl**](MFAControllerApi#createtotpdeviceforotpauthurl) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**getTotpDevice**](MFAControllerApi#gettotpdevice) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**getTotpDeviceBy**](MFAControllerApi#gettotpdeviceby) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**getTotpDeviceCode**](MFAControllerApi#gettotpdevicecode) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID


# **createTotpDeviceForCustom**
> TotpDeviceDto createTotpDeviceForCustom(createTotpDeviceOtpAuthUrlOptions)

Create a TOTP device from custom options

Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MFAControllerApi();
final createTotpDeviceOtpAuthUrlOptions = CreateTotpDeviceOtpAuthUrlOptions(); // CreateTotpDeviceOtpAuthUrlOptions | 

try {
    final result = api_instance.createTotpDeviceForCustom(createTotpDeviceOtpAuthUrlOptions);
    print(result);
} catch (e) {
    print('Exception when calling MFAControllerApi->createTotpDeviceForCustom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTotpDeviceForOtpAuthUrl**
> TotpDeviceDto createTotpDeviceForOtpAuthUrl(createTotpDeviceOtpAuthUrlOptions)

Create a TOTP device from an OTP Auth URL

Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MFAControllerApi();
final createTotpDeviceOtpAuthUrlOptions = CreateTotpDeviceOtpAuthUrlOptions(); // CreateTotpDeviceOtpAuthUrlOptions | 

try {
    final result = api_instance.createTotpDeviceForOtpAuthUrl(createTotpDeviceOtpAuthUrlOptions);
    print(result);
} catch (e) {
    print('Exception when calling MFAControllerApi->createTotpDeviceForOtpAuthUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDevice**
> TotpDeviceDto getTotpDevice(id)

Get a TOTP device by ID

Get Time-Based One-Time Password (TOTP) device by its ID.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MFAControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getTotpDevice(id);
    print(result);
} catch (e) {
    print('Exception when calling MFAControllerApi->getTotpDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceBy**
> TotpDeviceOptionalDto getTotpDeviceBy(name, issuer, username)

Get a TOTP device by username, issuer, or name. Returns empty if not found.

Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MFAControllerApi();
final name = name_example; // String | Optional name filter
final issuer = issuer_example; // String | Optional issuer filter
final username = username_example; // String | Optional username filter

try {
    final result = api_instance.getTotpDeviceBy(name, issuer, username);
    print(result);
} catch (e) {
    print('Exception when calling MFAControllerApi->getTotpDeviceBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Optional name filter | [optional] 
 **issuer** | **String**| Optional issuer filter | [optional] 
 **username** | **String**| Optional username filter | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceCode**
> TotpDeviceCodeDto getTotpDeviceCode(id, at)

Get a TOTP device code by device ID

Get Time-Based One-Time Password for a device by its ID.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MFAControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final at = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getTotpDeviceCode(id, at);
    print(result);
} catch (e) {
    print('Exception when calling MFAControllerApi->getTotpDeviceCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **at** | **DateTime**|  | [optional] 

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

