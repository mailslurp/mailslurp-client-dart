# mailslurp.api.PhoneControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](PhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**createPhoneNumber**](PhoneControllerApi#createphonenumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**deleteEmergencyAddress**](PhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**deletePhoneNumber**](PhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**getAllPhoneMessageThreads**](PhoneControllerApi#getallphonemessagethreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**getConsentStatus**](PhoneControllerApi#getconsentstatus) | **GET** /phone/consent | Get consent status
[**getEmergencyAddress**](PhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**getEmergencyAddresses**](PhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**getPhoneMessageThreadItems**](PhoneControllerApi#getphonemessagethreaditems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**getPhoneMessageThreads**](PhoneControllerApi#getphonemessagethreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**getPhoneNumber**](PhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**getPhoneNumberByName**](PhoneControllerApi#getphonenumberbyname) | **GET** /phone/numbers/by-name | Get a phone number by name
[**getPhoneNumberByPhoneNumber**](PhoneControllerApi#getphonenumberbyphonenumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**getPhoneNumbers**](PhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | Get phone numbers
[**getPhonePlans**](PhoneControllerApi#getphoneplans) | **GET** /phone/plans | Get phone plans
[**getPhonePlansAvailability**](PhoneControllerApi#getphoneplansavailability) | **GET** /phone/plans/availability | Get phone plans availability
[**getSentSmsByPhoneNumber**](PhoneControllerApi#getsentsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**getSmsByPhoneNumber**](PhoneControllerApi#getsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**sendSmsFromPhoneNumber**](PhoneControllerApi#sendsmsfromphonenumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**setConsentStatus**](PhoneControllerApi#setconsentstatus) | **POST** /phone/consent | Set consent status
[**setPhoneFavourited**](PhoneControllerApi#setphonefavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**testPhoneNumberSendSms**](PhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**updatePhoneNumber**](PhoneControllerApi#updatephonenumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**validatePhoneNumber**](PhoneControllerApi#validatephonenumber) | **POST** /phone/validate | Verify validity of a phone number


# **createEmergencyAddress**
> EmergencyAddress createEmergencyAddress(createEmergencyAddressOptions)

Create an emergency address

Add an emergency address to a phone number

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

# **createPhoneNumber**
> PhoneNumberDto createPhoneNumber(createPhoneNumberOptions)

Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.

Create new phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final createPhoneNumberOptions = CreatePhoneNumberOptions(); // CreatePhoneNumberOptions | 

try {
    final result = api_instance.createPhoneNumber(createPhoneNumberOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->createPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhoneNumberOptions** | [**CreatePhoneNumberOptions**](CreatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmergencyAddress**
> EmptyResponseDto deleteEmergencyAddress(addressId)

Delete an emergency address

Delete an emergency address

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
 **addressId** | **String**|  | 

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

Delete a phone number

Remove phone number from account

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
 **phoneNumberId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllPhoneMessageThreads**
> PagePhoneMessageThreadProjection getAllPhoneMessageThreads(page, size)

Get the latest messages for all phones

List all message threads for all phones

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getAllPhoneMessageThreads(page, size);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getAllPhoneMessageThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConsentStatus**
> ConsentStatusDto getConsentStatus()

Get consent status

Get the status of phone usage consent

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    final result = api_instance.getConsentStatus();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getConsentStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
> EmergencyAddress getEmergencyAddress(addressId)

Get an emergency address

Fetch an emergency address by ID

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
 **addressId** | **String**|  | 

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

Get emergency addresses

List emergency addresses

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

# **getPhoneMessageThreadItems**
> PagePhoneMessageThreadItemProjection getPhoneMessageThreadItems(phoneNumberId, otherNumber, page, size)

Get messages in a phone thread

List message thread messages for a phone message thread

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final otherNumber = otherNumber_example; // String | 
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getPhoneMessageThreadItems(phoneNumberId, otherNumber, page, size);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneMessageThreadItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **otherNumber** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadItemProjection**](PagePhoneMessageThreadItemProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneMessageThreads**
> PagePhoneMessageThreadProjection getPhoneMessageThreads(phoneNumberId, page, size)

Get the latest message preview for a thread

List message threads for a phone

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | 
final size = 56; // int | 

try {
    final result = api_instance.getPhoneMessageThreads(phoneNumberId, page, size);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneMessageThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**PagePhoneMessageThreadProjection**](PagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumber**
> PhoneNumberDto getPhoneNumber(phoneNumberId)

Get a phone number by ID

Get a phone number by ID

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
 **phoneNumberId** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberByName**
> PhoneNumberDto getPhoneNumberByName(name)

Get a phone number by name

Get a phone number by name

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final name = name_example; // String | 

try {
    final result = api_instance.getPhoneNumberByName(name);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumberByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberByPhoneNumber**
> PhoneNumberDto getPhoneNumberByPhoneNumber(phoneNumber)

Get a phone number by phone number

Get a phone number by phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumber = phoneNumber_example; // String | 

try {
    final result = api_instance.getPhoneNumberByPhoneNumber(phoneNumber);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumberByPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
> PagePhoneNumberProjection getPhoneNumbers(phoneCountry, page, size, sort, since, before, search, include, favourite)

Get phone numbers

List phone numbers for account

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
final search = search_example; // String | Optional search filter
final include = []; // List<String> | Optional phoneIds to include in result
final favourite = true; // bool | Optionally filter results for favourites only

try {
    final result = api_instance.getPhoneNumbers(phoneCountry, page, size, sort, since, before, search, include, favourite);
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
 **search** | **String**| Optional search filter | [optional] 
 **include** | [**List<String>**](String)| Optional phoneIds to include in result | [optional] [default to const []]
 **favourite** | **bool**| Optionally filter results for favourites only | [optional] [default to false]

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

Get phone plans

Get phone number plans

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

# **getPhonePlansAvailability**
> PhonePlanAvailability getPhonePlansAvailability()

Get phone plans availability

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    final result = api_instance.getPhonePlansAvailability();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhonePlansAvailability: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhonePlanAvailability**](PhonePlanAvailability)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsByPhoneNumber**
> PageSentSmsProjection getSentSmsByPhoneNumber(phoneNumberId, page, size, sort, since, before, search)

List sent TXT messages for a phone number

Get sent SMS messages for a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in SMS list pagination
final size = 56; // int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received before given date time
final search = search_example; // String | Optional search filter

try {
    final result = api_instance.getSentSmsByPhoneNumber(phoneNumberId, page, size, sort, since, before, search);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getSentSmsByPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **String**| Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsByPhoneNumber**
> PageSmsProjection getSmsByPhoneNumber(phoneNumberId, page, size, sort, unreadOnly, since, before, search, favourite)

List SMS messages for a phone number

Get SMS messages for a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in SMS list pagination
final size = 56; // int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final unreadOnly = true; // bool | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received before given date time
final search = search_example; // String | Optional search filter
final favourite = true; // bool | Optionally filter results for favourites only

try {
    final result = api_instance.getSmsByPhoneNumber(phoneNumberId, page, size, sort, unreadOnly, since, before, search, favourite);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getSmsByPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **unreadOnly** | **bool**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **String**| Optional search filter | [optional] 
 **favourite** | **bool**| Optionally filter results for favourites only | [optional] [default to false]

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSmsFromPhoneNumber**
> SentSmsDto sendSmsFromPhoneNumber(phoneNumberId, smsSendOptions)

Send TXT message from a phone number

Send SMS from a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsSendOptions = SmsSendOptions(); // SmsSendOptions | 

try {
    final result = api_instance.sendSmsFromPhoneNumber(phoneNumberId, smsSendOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->sendSmsFromPhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **smsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setConsentStatus**
> ConsentStatusDto setConsentStatus(agree)

Set consent status

Give or revoke consent for phone usage

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final agree = true; // bool | 

try {
    final result = api_instance.setConsentStatus(agree);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->setConsentStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agree** | **bool**|  | 

### Return type

[**ConsentStatusDto**](ConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setPhoneFavourited**
> PhoneNumberDto setPhoneFavourited(phoneNumberId, setPhoneFavouritedOptions)

Set phone favourited state

Set and return new favorite state for a phone

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of phone to set favourite state
final setPhoneFavouritedOptions = SetPhoneFavouritedOptions(); // SetPhoneFavouritedOptions | 

try {
    final result = api_instance.setPhoneFavourited(phoneNumberId, setPhoneFavouritedOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->setPhoneFavourited: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**| ID of phone to set favourite state | 
 **setPhoneFavouritedOptions** | [**SetPhoneFavouritedOptions**](SetPhoneFavouritedOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
> testPhoneNumberSendSms(phoneNumberId, testPhoneNumberOptions, xTestId)

Test sending an SMS to a number

Test a phone number by sending an SMS to it

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
 **phoneNumberId** | **String**|  | 
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

# **updatePhoneNumber**
> PhoneNumberDto updatePhoneNumber(phoneNumberId, updatePhoneNumberOptions)

Update a phone number

Set field for phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of phone to set favourite state
final updatePhoneNumberOptions = UpdatePhoneNumberOptions(); // UpdatePhoneNumberOptions | 

try {
    final result = api_instance.updatePhoneNumber(phoneNumberId, updatePhoneNumberOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->updatePhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**| ID of phone to set favourite state | 
 **updatePhoneNumberOptions** | [**UpdatePhoneNumberOptions**](UpdatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validatePhoneNumber**
> PhoneNumberValidationDto validatePhoneNumber(validatePhoneNumberOptions)

Verify validity of a phone number

Validate a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final validatePhoneNumberOptions = ValidatePhoneNumberOptions(); // ValidatePhoneNumberOptions | 

try {
    final result = api_instance.validatePhoneNumber(validatePhoneNumberOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->validatePhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberOptions** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberValidationDto**](PhoneNumberValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

