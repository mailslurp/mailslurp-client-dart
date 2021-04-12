# mailslurp.api.BulkActionsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateInboxes**](BulkActionsControllerApi#bulkCreateInboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulkDeleteInboxes**](BulkActionsControllerApi#bulkDeleteInboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulkSendEmails**](BulkActionsControllerApi#bulkSendEmails) | **POST** /bulk/send | Bulk Send Emails


# **bulkCreateInboxes**
> List<Inbox> bulkCreateInboxes(count)

Bulk create Inboxes (email addresses)

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = BulkActionsControllerApi();
var count = 56; // int | Number of inboxes to be created in bulk

try { 
    var result = api_instance.bulkCreateInboxes(count);
    print(result);
} catch (e) {
    print("Exception when calling BulkActionsControllerApi->bulkCreateInboxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| Number of inboxes to be created in bulk | [default to null]

### Return type

[**List<Inbox>**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkDeleteInboxes**
> bulkDeleteInboxes(ids)

Bulk Delete Inboxes

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = BulkActionsControllerApi();
var ids = [List&lt;String&gt;()]; // List<String> | ids

try { 
    api_instance.bulkDeleteInboxes(ids);
} catch (e) {
    print("Exception when calling BulkActionsControllerApi->bulkDeleteInboxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**List&lt;String&gt;**](String)| ids | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkSendEmails**
> bulkSendEmails(bulkSendEmailOptions)

Bulk Send Emails

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = BulkActionsControllerApi();
var bulkSendEmailOptions = BulkSendEmailOptions(); // BulkSendEmailOptions | bulkSendEmailOptions

try { 
    api_instance.bulkSendEmails(bulkSendEmailOptions);
} catch (e) {
    print("Exception when calling BulkActionsControllerApi->bulkSendEmails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkSendEmailOptions** | [**BulkSendEmailOptions**](BulkSendEmailOptions)| bulkSendEmailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

