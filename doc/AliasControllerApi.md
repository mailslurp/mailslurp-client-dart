# mailslurp.api.AliasControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasControllerApi#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](AliasControllerApi#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](AliasControllerApi#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliasEmails**](AliasControllerApi#getaliasemails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**getAliasThreads**](AliasControllerApi#getaliasthreads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**getAliases**](AliasControllerApi#getaliases) | **GET** /aliases | Get all email aliases you have created
[**replyToAliasEmail**](AliasControllerApi#replytoaliasemail) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**sendAliasEmail**](AliasControllerApi#sendaliasemail) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**updateAlias**](AliasControllerApi#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias


# **createAlias**
> AliasDto createAlias(createAliasOptions)

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final createAliasOptions = CreateAliasOptions(); // CreateAliasOptions | createAliasOptions

try { 
    final result = api_instance.createAlias(createAliasOptions);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->createAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions)| createAliasOptions | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId

try { 
    api_instance.deleteAlias(aliasId);
} catch (e) {
    print('Exception when calling AliasControllerApi->deleteAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId

try { 
    final result = api_instance.getAlias(aliasId);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->getAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasEmails**
> PageEmailProjection getAliasEmails(aliasId, before, page, since, size, sort)

Get emails for an alias

Get paginated emails for an alias by ID

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent before given date time
final page = 56; // int | Optional page index alias email list pagination
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent after given date time
final size = 56; // int | Optional page size alias email list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAliasEmails(aliasId, before, page, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->getAliasEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 
 **page** | **int**| Optional page index alias email list pagination | [optional] [default to 0]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **size** | **int**| Optional page size alias email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasThreads**
> PageThreadProjection getAliasThreads(aliasId, before, page, since, size, sort)

Get threads created for an alias

Returns threads created for an email alias in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent before given date time
final page = 56; // int | Optional page index in thread list pagination
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent after given date time
final size = 56; // int | Optional page size in thread list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAliasThreads(aliasId, before, page, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->getAliasThreads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 
 **page** | **int**| Optional page index in thread list pagination | [optional] [default to 0]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **size** | **int**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliases**
> PageAlias getAliases(before, page, since, size, sort)

Get all email aliases you have created

Get all email aliases in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in alias list pagination
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size in alias list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAliases(before, page, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->getAliases: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in alias list pagination | [optional] [default to 0]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageAlias**](PageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToAliasEmail**
> SentEmailDto replyToAliasEmail(aliasId, emailId, replyToAliasEmailOptions)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the alias that email belongs to
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the email that should be replied to
final replyToAliasEmailOptions = ReplyToAliasEmailOptions(); // ReplyToAliasEmailOptions | replyToAliasEmailOptions

try { 
    final result = api_instance.replyToAliasEmail(aliasId, emailId, replyToAliasEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->replyToAliasEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| ID of the alias that email belongs to | 
 **emailId** | [**String**]()| ID of the email that should be replied to | 
 **replyToAliasEmailOptions** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions)| replyToAliasEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendAliasEmail**
> SentEmailDto sendAliasEmail(aliasId, sendEmailOptions)

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | Options for the email to be sent

try { 
    final result = api_instance.sendAliasEmail(aliasId, sendEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling AliasControllerApi->sendAliasEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)| Options for the email to be sent | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

final api_instance = AliasControllerApi();
final aliasId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | aliasId
final updateAliasOptions = UpdateAliasOptions(); // UpdateAliasOptions | updateAliasOptions

try { 
    api_instance.updateAlias(aliasId, updateAliasOptions);
} catch (e) {
    print('Exception when calling AliasControllerApi->updateAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aliasId** | [**String**]()| aliasId | 
 **updateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions)| updateAliasOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

