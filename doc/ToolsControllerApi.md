# mailslurp.api.ToolsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkEmailFeaturesClientSupport**](ToolsControllerApi#checkemailfeaturesclientsupport) | **POST** /tools/check-email-features-client-support | Check email client support for email HTML and CSS features
[**createNewFakeEmailAddress**](ToolsControllerApi#createnewfakeemailaddress) | **POST** /tools/fake-email | Create a new email address using the fake email domains
[**deleteNewFakeEmailAddress**](ToolsControllerApi#deletenewfakeemailaddress) | **DELETE** /tools/fake-email | Delete a fake email address using the fake email domains
[**generateBimiRecord**](ToolsControllerApi#generatebimirecord) | **POST** /tools/generate-bimi-record | Create a BIMI record policy
[**generateDmarcRecord**](ToolsControllerApi#generatedmarcrecord) | **POST** /tools/generate-dmarc-record | Create a DMARC record policy
[**generateMtaStsRecord**](ToolsControllerApi#generatemtastsrecord) | **POST** /tools/generate-mta-sts-record | Create a TLS reporting record policy
[**generateTlsReportingRecord**](ToolsControllerApi#generatetlsreportingrecord) | **POST** /tools/generate-tls-reporting-record | Create a TLS reporting record policy
[**getFakeEmailByEmailAddress**](ToolsControllerApi#getfakeemailbyemailaddress) | **GET** /tools/fake-email/byEmailAddress | 
[**getFakeEmailById**](ToolsControllerApi#getfakeemailbyid) | **GET** /tools/fake-email | Get a fake email by its ID
[**getFakeEmailRaw**](ToolsControllerApi#getfakeemailraw) | **GET** /tools/fake-email/html | Get raw fake email content
[**getFakeEmailsForAddress**](ToolsControllerApi#getfakeemailsforaddress) | **GET** /tools/fake-emails | Get fake emails for an address
[**lookupBimiDomain**](ToolsControllerApi#lookupbimidomain) | **POST** /tools/lookup-bimi-domain | Lookup a BIMI record policy
[**lookupDmarcDomain**](ToolsControllerApi#lookupdmarcdomain) | **POST** /tools/lookup-dmarc-domain | Lookup a DMARC record policy
[**lookupMtaStsDomain**](ToolsControllerApi#lookupmtastsdomain) | **POST** /tools/lookup-mta-sts-domain | Lookup a MTA-STS domain policy
[**lookupTlsReportingDomain**](ToolsControllerApi#lookuptlsreportingdomain) | **POST** /tools/lookup-tls-reporting-domain | Lookup a TLS reporting domain policy


# **checkEmailFeaturesClientSupport**
> CheckEmailFeaturesClientSupportResults checkEmailFeaturesClientSupport(checkEmailFeaturesClientSupportOptions)

Check email client support for email HTML and CSS features

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final checkEmailFeaturesClientSupportOptions = CheckEmailFeaturesClientSupportOptions(); // CheckEmailFeaturesClientSupportOptions | 

try {
    final result = api_instance.checkEmailFeaturesClientSupport(checkEmailFeaturesClientSupportOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->checkEmailFeaturesClientSupport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkEmailFeaturesClientSupportOptions** | [**CheckEmailFeaturesClientSupportOptions**](CheckEmailFeaturesClientSupportOptions)|  | 

### Return type

[**CheckEmailFeaturesClientSupportResults**](CheckEmailFeaturesClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createNewFakeEmailAddress**
> NewFakeEmailAddressResult createNewFakeEmailAddress()

Create a new email address using the fake email domains

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();

try {
    final result = api_instance.createNewFakeEmailAddress();
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->createNewFakeEmailAddress: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NewFakeEmailAddressResult**](NewFakeEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteNewFakeEmailAddress**
> deleteNewFakeEmailAddress(emailAddress)

Delete a fake email address using the fake email domains

Delete a fake email address using the fake email domains

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final emailAddress = emailAddress_example; // String | 

try {
    api_instance.deleteNewFakeEmailAddress(emailAddress);
} catch (e) {
    print('Exception when calling ToolsControllerApi->deleteNewFakeEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateBimiRecord**
> GenerateBimiRecordResults generateBimiRecord(generateBimiRecordOptions)

Create a BIMI record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final generateBimiRecordOptions = GenerateBimiRecordOptions(); // GenerateBimiRecordOptions | 

try {
    final result = api_instance.generateBimiRecord(generateBimiRecordOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->generateBimiRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateBimiRecordOptions** | [**GenerateBimiRecordOptions**](GenerateBimiRecordOptions)|  | 

### Return type

[**GenerateBimiRecordResults**](GenerateBimiRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateDmarcRecord**
> GenerateDmarcRecordResults generateDmarcRecord(generateDmarcRecordOptions)

Create a DMARC record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final generateDmarcRecordOptions = GenerateDmarcRecordOptions(); // GenerateDmarcRecordOptions | 

try {
    final result = api_instance.generateDmarcRecord(generateDmarcRecordOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->generateDmarcRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateDmarcRecordOptions** | [**GenerateDmarcRecordOptions**](GenerateDmarcRecordOptions)|  | 

### Return type

[**GenerateDmarcRecordResults**](GenerateDmarcRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateMtaStsRecord**
> GenerateMtaStsRecordResults generateMtaStsRecord(generateMtaStsRecordOptions)

Create a TLS reporting record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final generateMtaStsRecordOptions = GenerateMtaStsRecordOptions(); // GenerateMtaStsRecordOptions | 

try {
    final result = api_instance.generateMtaStsRecord(generateMtaStsRecordOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->generateMtaStsRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateMtaStsRecordOptions** | [**GenerateMtaStsRecordOptions**](GenerateMtaStsRecordOptions)|  | 

### Return type

[**GenerateMtaStsRecordResults**](GenerateMtaStsRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateTlsReportingRecord**
> GenerateTlsReportingRecordResults generateTlsReportingRecord(generateTlsReportingRecordOptions)

Create a TLS reporting record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final generateTlsReportingRecordOptions = GenerateTlsReportingRecordOptions(); // GenerateTlsReportingRecordOptions | 

try {
    final result = api_instance.generateTlsReportingRecord(generateTlsReportingRecordOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->generateTlsReportingRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateTlsReportingRecordOptions** | [**GenerateTlsReportingRecordOptions**](GenerateTlsReportingRecordOptions)|  | 

### Return type

[**GenerateTlsReportingRecordResults**](GenerateTlsReportingRecordResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailByEmailAddress**
> FakeEmailResult getFakeEmailByEmailAddress(emailAddress)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final emailAddress = emailAddress_example; // String | 

try {
    final result = api_instance.getFakeEmailByEmailAddress(emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->getFakeEmailByEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailById**
> FakeEmailResult getFakeEmailById(id)

Get a fake email by its ID

Get a fake email by its ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getFakeEmailById(id);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->getFakeEmailById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FakeEmailResult**](FakeEmailResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailRaw**
> String getFakeEmailRaw(id)

Get raw fake email content

Retrieve the raw content of a fake email by its ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getFakeEmailRaw(id);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->getFakeEmailRaw: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain;charset=utf-8, text/html;charset=utf-8, text/plain; charset=utf-8, text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getFakeEmailsForAddress**
> List<FakeEmailPreview> getFakeEmailsForAddress(emailAddress, page)

Get fake emails for an address

Get fake emails for an address

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final emailAddress = emailAddress_example; // String | 
final page = 56; // int | 

try {
    final result = api_instance.getFakeEmailsForAddress(emailAddress, page);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->getFakeEmailsForAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**|  | 
 **page** | **int**|  | [optional] 

### Return type

[**List<FakeEmailPreview>**](FakeEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupBimiDomain**
> LookupBimiDomainResults lookupBimiDomain(lookupBimiDomainOptions)

Lookup a BIMI record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final lookupBimiDomainOptions = LookupBimiDomainOptions(); // LookupBimiDomainOptions | 

try {
    final result = api_instance.lookupBimiDomain(lookupBimiDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->lookupBimiDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupBimiDomainOptions** | [**LookupBimiDomainOptions**](LookupBimiDomainOptions)|  | 

### Return type

[**LookupBimiDomainResults**](LookupBimiDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupDmarcDomain**
> LookupDmarcDomainResults lookupDmarcDomain(lookupDmarcDomainOptions)

Lookup a DMARC record policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final lookupDmarcDomainOptions = LookupDmarcDomainOptions(); // LookupDmarcDomainOptions | 

try {
    final result = api_instance.lookupDmarcDomain(lookupDmarcDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->lookupDmarcDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupDmarcDomainOptions** | [**LookupDmarcDomainOptions**](LookupDmarcDomainOptions)|  | 

### Return type

[**LookupDmarcDomainResults**](LookupDmarcDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupMtaStsDomain**
> LookupMtaStsDomainResults lookupMtaStsDomain(lookupMtaStsDomainOptions)

Lookup a MTA-STS domain policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final lookupMtaStsDomainOptions = LookupMtaStsDomainOptions(); // LookupMtaStsDomainOptions | 

try {
    final result = api_instance.lookupMtaStsDomain(lookupMtaStsDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->lookupMtaStsDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupMtaStsDomainOptions** | [**LookupMtaStsDomainOptions**](LookupMtaStsDomainOptions)|  | 

### Return type

[**LookupMtaStsDomainResults**](LookupMtaStsDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **lookupTlsReportingDomain**
> LookupTlsReportingDomainResults lookupTlsReportingDomain(lookupTlsReportingDomainOptions)

Lookup a TLS reporting domain policy

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ToolsControllerApi();
final lookupTlsReportingDomainOptions = LookupTlsReportingDomainOptions(); // LookupTlsReportingDomainOptions | 

try {
    final result = api_instance.lookupTlsReportingDomain(lookupTlsReportingDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling ToolsControllerApi->lookupTlsReportingDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lookupTlsReportingDomainOptions** | [**LookupTlsReportingDomainOptions**](LookupTlsReportingDomainOptions)|  | 

### Return type

[**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

