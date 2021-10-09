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
[**waitForMatchingEmails**](WaitForControllerApi#waitformatchingemails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForMatchingFirstEmail**](WaitForControllerApi#waitformatchingfirstemail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**waitForNthEmail**](WaitForControllerApi#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.


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
final waitForConditions = WaitForConditions(); // WaitForConditions | Conditions to apply to emails that you are waiting for

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
 **waitForConditions** | [**WaitForConditions**](WaitForConditions)| Conditions to apply to emails that you are waiting for | [optional] 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForEmailCount**
> List<EmailPreview> waitForEmailCount(before, count, delay, inboxId, since, sort, timeout, unreadOnly)

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
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final count = 56; // int | Number of emails to wait for. Must be greater that 1
final delay = 789; // int | Max milliseconds delay between calls
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only

try { 
    final result = api_instance.waitForEmailCount(before, count, delay, inboxId, since, sort, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForEmailCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **count** | **int**| Number of emails to wait for. Must be greater that 1 | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestEmail**
> Email waitForLatestEmail(before, delay, inboxId, since, sort, timeout, unreadOnly)

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
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were before after the given timestamp
final delay = 789; // int | Max milliseconds delay between calls
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only.

try { 
    final result = api_instance.waitForLatestEmail(before, delay, inboxId, since, sort, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForLatestEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter for emails that were before after the given timestamp | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only. | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingEmails**
> List<EmailPreview> waitForMatchingEmails(matchOptions, before, count, delay, inboxId, since, sort, timeout, unreadOnly)

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
final matchOptions = MatchOptions(); // MatchOptions | matchOptions
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final count = 56; // int | Number of emails to wait for. Must be greater or equal to 1
final delay = 789; // int | Max milliseconds delay between calls
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only

try { 
    final result = api_instance.waitForMatchingEmails(matchOptions, before, count, delay, inboxId, since, sort, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForMatchingEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**MatchOptions**](MatchOptions)| matchOptions | 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **count** | **int**| Number of emails to wait for. Must be greater or equal to 1 | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingFirstEmail**
> Email waitForMatchingFirstEmail(matchOptions, before, delay, inboxId, since, sort, timeout, unreadOnly)

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
final matchOptions = MatchOptions(); // MatchOptions | matchOptions
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final delay = 789; // int | Max milliseconds delay between calls
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are matching an email for
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final timeout = 789; // int | Max milliseconds to wait
final unreadOnly = true; // bool | Optional filter for unread only

try { 
    final result = api_instance.waitForMatchingFirstEmail(matchOptions, before, delay, inboxId, since, sort, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForMatchingFirstEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**MatchOptions**](MatchOptions)| matchOptions | 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **inboxId** | [**String**]()| Id of the inbox we are matching an email for | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **timeout** | **int**| Max milliseconds to wait | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthEmail**
> Email waitForNthEmail(before, delay, inboxId, index, since, sort, timeout, unreadOnly)

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
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received before the given timestamp
final delay = 789; // int | Max milliseconds delay between calls
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox you are fetching emails from
final index = 56; // int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter for emails that were received after the given timestamp
final sort = sort_example; // String | Sort direction
final timeout = 789; // int | Max milliseconds to wait for the nth email if not already present
final unreadOnly = true; // bool | Optional filter for unread only

try { 
    final result = api_instance.waitForNthEmail(before, delay, inboxId, index, since, sort, timeout, unreadOnly);
    print(result);
} catch (e) {
    print('Exception when calling WaitForControllerApi->waitForNthEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **delay** | **int**| Max milliseconds delay between calls | [optional] 
 **inboxId** | [**String**]()| Id of the inbox you are fetching emails from | [optional] 
 **index** | **int**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 | [optional] [default to 0]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **timeout** | **int**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

