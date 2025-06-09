# mailslurp.api.SmsControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSentSmsMessage**](SmsControllerApi#deletesentsmsmessage) | **DELETE** /sms/sent/{sentSmsId} | Delete sent SMS message.
[**deleteSentSmsMessages**](SmsControllerApi#deletesentsmsmessages) | **DELETE** /sms/sent | Delete all sent SMS messages
[**deleteSmsMessage**](SmsControllerApi#deletesmsmessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**deleteSmsMessages**](SmsControllerApi#deletesmsmessages) | **DELETE** /sms | Delete all SMS messages
[**getAllSmsMessages**](SmsControllerApi#getallsmsmessages) | **GET** /sms | 
[**getReplyForSmsMessage**](SmsControllerApi#getreplyforsmsmessage) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**getSentSmsCount**](SmsControllerApi#getsentsmscount) | **GET** /sms/sent/count | Get sent SMS count
[**getSentSmsMessage**](SmsControllerApi#getsentsmsmessage) | **GET** /sms/sent/{sentSmsId} | Get sent SMS content including body. Expects sent SMS to exist by ID.
[**getSentSmsMessagesPaginated**](SmsControllerApi#getsentsmsmessagespaginated) | **GET** /sms/sent | Get all SMS messages in all phone numbers in paginated form. .
[**getSmsCount**](SmsControllerApi#getsmscount) | **GET** /sms/count | Get SMS count
[**getSmsMessage**](SmsControllerApi#getsmsmessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**getUnreadSmsCount**](SmsControllerApi#getunreadsmscount) | **GET** /sms/unreadCount | Get unread SMS count
[**replyToSmsMessage**](SmsControllerApi#replytosmsmessage) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.
[**sendSms**](SmsControllerApi#sendsms) | **POST** /sms/send | 
[**setSmsFavourited**](SmsControllerApi#setsmsfavourited) | **PUT** /sms/{smsId}/favourite | 


# **deleteSentSmsMessage**
> deleteSentSmsMessage(sentSmsId)

Delete sent SMS message.

Delete a sent SMS message

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final sentSmsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteSentSmsMessage(sentSmsId);
} catch (e) {
    print('Exception when calling SmsControllerApi->deleteSentSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentSmsId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSentSmsMessages**
> deleteSentSmsMessages(phoneNumberId)

Delete all sent SMS messages

Delete all sent SMS messages or all messages for a given phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteSentSmsMessages(phoneNumberId);
} catch (e) {
    print('Exception when calling SmsControllerApi->deleteSentSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSmsMessage**
> deleteSmsMessage(smsId)

Delete SMS message.

Delete an SMS message

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteSmsMessage(smsId);
} catch (e) {
    print('Exception when calling SmsControllerApi->deleteSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSmsMessages**
> deleteSmsMessages(phoneNumberId)

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final phoneNumberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteSmsMessages(phoneNumberId);
} catch (e) {
    print('Exception when calling SmsControllerApi->deleteSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllSmsMessages**
> PageSmsProjection getAllSmsMessages(phoneNumber, page, size, sort, since, before, search, favourite)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final phoneNumber = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional receiving phone number to filter SMS messages for
final page = 56; // int | Optional page index in SMS list pagination
final size = 56; // int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received before given date time
final search = search_example; // String | Optional search filter
final favourite = true; // bool | Optionally filter results for favourites only

try {
    final result = api_instance.getAllSmsMessages(phoneNumber, page, size, sort, since, before, search, favourite);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getAllSmsMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **String**| Optional search filter | [optional] 
 **favourite** | **bool**| Optionally filter results for favourites only | [optional] [default to false]

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getReplyForSmsMessage**
> ReplyForSms getReplyForSmsMessage(smsId)

Get reply for an SMS message

Get reply for an SMS message.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getReplyForSmsMessage(smsId);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getReplyForSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | **String**|  | 

### Return type

[**ReplyForSms**](ReplyForSms)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsCount**
> CountDto getSentSmsCount()

Get sent SMS count

Get number of sent SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();

try {
    final result = api_instance.getSentSmsCount();
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getSentSmsCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsMessage**
> SentSmsDto getSentSmsMessage(sentSmsId)

Get sent SMS content including body. Expects sent SMS to exist by ID.

Returns an SMS summary object with content.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final sentSmsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getSentSmsMessage(sentSmsId);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getSentSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentSmsId** | **String**|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsMessagesPaginated**
> PageSentSmsProjection getSentSmsMessagesPaginated(phoneNumber, page, size, sort, since, before, search)

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final phoneNumber = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional phone number to filter sent SMS messages for
final page = 56; // int | Optional page index in SMS list pagination
final size = 56; // int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter SMSs received before given date time
final search = search_example; // String | Optional search filter

try {
    final result = api_instance.getSentSmsMessagesPaginated(phoneNumber, page, size, sort, since, before, search);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getSentSmsMessagesPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| Optional phone number to filter sent SMS messages for | [optional] 
 **page** | **int**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 
 **search** | **String**| Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsCount**
> CountDto getSmsCount()

Get SMS count

Get number of SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();

try {
    final result = api_instance.getSmsCount();
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getSmsCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsMessage**
> SmsDto getSmsMessage(smsId)

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getSmsMessage(smsId);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | **String**|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadSmsCount**
> UnreadCount getUnreadSmsCount()

Get unread SMS count

Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();

try {
    final result = api_instance.getUnreadSmsCount();
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->getUnreadSmsCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToSmsMessage**
> SentSmsDto replyToSmsMessage(smsId, smsReplyOptions)

Send a reply to a received SMS message. Replies are sent from the receiving number.

Reply to an SMS message.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final smsReplyOptions = SmsReplyOptions(); // SmsReplyOptions | 

try {
    final result = api_instance.replyToSmsMessage(smsId, smsReplyOptions);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->replyToSmsMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | **String**|  | 
 **smsReplyOptions** | [**SmsReplyOptions**](SmsReplyOptions)|  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSms**
> SentSmsDto sendSms(smsSendOptions, fromPhoneNumber, fromPhoneId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsSendOptions = SmsSendOptions(); // SmsSendOptions | 
final fromPhoneNumber = fromPhoneNumber_example; // String | Phone number to send from in E.164 format
final fromPhoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Phone number ID to send from in UUID form

try {
    final result = api_instance.sendSms(smsSendOptions, fromPhoneNumber, fromPhoneId);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->sendSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsSendOptions** | [**SmsSendOptions**](SmsSendOptions)|  | 
 **fromPhoneNumber** | **String**| Phone number to send from in E.164 format | [optional] 
 **fromPhoneId** | **String**| Phone number ID to send from in UUID form | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setSmsFavourited**
> SmsDto setSmsFavourited(smsId, favourited)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SmsControllerApi();
final smsId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of SMS to set favourite state
final favourited = true; // bool | 

try {
    final result = api_instance.setSmsFavourited(smsId, favourited);
    print(result);
} catch (e) {
    print('Exception when calling SmsControllerApi->setSmsFavourited: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsId** | **String**| ID of SMS to set favourite state | 
 **favourited** | **bool**|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

