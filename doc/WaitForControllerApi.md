# mailslurp.api.WaitForControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](WaitForControllerApi#waitfor) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**waitForEmailCount**](WaitForControllerApi#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**waitForLatestEmail**](WaitForControllerApi#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox's latest email or if empty wait for an email to arrive
[**waitForLatestSms**](WaitForControllerApi#waitforlatestsms) | **POST** /waitForLatestSms | Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
[**waitForMatchingEmails**](WaitForControllerApi#waitformatchingemails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForMatchingFirstEmail**](WaitForControllerApi#waitformatchingfirstemail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**waitForNthEmail**](WaitForControllerApi#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
[**waitForSms**](WaitForControllerApi#waitforsms) | **POST** /waitForSms | Wait for an SMS message to match the provided filter conditions such as body contains keyword.


# **waitFor**
> List<EmailPreview> waitFor(waitForConditions)

Wait for an email to match the provided filter conditions such as subject contains keyword.

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final waitForConditions = WaitForConditions(); // WaitForConditions | 

try { 
    final result = api_instance.waitFor(waitForConditions);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitFor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForConditions** | [**WaitForConditions**](WaitForConditions)|  | 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForEmailCount**
> List<EmailPreview> waitForEmailCount(inboxId, count, timeout, unreadOnly, before, since, sort, delay)

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final count = 56; // int | Number of emails to wait for. Must be greater that 1
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final delay = 789; // int | Max milliseconds delay between calls

try { 
    final result = api_instance.waitForEmailCount(inboxId, count, timeout, unreadOnly, before, since, sort, delay);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForEmailCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | 
 **count** | **int**| Number of emails to wait for. Must be greater that 1 | 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestEmail**
> Email waitForLatestEmail(inboxId, timeout, unreadOnly, before, since, sort, delay)

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were before after the given timestamp
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final delay = 789; // int | Max milliseconds delay between calls

try { 
    final result = api_instance.waitForLatestEmail(inboxId, timeout, unreadOnly, before, since, sort, delay);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForLatestEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only. | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were before after the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestSms**
> SmsDto waitForLatestSms(waitForSingleSmsOptions)

Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.

Wait until a phone number meets given conditions or return immediately if already met

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final waitForSingleSmsOptions = WaitForSingleSmsOptions(); // WaitForSingleSmsOptions | 

try { 
    final result = api_instance.waitForLatestSms(waitForSingleSmsOptions);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForLatestSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForSingleSmsOptions** | [**WaitForSingleSmsOptions**](WaitForSingleSmsOptions)|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingEmails**
> List<EmailPreview> waitForMatchingEmails(inboxId, count, matchOptions, before, since, sort, delay, timeout, unreadOnly)

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final count = 56; // int | Number of emails to wait for. Must be greater or equal to 1
final matchOptions = MatchOptions(); // MatchOptions | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final delay = 789; // int | Max milliseconds delay between calls
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only

try { 
    final result = api_instance.waitForMatchingEmails(inboxId, count, matchOptions, before, since, sort, delay, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForMatchingEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | 
 **count** | **int**| Number of emails to wait for. Must be greater or equal to 1 | 
 **matchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingFirstEmail**
> Email waitForMatchingFirstEmail(inboxId, matchOptions, timeout, unreadOnly, since, before, sort, delay)

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are matching an email for
final matchOptions = MatchOptions(); // MatchOptions | 
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final sort = sort_example; // String | Sort direction
final delay = 789; // int | Max milliseconds delay between calls

try { 
    final result = api_instance.waitForMatchingFirstEmail(inboxId, matchOptions, timeout, unreadOnly, since, before, sort, delay);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForMatchingFirstEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox we are matching an email for | 
 **matchOptions** | [**MatchOptions**](MatchOptions)|  | 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthEmail**
> Email waitForNthEmail(inboxId, index, timeout, unreadOnly, since, before, sort, delay)

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox you are fetching emails from
final index = 56; // int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
final timeout = 789; // int | Max milliseconds to wait for the nth email if not already present
final unreadOnly = true; // bool | Optional filter for unread only
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final sort = sort_example; // String | Sort direction
final delay = 789; // int | Max milliseconds delay between calls

try { 
    final result = api_instance.waitForNthEmail(inboxId, index, timeout, unreadOnly, since, before, sort, delay);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForNthEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox you are fetching emails from | [optional] 
 **index** | **int**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 | [optional] [default to 0]
 **timeout** | **int**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForSms**
> List<SmsPreview> waitForSms(waitForSmsConditions)

Wait for an SMS message to match the provided filter conditions such as body contains keyword.

Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = WaitForControllerApi();
final waitForSmsConditions = WaitForSmsConditions(); // WaitForSmsConditions | 

try { 
    final result = api_instance.waitForSms(waitForSmsConditions);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForSmsConditions** | [**WaitForSmsConditions**](WaitForSmsConditions)|  | 

### Return type

[**List<SmsPreview>**](SmsPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

