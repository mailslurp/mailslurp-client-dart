# mailslurp.api.DomainControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](DomainControllerApi#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](DomainControllerApi#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](DomainControllerApi#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getAvailableDomains**](DomainControllerApi#getavailabledomains) | **GET** /domains/available-domains | Get all usable domains
[**getDomain**](DomainControllerApi#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomainIssues**](DomainControllerApi#getdomainissues) | **GET** /domains/issues | Get domain issues
[**getDomainWildcardCatchAllInbox**](DomainControllerApi#getdomainwildcardcatchallinbox) | **GET** /domains/{id}/wildcard | Get catch all wild card inbox for domain
[**getDomains**](DomainControllerApi#getdomains) | **GET** /domains | Get domains
[**getMailSlurpDomains**](DomainControllerApi#getmailslurpdomains) | **GET** /domains/mailslurp-domains | Get MailSlurp domains
[**updateDomain**](DomainControllerApi#updatedomain) | **PUT** /domains/{id} | Update a domain


# **addDomainWildcardCatchAll**
> DomainDto addDomainWildcardCatchAll(id)

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.addDomainWildcardCatchAll(id);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->addDomainWildcardCatchAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomain**
> DomainDto createDomain(createDomainOptions)

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final createDomainOptions = CreateDomainOptions(); // CreateDomainOptions | 

try {
    final result = api_instance.createDomain(createDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->createDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainOptions** | [**CreateDomainOptions**](CreateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomain**
> List<String> deleteDomain(id)

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.deleteDomain(id);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->deleteDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**List<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAvailableDomains**
> DomainGroupsDto getAvailableDomains(inboxType)

Get all usable domains

List all domains available for use with email address creation

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final inboxType = inboxType_example; // String | 

try {
    final result = api_instance.getAvailableDomains(inboxType);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getAvailableDomains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxType** | **String**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomain**
> DomainDto getDomain(id, checkForErrors)

Get a domain

Returns domain verification status and tokens for a given domain

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final checkForErrors = true; // bool | 

try {
    final result = api_instance.getDomain(id, checkForErrors);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **checkForErrors** | **bool**|  | [optional] 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainIssues**
> DomainIssuesDto getDomainIssues()

Get domain issues

List domain issues for domains you have created

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();

try {
    final result = api_instance.getDomainIssues();
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getDomainIssues: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainIssuesDto**](DomainIssuesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainWildcardCatchAllInbox**
> InboxDto getDomainWildcardCatchAllInbox(id)

Get catch all wild card inbox for domain

Get the catch all inbox for a domain for missed emails

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getDomainWildcardCatchAllInbox(id);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getDomainWildcardCatchAllInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomains**
> List<DomainPreview> getDomains()

Get domains

List all custom domains you have created

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();

try {
    final result = api_instance.getDomains();
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DomainPreview>**](DomainPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMailSlurpDomains**
> DomainGroupsDto getMailSlurpDomains(inboxType)

Get MailSlurp domains

List all MailSlurp domains used with non-custom email addresses

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final inboxType = inboxType_example; // String | 

try {
    final result = api_instance.getMailSlurpDomains(inboxType);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->getMailSlurpDomains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxType** | **String**|  | [optional] 

### Return type

[**DomainGroupsDto**](DomainGroupsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomain**
> DomainDto updateDomain(id, updateDomainOptions)

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateDomainOptions = UpdateDomainOptions(); // UpdateDomainOptions | 

try {
    final result = api_instance.updateDomain(id, updateDomainOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainControllerApi->updateDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateDomainOptions** | [**UpdateDomainOptions**](UpdateDomainOptions)|  | 

### Return type

[**DomainDto**](DomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

