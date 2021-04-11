# mailslurp.api.WaitForControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](WaitForControllerApi#waitFor) | **POST** /waitFor | Wait for conditions to be met
[**waitForEmailCount**](WaitForControllerApi#waitForEmailCount) | **GET** /waitForEmailCount | Wait for and return count number of emails 
[**waitForLatestEmail**](WaitForControllerApi#waitForLatestEmail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**waitForMatchingEmail**](WaitForControllerApi#waitForMatchingEmail) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForMatchingFirstEmail**](WaitForControllerApi#waitForMatchingFirstEmail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches proved MatchOptions array
[**waitForNthEmail**](WaitForControllerApi#waitForNthEmail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified


# **waitFor**
> List<EmailPreview> waitFor(waitForConditions)

Wait for conditions to be met

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var waitForConditions = WaitForConditions(); // WaitForConditions | Conditions to wait for

try { 
    var result = api_instance.waitFor(waitForConditions);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitFor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **waitForConditions** | [**WaitForConditions**](WaitForConditions)| Conditions to wait for | [optional] 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForEmailCount**
> List<EmailPreview> waitForEmailCount(count, inboxId, timeout, unreadOnly)

Wait for and return count number of emails 

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var count = 56; // int | Number of emails to wait for. Must be greater that 1
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
var timeout = 789; // int | Max milliseconds to wait
var unreadOnly = true; // bool | Optional filter for unread only

try { 
    var result = api_instance.waitForEmailCount(count, inboxId, timeout, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitForEmailCount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| Number of emails to wait for. Must be greater that 1 | [optional] [default to null]
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] [default to null]
 **timeout** | **int**| Max milliseconds to wait | [optional] [default to null]
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
> Email waitForLatestEmail(inboxId, timeout, unreadOnly)

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
var timeout = 789; // int | Max milliseconds to wait
var unreadOnly = true; // bool | Optional filter for unread only.

try { 
    var result = api_instance.waitForLatestEmail(inboxId, timeout, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitForLatestEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] [default to null]
 **timeout** | **int**| Max milliseconds to wait | [optional] [default to null]
 **unreadOnly** | **bool**| Optional filter for unread only. | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingEmail**
> List<EmailPreview> waitForMatchingEmail(matchOptions, count, inboxId, timeout, unreadOnly)

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var matchOptions = MatchOptions(); // MatchOptions | matchOptions
var count = 56; // int | Number of emails to wait for. Must be greater that 1
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are fetching emails from
var timeout = 789; // int | Max milliseconds to wait
var unreadOnly = true; // bool | Optional filter for unread only

try { 
    var result = api_instance.waitForMatchingEmail(matchOptions, count, inboxId, timeout, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitForMatchingEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**MatchOptions**](MatchOptions)| matchOptions | 
 **count** | **int**| Number of emails to wait for. Must be greater that 1 | [optional] [default to null]
 **inboxId** | [**String**]()| Id of the inbox we are fetching emails from | [optional] [default to null]
 **timeout** | **int**| Max milliseconds to wait | [optional] [default to null]
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
> Email waitForMatchingFirstEmail(matchOptions, inboxId, timeout, unreadOnly)

Wait for or return the first email that matches proved MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var matchOptions = MatchOptions(); // MatchOptions | matchOptions
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox we are matching an email for
var timeout = 789; // int | Max milliseconds to wait
var unreadOnly = true; // bool | Optional filter for unread only

try { 
    var result = api_instance.waitForMatchingFirstEmail(matchOptions, inboxId, timeout, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitForMatchingFirstEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchOptions** | [**MatchOptions**](MatchOptions)| matchOptions | 
 **inboxId** | [**String**]()| Id of the inbox we are matching an email for | [optional] [default to null]
 **timeout** | **int**| Max milliseconds to wait | [optional] [default to null]
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
> Email waitForNthEmail(inboxId, index, timeout, unreadOnly)

Wait for or fetch the email with a given index in the inbox specified

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = WaitForControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the inbox you are fetching emails from
var index = 56; // int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
var timeout = 789; // int | Max milliseconds to wait for the nth email if not already present
var unreadOnly = true; // bool | Optional filter for unread only

try { 
    var result = api_instance.waitForNthEmail(inboxId, index, timeout, unreadOnly);
    print(result);
} catch (e) {
    print("Exception when calling WaitForControllerApi->waitForNthEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| Id of the inbox you are fetching emails from | [optional] [default to null]
 **index** | **int**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **timeout** | **int**| Max milliseconds to wait for the nth email if not already present | [optional] [default to null]
 **unreadOnly** | **bool**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

