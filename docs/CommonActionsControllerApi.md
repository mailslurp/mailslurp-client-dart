# mailslurp.api.CommonActionsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](CommonActionsControllerApi.md#createNewEmailAddress) | **POST** /createInbox | Create new random inbox
[**createNewEmailAddress1**](CommonActionsControllerApi.md#createNewEmailAddress1) | **POST** /newEmailAddress | Create new random inbox
[**emptyInbox**](CommonActionsControllerApi.md#emptyInbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](CommonActionsControllerApi.md#sendEmailSimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
> Inbox createNewEmailAddress(expiresAt, expiresIn, useDomainPool)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = CommonActionsControllerApi();
var expiresAt = 2013-10-20T19:20:30+01:00; // DateTime | expiresAt
var expiresIn = 789; // int | expiresIn
var useDomainPool = true; // bool | useDomainPool

try { 
    var result = api_instance.createNewEmailAddress(expiresAt, expiresIn, useDomainPool);
    print(result);
} catch (e) {
    print("Exception when calling CommonActionsControllerApi->createNewEmailAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiresAt** | **DateTime**| expiresAt | [optional] [default to null]
 **expiresIn** | **int**| expiresIn | [optional] [default to null]
 **useDomainPool** | **bool**| useDomainPool | [optional] [default to null]

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNewEmailAddress1**
> Inbox createNewEmailAddress1(expiresAt, expiresIn, useDomainPool)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = CommonActionsControllerApi();
var expiresAt = 2013-10-20T19:20:30+01:00; // DateTime | expiresAt
var expiresIn = 789; // int | expiresIn
var useDomainPool = true; // bool | useDomainPool

try { 
    var result = api_instance.createNewEmailAddress1(expiresAt, expiresIn, useDomainPool);
    print(result);
} catch (e) {
    print("Exception when calling CommonActionsControllerApi->createNewEmailAddress1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiresAt** | **DateTime**| expiresAt | [optional] [default to null]
 **expiresIn** | **int**| expiresIn | [optional] [default to null]
 **useDomainPool** | **bool**| useDomainPool | [optional] [default to null]

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emptyInbox**
> emptyInbox(inboxId)

Delete all emails in an inbox

Deletes all emails

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = CommonActionsControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | inboxId

try { 
    api_instance.emptyInbox(inboxId);
} catch (e) {
    print("Exception when calling CommonActionsControllerApi->emptyInbox: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**](.md)| inboxId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmailSimple**
> sendEmailSimple(emailOptions)

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = CommonActionsControllerApi();
var emailOptions = SimpleSendEmailOptions(); // SimpleSendEmailOptions | emailOptions

try { 
    api_instance.sendEmailSimple(emailOptions);
} catch (e) {
    print("Exception when calling CommonActionsControllerApi->sendEmailSimple: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions.md)| emailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

