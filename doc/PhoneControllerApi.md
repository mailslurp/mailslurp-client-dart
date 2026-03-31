# mailslurp.api.PhoneControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquirePhonePoolLease**](PhoneControllerApi#acquirephonepoollease) | **POST** /phone/pools/{poolId}/leases | Acquire phone pool lease
[**addAllPhoneNumbersToPhonePool**](PhoneControllerApi#addallphonenumberstophonepool) | **POST** /phone/pools/{poolId}/numbers/add-all | Add all phone numbers to phone pool
[**addPhoneNumberTags**](PhoneControllerApi#addphonenumbertags) | **POST** /phone/numbers/{phoneNumberId}/tags | Add phone number tags
[**addPhoneNumbersToPhonePool**](PhoneControllerApi#addphonenumberstophonepool) | **POST** /phone/pools/{poolId}/numbers | Add phone numbers to phone pool
[**createEmergencyAddress**](PhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**createPhoneNumber**](PhoneControllerApi#createphonenumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**createPhonePool**](PhoneControllerApi#createphonepool) | **POST** /phone/pools | Create phone pool
[**createPhoneProvisioningJob**](PhoneControllerApi#createphoneprovisioningjob) | **POST** /phone/provisioning/jobs | Create a phone provisioning job
[**deleteAllPhoneNumber**](PhoneControllerApi#deleteallphonenumber) | **DELETE** /phone/numbers | Delete all phone numbers
[**deleteEmergencyAddress**](PhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**deletePhoneMessageThreadItems**](PhoneControllerApi#deletephonemessagethreaditems) | **DELETE** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Delete messages in a phone thread
[**deletePhoneNumber**](PhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**deletePhonePool**](PhoneControllerApi#deletephonepool) | **DELETE** /phone/pools/{poolId} | Delete phone pool
[**getAllPhoneMessageThreads**](PhoneControllerApi#getallphonemessagethreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**getAllPhoneNumberReleases**](PhoneControllerApi#getallphonenumberreleases) | **GET** /phone/releases | Get all phone number releases
[**getConsentStatus**](PhoneControllerApi#getconsentstatus) | **GET** /phone/consent | Get consent status
[**getEmergencyAddress**](PhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**getEmergencyAddresses**](PhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**getOrCreatePhonePool**](PhoneControllerApi#getorcreatephonepool) | **POST** /phone/pools/get-or-create | Get or create phone pool
[**getPhoneMessageThreadItems**](PhoneControllerApi#getphonemessagethreaditems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**getPhoneMessageThreads**](PhoneControllerApi#getphonemessagethreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**getPhoneNumber**](PhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**getPhoneNumberByName**](PhoneControllerApi#getphonenumberbyname) | **GET** /phone/numbers/by-name | Get a phone number by name
[**getPhoneNumberByPhoneNumber**](PhoneControllerApi#getphonenumberbyphonenumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**getPhoneNumberLineTypeIntelligence**](PhoneControllerApi#getphonenumberlinetypeintelligence) | **POST** /phone/validate/line-type-intelligence | Get line type intelligence for a phone number
[**getPhoneNumberRelease**](PhoneControllerApi#getphonenumberrelease) | **GET** /phone/releases/{releaseId} | Get phone number release
[**getPhoneNumberTags**](PhoneControllerApi#getphonenumbertags) | **GET** /phone/numbers/{phoneNumberId}/tags | Get phone number tags
[**getPhoneNumbers**](PhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | Get phone numbers
[**getPhonePlans**](PhoneControllerApi#getphoneplans) | **GET** /phone/plans | Get phone plans
[**getPhonePlansAvailability**](PhoneControllerApi#getphoneplansavailability) | **GET** /phone/plans/availability | Get phone plans availability
[**getPhonePool**](PhoneControllerApi#getphonepool) | **GET** /phone/pools/{poolId} | Get phone pool
[**getPhonePoolByName**](PhoneControllerApi#getphonepoolbyname) | **GET** /phone/pools/by-name | Get phone pool by name
[**getPhonePools**](PhoneControllerApi#getphonepools) | **GET** /phone/pools | Get phone pools
[**getPhoneProvisioningCapabilities**](PhoneControllerApi#getphoneprovisioningcapabilities) | **GET** /phone/provisioning/capabilities | Get phone provisioning capabilities
[**getPhoneProvisioningJob**](PhoneControllerApi#getphoneprovisioningjob) | **GET** /phone/provisioning/jobs/{jobId} | Get phone provisioning job
[**getPhoneSmsPrepaidCredit**](PhoneControllerApi#getphonesmsprepaidcredit) | **GET** /phone/sms-prepaid-credits/{creditId} | Get SMS prepaid credit
[**getPhoneSmsPrepaidCredits**](PhoneControllerApi#getphonesmsprepaidcredits) | **GET** /phone/sms-prepaid-credits | Get SMS prepaid credits
[**getPhoneSummary**](PhoneControllerApi#getphonesummary) | **GET** /phone/summary | Get phone summary
[**getPhoneTags**](PhoneControllerApi#getphonetags) | **GET** /phone/tags | Get phone tags
[**getSentSmsByPhoneNumber**](PhoneControllerApi#getsentsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**getSmsByPhoneNumber**](PhoneControllerApi#getsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**reassignPhoneNumberRelease**](PhoneControllerApi#reassignphonenumberrelease) | **GET** /phone/releases/{releaseId}/reassign | Reassign phone number release
[**releasePhonePoolLease**](PhoneControllerApi#releasephonepoollease) | **DELETE** /phone/pools/{poolId}/leases/{leaseId} | Release phone pool lease
[**removePhoneNumberFromPhonePool**](PhoneControllerApi#removephonenumberfromphonepool) | **DELETE** /phone/pools/{poolId}/numbers/{phoneNumberId} | Remove phone number from phone pool
[**removePhoneNumberTags**](PhoneControllerApi#removephonenumbertags) | **DELETE** /phone/numbers/{phoneNumberId}/tags | Remove phone number tags
[**searchAvailablePhoneNumbers**](PhoneControllerApi#searchavailablephonenumbers) | **POST** /phone/provisioning/search | Search available phone numbers
[**sendSmsFromPhoneNumber**](PhoneControllerApi#sendsmsfromphonenumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**setConsentStatus**](PhoneControllerApi#setconsentstatus) | **POST** /phone/consent | Set consent status
[**setPhoneFavourited**](PhoneControllerApi#setphonefavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**setPhoneNumberTags**](PhoneControllerApi#setphonenumbertags) | **PUT** /phone/numbers/{phoneNumberId}/tags | Set phone number tags
[**testPhoneNumberSendSms**](PhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**updatePhoneNumber**](PhoneControllerApi#updatephonenumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**updatePhonePool**](PhoneControllerApi#updatephonepool) | **PUT** /phone/pools/{poolId} | Update phone pool
[**validatePhoneNumber**](PhoneControllerApi#validatephonenumber) | **POST** /phone/validate | Verify validity of a phone number


# **acquirePhonePoolLease**
> PhonePoolLeaseDto acquirePhonePoolLease(poolId, acquirePhonePoolLeaseOptions)

Acquire phone pool lease

Acquire an available phone number from the pool and mark it leased

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final acquirePhonePoolLeaseOptions = AcquirePhonePoolLeaseOptions(); // AcquirePhonePoolLeaseOptions | 

try {
    final result = api_instance.acquirePhonePoolLease(poolId, acquirePhonePoolLeaseOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->acquirePhonePoolLease: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **acquirePhonePoolLeaseOptions** | [**AcquirePhonePoolLeaseOptions**](AcquirePhonePoolLeaseOptions)|  | 

### Return type

[**PhonePoolLeaseDto**](PhonePoolLeaseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **addAllPhoneNumbersToPhonePool**
> PhonePoolDetailDto addAllPhoneNumbersToPhonePool(poolId)

Add all phone numbers to phone pool

Add all active owned phone numbers to a pool

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.addAllPhoneNumbersToPhonePool(poolId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->addAllPhoneNumbersToPhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **addPhoneNumberTags**
> PhoneNumberDto addPhoneNumberTags(phoneNumberId, phoneNumberTagsOptions)

Add phone number tags

Add one or more tags to a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final phoneNumberTagsOptions = PhoneNumberTagsOptions(); // PhoneNumberTagsOptions | 

try {
    final result = api_instance.addPhoneNumberTags(phoneNumberId, phoneNumberTagsOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->addPhoneNumberTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **phoneNumberTagsOptions** | [**PhoneNumberTagsOptions**](PhoneNumberTagsOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **addPhoneNumbersToPhonePool**
> PhonePoolDetailDto addPhoneNumbersToPhonePool(poolId, addPhonePoolNumbersOptions)

Add phone numbers to phone pool

Add one or more owned phone numbers to a pool

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final addPhonePoolNumbersOptions = AddPhonePoolNumbersOptions(); // AddPhonePoolNumbersOptions | 

try {
    final result = api_instance.addPhoneNumbersToPhonePool(poolId, addPhonePoolNumbersOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->addPhoneNumbersToPhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **addPhonePoolNumbersOptions** | [**AddPhonePoolNumbersOptions**](AddPhonePoolNumbersOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

# **createPhonePool**
> PhonePoolDetailDto createPhonePool(createPhonePoolOptions)

Create phone pool

Create a reusable pool of phone numbers for coordinated leasing

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final createPhonePoolOptions = CreatePhonePoolOptions(); // CreatePhonePoolOptions | 

try {
    final result = api_instance.createPhonePool(createPhonePoolOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->createPhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhonePoolOptions** | [**CreatePhonePoolOptions**](CreatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createPhoneProvisioningJob**
> PhoneProvisioningJobDto createPhoneProvisioningJob(createPhoneProvisioningJobOptions)

Create a phone provisioning job

Create an advanced phone provisioning job from shortlisted numbers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final createPhoneProvisioningJobOptions = CreatePhoneProvisioningJobOptions(); // CreatePhoneProvisioningJobOptions | 

try {
    final result = api_instance.createPhoneProvisioningJob(createPhoneProvisioningJobOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->createPhoneProvisioningJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhoneProvisioningJobOptions** | [**CreatePhoneProvisioningJobOptions**](CreatePhoneProvisioningJobOptions)|  | 

### Return type

[**PhoneProvisioningJobDto**](PhoneProvisioningJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllPhoneNumber**
> deleteAllPhoneNumber()

Delete all phone numbers

Remove all phone number from account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    api_instance.deleteAllPhoneNumber();
} catch (e) {
    print('Exception when calling PhoneControllerApi->deleteAllPhoneNumber: $e\n');
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

# **deletePhoneMessageThreadItems**
> EmptyResponseDto deletePhoneMessageThreadItems(phoneNumberId, otherNumber)

Delete messages in a phone thread

Delete all messages in an SMS thread

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

try {
    final result = api_instance.deletePhoneMessageThreadItems(phoneNumberId, otherNumber);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->deletePhoneMessageThreadItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **otherNumber** | **String**|  | 

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

# **deletePhonePool**
> deletePhonePool(poolId)

Delete phone pool

Delete a phone pool and release any active leases from that pool

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deletePhonePool(poolId);
} catch (e) {
    print('Exception when calling PhoneControllerApi->deletePhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 

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

# **getAllPhoneNumberReleases**
> PagePhoneNumberReleaseProjection getAllPhoneNumberReleases(page, size, sort)

Get all phone number releases

List released or deleted phone numbers

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
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getAllPhoneNumberReleases(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getAllPhoneNumberReleases: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'DESC']

### Return type

[**PagePhoneNumberReleaseProjection**](PagePhoneNumberReleaseProjection)

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

# **getOrCreatePhonePool**
> PhonePoolDetailDto getOrCreatePhonePool(getOrCreatePhonePoolOptions)

Get or create phone pool

Get a phone pool by name or create it if it does not exist

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final getOrCreatePhonePoolOptions = GetOrCreatePhonePoolOptions(); // GetOrCreatePhonePoolOptions | 

try {
    final result = api_instance.getOrCreatePhonePool(getOrCreatePhonePoolOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getOrCreatePhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getOrCreatePhonePoolOptions** | [**GetOrCreatePhonePoolOptions**](GetOrCreatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

# **getPhoneNumberLineTypeIntelligence**
> PhoneNumberLineTypeLookupDto getPhoneNumberLineTypeIntelligence(validatePhoneNumberOptions)

Get line type intelligence for a phone number

Lookup line type intelligence for a phone number

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
    final result = api_instance.getPhoneNumberLineTypeIntelligence(validatePhoneNumberOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumberLineTypeIntelligence: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberOptions** | [**ValidatePhoneNumberOptions**](ValidatePhoneNumberOptions)|  | 

### Return type

[**PhoneNumberLineTypeLookupDto**](PhoneNumberLineTypeLookupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberRelease**
> PhoneNumberReleaseProjection getPhoneNumberRelease(releaseId)

Get phone number release

Get a released or deleted phone numbers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final releaseId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getPhoneNumberRelease(releaseId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumberRelease: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **releaseId** | **String**|  | 

### Return type

[**PhoneNumberReleaseProjection**](PhoneNumberReleaseProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberTags**
> List<String> getPhoneNumberTags(phoneNumberId)

Get phone number tags

Get tags for a specific phone number

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
    final result = api_instance.getPhoneNumberTags(phoneNumberId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumberTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
> PagePhoneNumberProjection getPhoneNumbers(phoneCountry, lineType, carrierName, mobileCountryCode, mobileNetworkCode, providerLabel, page, size, sort, since, before, search, tag, include, favourite)

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
final lineType = lineType_example; // String | Optional line type filter
final carrierName = carrierName_example; // String | Optional carrier name filter
final mobileCountryCode = mobileCountryCode_example; // String | Optional mobile country code filter
final mobileNetworkCode = mobileNetworkCode_example; // String | Optional mobile network code filter
final providerLabel = providerLabel_example; // String | Optional provider label filter such as T1 or T2
final page = 56; // int | Optional page index for list pagination
final size = 56; // int | Optional page size for list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final search = search_example; // String | Optional search filter
final tag = []; // List<String> | Optional tags to filter by. A phone must include all provided tags
final include = []; // List<String> | Optional phoneIds to include in result
final favourite = true; // bool | Optionally filter results for favourites only

try {
    final result = api_instance.getPhoneNumbers(phoneCountry, lineType, carrierName, mobileCountryCode, mobileNetworkCode, providerLabel, page, size, sort, since, before, search, tag, include, favourite);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneCountry** | **String**| Optional phone country | [optional] 
 **lineType** | **String**| Optional line type filter | [optional] 
 **carrierName** | **String**| Optional carrier name filter | [optional] 
 **mobileCountryCode** | **String**| Optional mobile country code filter | [optional] 
 **mobileNetworkCode** | **String**| Optional mobile network code filter | [optional] 
 **providerLabel** | **String**| Optional provider label filter such as T1 or T2 | [optional] 
 **page** | **int**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **search** | **String**| Optional search filter | [optional] 
 **tag** | [**List<String>**](String)| Optional tags to filter by. A phone must include all provided tags | [optional] [default to const []]
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

# **getPhonePool**
> PhonePoolDetailDto getPhonePool(poolId)

Get phone pool

Get phone pool details by ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getPhonePool(poolId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePoolByName**
> PhonePoolDetailDto getPhonePoolByName(name)

Get phone pool by name

Get phone pool details by name

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
    final result = api_instance.getPhonePoolByName(name);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhonePoolByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePools**
> List<PhonePoolDto> getPhonePools()

Get phone pools

List phone pools for the authenticated user

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    final result = api_instance.getPhonePools();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhonePools: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PhonePoolDto>**](PhonePoolDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneProvisioningCapabilities**
> PhoneProviderCapabilitiesResult getPhoneProvisioningCapabilities(phoneCountry, providerLabel)

Get phone provisioning capabilities

Get supported provider-country variant capabilities for advanced provisioning

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneCountry = phoneCountry_example; // String | 
final providerLabel = providerLabel_example; // String | 

try {
    final result = api_instance.getPhoneProvisioningCapabilities(phoneCountry, providerLabel);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneProvisioningCapabilities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneCountry** | **String**|  | 
 **providerLabel** | **String**|  | [optional] 

### Return type

[**PhoneProviderCapabilitiesResult**](PhoneProviderCapabilitiesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneProvisioningJob**
> PhoneProvisioningJobDto getPhoneProvisioningJob(jobId)

Get phone provisioning job

Get advanced phone provisioning job status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final jobId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getPhoneProvisioningJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneProvisioningJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**|  | 

### Return type

[**PhoneProvisioningJobDto**](PhoneProvisioningJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSmsPrepaidCredit**
> PhoneSmsPrepaidCreditDto getPhoneSmsPrepaidCredit(creditId)

Get SMS prepaid credit

Get a specific SMS prepaid credit balance for the authenticated account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final creditId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getPhoneSmsPrepaidCredit(creditId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneSmsPrepaidCredit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditId** | **String**|  | 

### Return type

[**PhoneSmsPrepaidCreditDto**](PhoneSmsPrepaidCreditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSmsPrepaidCredits**
> PhoneSmsPrepaidCreditsDto getPhoneSmsPrepaidCredits()

Get SMS prepaid credits

List SMS prepaid credits for the authenticated account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    final result = api_instance.getPhoneSmsPrepaidCredits();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneSmsPrepaidCredits: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneSmsPrepaidCreditsDto**](PhoneSmsPrepaidCreditsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSummary**
> PhoneSummaryDto getPhoneSummary()

Get phone summary

Get overview of assigned phones

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();

try {
    final result = api_instance.getPhoneSummary();
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoneSummaryDto**](PhoneSummaryDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneTags**
> List<String> getPhoneTags(search)

Get phone tags

List all unique tags used by your phone numbers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final search = search_example; // String | Optional search filter

try {
    final result = api_instance.getPhoneTags(search);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->getPhoneTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Optional search filter | [optional] 

### Return type

**List<String>**

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

# **reassignPhoneNumberRelease**
> PhoneNumberDto reassignPhoneNumberRelease(releaseId)

Reassign phone number release

Reassign phone number that was released or deleted

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final releaseId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.reassignPhoneNumberRelease(releaseId);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->reassignPhoneNumberRelease: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **releaseId** | **String**|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **releasePhonePoolLease**
> releasePhonePoolLease(poolId, leaseId)

Release phone pool lease

Release an active phone pool lease

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final leaseId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.releasePhonePoolLease(poolId, leaseId);
} catch (e) {
    print('Exception when calling PhoneControllerApi->releasePhonePoolLease: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **leaseId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removePhoneNumberFromPhonePool**
> removePhoneNumberFromPhonePool(poolId, phoneNumberId)

Remove phone number from phone pool

Remove a phone number from a pool. If the number is leased from this pool the lease is released.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.removePhoneNumberFromPhonePool(poolId, phoneNumberId);
} catch (e) {
    print('Exception when calling PhoneControllerApi->removePhoneNumberFromPhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **phoneNumberId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removePhoneNumberTags**
> PhoneNumberDto removePhoneNumberTags(phoneNumberId, phoneNumberTagsOptions)

Remove phone number tags

Remove one or more tags from a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final phoneNumberTagsOptions = PhoneNumberTagsOptions(); // PhoneNumberTagsOptions | 

try {
    final result = api_instance.removePhoneNumberTags(phoneNumberId, phoneNumberTagsOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->removePhoneNumberTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **phoneNumberTagsOptions** | [**PhoneNumberTagsOptions**](PhoneNumberTagsOptions)|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchAvailablePhoneNumbers**
> AvailablePhoneNumbersResult searchAvailablePhoneNumbers(searchAvailablePhoneNumbersOptions)

Search available phone numbers

Search available numbers for advanced provisioning

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final searchAvailablePhoneNumbersOptions = SearchAvailablePhoneNumbersOptions(); // SearchAvailablePhoneNumbersOptions | 

try {
    final result = api_instance.searchAvailablePhoneNumbers(searchAvailablePhoneNumbersOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->searchAvailablePhoneNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchAvailablePhoneNumbersOptions** | [**SearchAvailablePhoneNumbersOptions**](SearchAvailablePhoneNumbersOptions)|  | 

### Return type

[**AvailablePhoneNumbersResult**](AvailablePhoneNumbersResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

# **setPhoneNumberTags**
> PhoneNumberDto setPhoneNumberTags(phoneNumberId, phoneNumberTagsOptions)

Set phone number tags

Replace all tags on a phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final phoneNumberTagsOptions = PhoneNumberTagsOptions(); // PhoneNumberTagsOptions | 

try {
    final result = api_instance.setPhoneNumberTags(phoneNumberId, phoneNumberTagsOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->setPhoneNumberTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | 
 **phoneNumberTagsOptions** | [**PhoneNumberTagsOptions**](PhoneNumberTagsOptions)|  | 

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

Test a phone number by sending an SMS to it. NOTE this is only for internal use to check that a phone number is working. For end-to-end phone testing see https://docs.mailslurp.com/txt-sms/

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

# **updatePhonePool**
> PhonePoolDetailDto updatePhonePool(poolId, updatePhonePoolOptions)

Update phone pool

Update phone pool metadata such as name or description

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = PhoneControllerApi();
final poolId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updatePhonePoolOptions = UpdatePhonePoolOptions(); // UpdatePhonePoolOptions | 

try {
    final result = api_instance.updatePhonePool(poolId, updatePhonePoolOptions);
    print(result);
} catch (e) {
    print('Exception when calling PhoneControllerApi->updatePhonePool: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | **String**|  | 
 **updatePhonePoolOptions** | [**UpdatePhonePoolOptions**](UpdatePhonePoolOptions)|  | 

### Return type

[**PhonePoolDetailDto**](PhonePoolDetailDto)

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

