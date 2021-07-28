# mailslurp.api.SentEmailsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSentTrackingPixels**](SentEmailsControllerApi#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | Get all sent email tracking pixels in paginated form
[**getSentEmail**](SentEmailsControllerApi#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](SentEmailsControllerApi#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailTrackingPixels**](SentEmailsControllerApi#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | Get all tracking pixels for a sent email in paginated form
[**getSentEmails**](SentEmailsControllerApi#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentOrganizationEmails**](SentEmailsControllerApi#getsentorganizationemails) | **GET** /sent/organization | Get all sent organization emails in paginated form


# **getAllSentTrackingPixels**
> PageTrackingPixelProjection getAllSentTrackingPixels(page, searchFilter, size, sort)

Get all sent email tracking pixels in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final page = 56; // int | Optional page index in sent email tracking pixel list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final size = 56; // int | Optional page size in sent email tracking pixel list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllSentTrackingPixels(page, searchFilter, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getAllSentTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmail**
> SentEmailDto getSentEmail(id)

Get sent email receipt

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    final result = api_instance.getSentEmail(id);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailHTMLContent**
> String getSentEmailHTMLContent(id)

Get sent email HTML content

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    final result = api_instance.getSentEmailHTMLContent(id);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailHTMLContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
> PageTrackingPixelProjection getSentEmailTrackingPixels(id, page, searchFilter, size, sort)

Get all tracking pixels for a sent email in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id
final page = 56; // int | Optional page index in sent email tracking pixel list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final size = 56; // int | Optional page size in sent email tracking pixel list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getSentEmailTrackingPixels(id, page, searchFilter, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmailTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 
 **page** | **int**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
> PageSentEmailProjection getSentEmails(inboxId, page, searchFilter, size, sort)

Get all sent emails in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inboxId to filter sender of sent emails by
final page = 56; // int | Optional page index in inbox sent email list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final size = 56; // int | Optional page size in inbox sent email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getSentEmails(inboxId, page, searchFilter, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
> PageSentEmailProjection getSentOrganizationEmails(inboxId, page, searchFilter, size, sort)

Get all sent organization emails in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SentEmailsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inboxId to filter sender of sent emails by
final page = 56; // int | Optional page index in sent email list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final size = 56; // int | Optional page size in sent email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getSentOrganizationEmails(inboxId, page, searchFilter, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling SentEmailsControllerApi->getSentOrganizationEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **int**| Optional page index in sent email list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **size** | **int**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

