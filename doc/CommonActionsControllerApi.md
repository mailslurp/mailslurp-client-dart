# mailslurp.api.CommonActionsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](CommonActionsControllerApi#createnewemailaddress) | **POST** /createInbox | Create new random inbox
[**createNewEmailAddress1**](CommonActionsControllerApi#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
[**deleteEmailAddress**](CommonActionsControllerApi#deleteemailaddress) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**emptyInbox**](CommonActionsControllerApi#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](CommonActionsControllerApi#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
> InboxDto createNewEmailAddress(allowTeamAccess, useDomainPool, expiresAt, expiresIn, emailAddress, inboxType, description, name, tags, favourite)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CommonActionsControllerApi();
final allowTeamAccess = true; // bool | 
final useDomainPool = true; // bool | 
final expiresAt = 2013-10-20T19:20:30+01:00; // DateTime | 
final expiresIn = 789; // int | 
final emailAddress = emailAddress_example; // String | 
final inboxType = inboxType_example; // String | 
final description = description_example; // String | 
final name = name_example; // String | 
final tags = []; // Set<String> | 
final favourite = true; // bool | 

try { 
    final result = api_instance.createNewEmailAddress(allowTeamAccess, useDomainPool, expiresAt, expiresIn, emailAddress, inboxType, description, name, tags, favourite);
    print(result);
} catch (e) {
    print('Exception when calling CommonActionsControllerApi->createNewEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowTeamAccess** | **bool**|  | [optional] 
 **useDomainPool** | **bool**|  | [optional] 
 **expiresAt** | **DateTime**|  | [optional] 
 **expiresIn** | **int**|  | [optional] 
 **emailAddress** | **String**|  | [optional] 
 **inboxType** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **tags** | [**Set<String>**](String)|  | [optional] [default to const {}]
 **favourite** | **bool**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createNewEmailAddress1**
> InboxDto createNewEmailAddress1(allowTeamAccess, useDomainPool, expiresAt, expiresIn, emailAddress, inboxType, description, name, tags, favourite)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CommonActionsControllerApi();
final allowTeamAccess = true; // bool | 
final useDomainPool = true; // bool | 
final expiresAt = 2013-10-20T19:20:30+01:00; // DateTime | 
final expiresIn = 789; // int | 
final emailAddress = emailAddress_example; // String | 
final inboxType = inboxType_example; // String | 
final description = description_example; // String | 
final name = name_example; // String | 
final tags = []; // Set<String> | 
final favourite = true; // bool | 

try { 
    final result = api_instance.createNewEmailAddress1(allowTeamAccess, useDomainPool, expiresAt, expiresIn, emailAddress, inboxType, description, name, tags, favourite);
    print(result);
} catch (e) {
    print('Exception when calling CommonActionsControllerApi->createNewEmailAddress1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowTeamAccess** | **bool**|  | [optional] 
 **useDomainPool** | **bool**|  | [optional] 
 **expiresAt** | **DateTime**|  | [optional] 
 **expiresIn** | **int**|  | [optional] 
 **emailAddress** | **String**|  | [optional] 
 **inboxType** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **tags** | [**Set<String>**](String)|  | [optional] [default to const {}]
 **favourite** | **bool**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailAddress**
> deleteEmailAddress(inboxId)

Delete inbox email address by inbox id

Deletes inbox email address

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CommonActionsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.deleteEmailAddress(inboxId);
} catch (e) {
    print('Exception when calling CommonActionsControllerApi->deleteEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

final api_instance = CommonActionsControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.emptyInbox(inboxId);
} catch (e) {
    print('Exception when calling CommonActionsControllerApi->emptyInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSimple**
> sendEmailSimple(simpleSendEmailOptions)

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = CommonActionsControllerApi();
final simpleSendEmailOptions = SimpleSendEmailOptions(); // SimpleSendEmailOptions | 

try { 
    api_instance.sendEmailSimple(simpleSendEmailOptions);
} catch (e) {
    print('Exception when calling CommonActionsControllerApi->sendEmailSimple: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **simpleSendEmailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

