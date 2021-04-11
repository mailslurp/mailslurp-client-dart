# mailslurp.api.ContactControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](ContactControllerApi#createContact) | **POST** /contacts | Create a contact
[**deleteContact**](ContactControllerApi#deleteContact) | **DELETE** /contacts/{contactId} | Delete contact
[**getAllContacts**](ContactControllerApi#getAllContacts) | **GET** /contacts/paginated | Get all contacts
[**getContact**](ContactControllerApi#getContact) | **GET** /contacts/{contactId} | Get contact
[**getContacts**](ContactControllerApi#getContacts) | **GET** /contacts | Get all contacts


# **createContact**
> ContactDto createContact(createContactOptions)

Create a contact

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ContactControllerApi();
var createContactOptions = CreateContactOptions(); // CreateContactOptions | createContactOptions

try { 
    var result = api_instance.createContact(createContactOptions);
    print(result);
} catch (e) {
    print("Exception when calling ContactControllerApi->createContact: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactOptions** | [**CreateContactOptions**](CreateContactOptions)| createContactOptions | 

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteContact**
> deleteContact(contactId)

Delete contact

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ContactControllerApi();
var contactId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | contactId

try { 
    api_instance.deleteContact(contactId);
} catch (e) {
    print("Exception when calling ContactControllerApi->deleteContact: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | [**String**]()| contactId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllContacts**
> PageContactProjection getAllContacts(page, size, sort)

Get all contacts

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ContactControllerApi();
var page = 56; // int | Optional page index in inbox list pagination
var size = 56; // int | Optional page size in inbox list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getAllContacts(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ContactControllerApi->getAllContacts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getContact**
> ContactDto getContact(contactId)

Get contact

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ContactControllerApi();
var contactId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | contactId

try { 
    var result = api_instance.getContact(contactId);
    print(result);
} catch (e) {
    print("Exception when calling ContactControllerApi->getContact: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | [**String**]()| contactId | [default to null]

### Return type

[**ContactDto**](ContactDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getContacts**
> List<ContactProjection> getContacts()

Get all contacts

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ContactControllerApi();

try { 
    var result = api_instance.getContacts();
    print(result);
} catch (e) {
    print("Exception when calling ContactControllerApi->getContacts: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ContactProjection>**](ContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

