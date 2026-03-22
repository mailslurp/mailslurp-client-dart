# mailslurp.api.RulesetControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewRuleset**](RulesetControllerApi#createnewruleset) | **POST** /rulesets | Create a ruleset
[**deleteRuleset**](RulesetControllerApi#deleteruleset) | **DELETE** /rulesets/{id} | Delete a ruleset
[**deleteRulesets**](RulesetControllerApi#deleterulesets) | **DELETE** /rulesets | Delete rulesets
[**getRuleset**](RulesetControllerApi#getruleset) | **GET** /rulesets/{id} | Get a ruleset
[**getRulesets**](RulesetControllerApi#getrulesets) | **GET** /rulesets | List rulesets block and allow lists
[**testInboxRulesetsForInbox**](RulesetControllerApi#testinboxrulesetsforinbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**testNewRuleset**](RulesetControllerApi#testnewruleset) | **PATCH** /rulesets | Test new ruleset
[**testRuleset**](RulesetControllerApi#testruleset) | **POST** /rulesets/{id}/test | Test a ruleset
[**testRulesetReceiving**](RulesetControllerApi#testrulesetreceiving) | **POST** /rulesets/test-receiving | Test receiving with rulesets
[**testRulesetSending**](RulesetControllerApi#testrulesetsending) | **POST** /rulesets/test-sending | Test sending with rulesets


# **createNewRuleset**
> RulesetDto createNewRuleset(createRulesetOptions, inboxId, phoneId)

Create a ruleset

Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final createRulesetOptions = CreateRulesetOptions(); // CreateRulesetOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox id to attach ruleset to
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Phone id to attach ruleset to

try {
    final result = api_instance.createNewRuleset(createRulesetOptions, inboxId, phoneId);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->createNewRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRulesetOptions** | [**CreateRulesetOptions**](CreateRulesetOptions)|  | 
 **inboxId** | **String**| Inbox id to attach ruleset to | [optional] 
 **phoneId** | **String**| Phone id to attach ruleset to | [optional] 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRuleset**
> deleteRuleset(id)

Delete a ruleset

Delete ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of ruleset

try {
    api_instance.deleteRuleset(id);
} catch (e) {
    print('Exception when calling RulesetControllerApi->deleteRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of ruleset | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRulesets**
> deleteRulesets(inboxId, phoneId)

Delete rulesets

Delete rulesets. Accepts optional inboxId or phoneId filters.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to attach ruleset to
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteRulesets(inboxId, phoneId);
} catch (e) {
    print('Exception when calling RulesetControllerApi->deleteRulesets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to attach ruleset to | [optional] 
 **phoneId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRuleset**
> RulesetDto getRuleset(id)

Get a ruleset

Get ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of ruleset

try {
    final result = api_instance.getRuleset(id);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->getRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of ruleset | 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRulesets**
> PageRulesetDto getRulesets(inboxId, phoneId, page, size, sort, searchFilter, since, before)

List rulesets block and allow lists

List all rulesets attached to an inbox or phone or account

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox id to get rulesets from
final phoneId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional phone id to get rulesets from
final page = 56; // int | Optional page index in inbox ruleset list pagination
final size = 56; // int | Optional page size in inbox ruleset list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getRulesets(inboxId, phoneId, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->getRulesets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Optional inbox id to get rulesets from | [optional] 
 **phoneId** | **String**| Optional phone id to get rulesets from | [optional] 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageRulesetDto**](PageRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxRulesetsForInbox**
> InboxRulesetTestResult testInboxRulesetsForInbox(inboxId, rulesetTestOptions)

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox
final rulesetTestOptions = RulesetTestOptions(); // RulesetTestOptions | 

try {
    final result = api_instance.testInboxRulesetsForInbox(inboxId, rulesetTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->testInboxRulesetsForInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| ID of inbox | 
 **rulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewRuleset**
> InboxRulesetTestResult testNewRuleset(testNewInboxRulesetOptions)

Test new ruleset

Test new ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final testNewInboxRulesetOptions = TestNewInboxRulesetOptions(); // TestNewInboxRulesetOptions | 

try {
    final result = api_instance.testNewRuleset(testNewInboxRulesetOptions);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->testNewRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testNewInboxRulesetOptions** | [**TestNewInboxRulesetOptions**](TestNewInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRuleset**
> InboxRulesetTestResult testRuleset(id, rulesetTestOptions)

Test a ruleset

Test an inbox or phone ruleset

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of ruleset
final rulesetTestOptions = RulesetTestOptions(); // RulesetTestOptions | 

try {
    final result = api_instance.testRuleset(id, rulesetTestOptions);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->testRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of ruleset | 
 **rulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions)|  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetReceiving**
> TestRulesetReceivingResult testRulesetReceiving(testRulesetReceivingOptions)

Test receiving with rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final testRulesetReceivingOptions = TestRulesetReceivingOptions(); // TestRulesetReceivingOptions | 

try {
    final result = api_instance.testRulesetReceiving(testRulesetReceivingOptions);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->testRulesetReceiving: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testRulesetReceivingOptions** | [**TestRulesetReceivingOptions**](TestRulesetReceivingOptions)|  | 

### Return type

[**TestRulesetReceivingResult**](TestRulesetReceivingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetSending**
> TestRulesetSendingResult testRulesetSending(testInboxRulesetSendingOptions)

Test sending with rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = RulesetControllerApi();
final testInboxRulesetSendingOptions = TestInboxRulesetSendingOptions(); // TestInboxRulesetSendingOptions | 

try {
    final result = api_instance.testRulesetSending(testInboxRulesetSendingOptions);
    print(result);
} catch (e) {
    print('Exception when calling RulesetControllerApi->testRulesetSending: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testInboxRulesetSendingOptions** | [**TestInboxRulesetSendingOptions**](TestInboxRulesetSendingOptions)|  | 

### Return type

[**TestRulesetSendingResult**](TestRulesetSendingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

