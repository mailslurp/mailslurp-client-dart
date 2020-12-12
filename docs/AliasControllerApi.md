# mailslurp.api.AliasControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasControllerApi.md#createAlias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](AliasControllerApi.md#deleteAlias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](AliasControllerApi.md#getAlias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliasVerification**](AliasControllerApi.md#getAliasVerification) | **GET** /aliases/{aliasId}/verification | Get validation result from alias verification
[**getAliases**](AliasControllerApi.md#getAliases) | **GET** /aliases | Get all email aliases you have created
[**updateAlias**](AliasControllerApi.md#updateAlias) | **PUT** /aliases/{aliasId} | Update an email alias


# **createAlias**
> Alias createAlias(createAliasOptions)

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var createAliasOptions = CreateAliasOptions(); // CreateAliasOptions | createAliasOptions

try { 
    var result = api_instance.createAlias(createAliasOptions);
    print(result);
} catch (e) {
    print("Exception when calling AliasControllerApi->createAlias: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions.md)| createAliasOptions | 

### Return type

[**Alias**](Alias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlias**
> deleteAlias(aliasId)

Delete an email alias

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId

try { 
    api_instance.deleteAlias(aliasId);
} catch (e) {
    print("Exception when calling AliasControllerApi->deleteAlias: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**](.md)| aliasId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlias**
> AliasDto getAlias(aliasId)

Get an email alias

Get an email alias by ID

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId

try { 
    var result = api_instance.getAlias(aliasId);
    print(result);
} catch (e) {
    print("Exception when calling AliasControllerApi->getAlias: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**](.md)| aliasId | [default to null]

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAliasVerification**
> AliasVerificationResult getAliasVerification(aliasId, emailAddress, verificationToken)

Get validation result from alias verification

Verify an email alias email address with the verification token that was emailed to the address

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
var emailAddress = emailAddress_example; // String | emailAddress
var verificationToken = verificationToken_example; // String | verificationToken

try { 
    var result = api_instance.getAliasVerification(aliasId, emailAddress, verificationToken);
    print(result);
} catch (e) {
    print("Exception when calling AliasControllerApi->getAliasVerification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**](.md)| aliasId | [default to null]
 **emailAddress** | **String**| emailAddress | [default to null]
 **verificationToken** | **String**| verificationToken | [default to null]

### Return type

[**AliasVerificationResult**](AliasVerificationResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAliases**
> PageAlias getAliases(page, size, sort)

Get all email aliases you have created

Get all email aliases in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var page = 56; // int | Optional page index in alias list pagination
var size = 56; // int | Optional page size in alias list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getAliases(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AliasControllerApi->getAliases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageAlias**](PageAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAlias**
> updateAlias(aliasId, updateAliasOptions)

Update an email alias

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = AliasControllerApi();
var aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
var updateAliasOptions = UpdateAliasOptions(); // UpdateAliasOptions | updateAliasOptions

try { 
    api_instance.updateAlias(aliasId, updateAliasOptions);
} catch (e) {
    print("Exception when calling AliasControllerApi->updateAlias: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**](.md)| aliasId | [default to null]
 **updateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions.md)| updateAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

