# mailslurp.api.DomainControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](DomainControllerApi.md#addDomainWildcardCatchAll) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](DomainControllerApi.md#createDomain) | **POST** /domains | Create Domain
[**deleteDomain**](DomainControllerApi.md#deleteDomain) | **DELETE** /domains/{id} | Delete a domain
[**getDomain**](DomainControllerApi.md#getDomain) | **GET** /domains/{id} | Get a domain
[**getDomains**](DomainControllerApi.md#getDomains) | **GET** /domains | Get domains
[**updateDomain**](DomainControllerApi.md#updateDomain) | **PUT** /domains/{id} | Update a domain


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

var api_instance = DomainControllerApi();
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    var result = api_instance.addDomainWildcardCatchAll(id);
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->addDomainWildcardCatchAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | [default to null]

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDomain**
> DomainDto createDomain(domainOptions)

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = DomainControllerApi();
var domainOptions = CreateDomainOptions(); // CreateDomainOptions | domainOptions

try { 
    var result = api_instance.createDomain(domainOptions);
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->createDomain: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainOptions** | [**CreateDomainOptions**](CreateDomainOptions.md)| domainOptions | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = DomainControllerApi();
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    var result = api_instance.deleteDomain(id);
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->deleteDomain: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | [default to null]

### Return type

**List<String>**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomain**
> DomainDto getDomain(id)

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = DomainControllerApi();
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    var result = api_instance.getDomain(id);
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->getDomain: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | [default to null]

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = DomainControllerApi();

try { 
    var result = api_instance.getDomains();
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->getDomains: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DomainPreview>**](DomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDomain**
> DomainDto updateDomain(id, updateDomainDto)

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = DomainControllerApi();
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id
var updateDomainDto = UpdateDomainOptions(); // UpdateDomainOptions | updateDomainDto

try { 
    var result = api_instance.updateDomain(id, updateDomainDto);
    print(result);
} catch (e) {
    print("Exception when calling DomainControllerApi->updateDomain: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | [default to null]
 **updateDomainDto** | [**UpdateDomainOptions**](UpdateDomainOptions.md)| updateDomainDto | 

### Return type

[**DomainDto**](DomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

