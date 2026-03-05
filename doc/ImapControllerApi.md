# mailslurp.api.ImapControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imapServerFetch**](ImapControllerApi#imapserverfetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**imapServerGet**](ImapControllerApi#imapserverget) | **POST** /imap/server/get | Get a message by email ID
[**imapServerList**](ImapControllerApi#imapserverlist) | **POST** /imap/server/list | List messages in an inbox
[**imapServerMailbox**](ImapControllerApi#imapservermailbox) | **POST** /imap/server/mailbox | Create a new mailbox if possible
[**imapServerSearch**](ImapControllerApi#imapserversearch) | **POST** /imap/server/search | Search messages in an inbox
[**imapServerStatus**](ImapControllerApi#imapserverstatus) | **POST** /imap/server/status | Get status for mailbox
[**imapServerUpdateFlags**](ImapControllerApi#imapserverupdateflags) | **POST** /imap/server/update-flags | 


# **imapServerFetch**
> ImapServerFetchResult imapServerFetch(seqNum, inboxId)

Fetch message in an inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final seqNum = 789; // int | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to search

try {
    final result = api_instance.imapServerFetch(seqNum, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerFetch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seqNum** | **int**|  | 
 **inboxId** | **String**| Inbox ID to search | [optional] 

### Return type

[**ImapServerFetchResult**](ImapServerFetchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerGet**
> ImapServerGetResult imapServerGet(emailId, inboxId)

Get a message by email ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Email ID to get
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to search

try {
    final result = api_instance.imapServerGet(emailId, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**| Email ID to get | 
 **inboxId** | **String**| Inbox ID to search | [optional] 

### Return type

[**ImapServerGetResult**](ImapServerGetResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerList**
> ImapServerListResult imapServerList(imapServerListOptions, inboxId)

List messages in an inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final imapServerListOptions = ImapServerListOptions(); // ImapServerListOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to list

try {
    final result = api_instance.imapServerList(imapServerListOptions, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerListOptions** | [**ImapServerListOptions**](ImapServerListOptions)|  | 
 **inboxId** | **String**| Inbox ID to list | [optional] 

### Return type

[**ImapServerListResult**](ImapServerListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerMailbox**
> ImapServerMailboxResult imapServerMailbox(name)

Create a new mailbox if possible

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final name = name_example; // String | Inbox email address to create

try {
    final result = api_instance.imapServerMailbox(name);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerMailbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Inbox email address to create | 

### Return type

[**ImapServerMailboxResult**](ImapServerMailboxResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerSearch**
> ImapServerSearchResult imapServerSearch(imapServerSearchOptions, inboxId)

Search messages in an inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final imapServerSearchOptions = ImapServerSearchOptions(); // ImapServerSearchOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to search

try {
    final result = api_instance.imapServerSearch(imapServerSearchOptions, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerSearchOptions** | [**ImapServerSearchOptions**](ImapServerSearchOptions)|  | 
 **inboxId** | **String**| Inbox ID to search | [optional] 

### Return type

[**ImapServerSearchResult**](ImapServerSearchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerStatus**
> ImapServerStatusResult imapServerStatus(imapServerStatusOptions, inboxId)

Get status for mailbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final imapServerStatusOptions = ImapServerStatusOptions(); // ImapServerStatusOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to list

try {
    final result = api_instance.imapServerStatus(imapServerStatusOptions, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerStatusOptions** | [**ImapServerStatusOptions**](ImapServerStatusOptions)|  | 
 **inboxId** | **String**| Inbox ID to list | [optional] 

### Return type

[**ImapServerStatusResult**](ImapServerStatusResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerUpdateFlags**
> imapServerUpdateFlags(imapUpdateFlagsOptions, inboxId)



Update message flags

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ImapControllerApi();
final imapUpdateFlagsOptions = ImapUpdateFlagsOptions(); // ImapUpdateFlagsOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.imapServerUpdateFlags(imapUpdateFlagsOptions, inboxId);
} catch (e) {
    print('Exception when calling ImapControllerApi->imapServerUpdateFlags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapUpdateFlagsOptions** | [**ImapUpdateFlagsOptions**](ImapUpdateFlagsOptions)|  | 
 **inboxId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

