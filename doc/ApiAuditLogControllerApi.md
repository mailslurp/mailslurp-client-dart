# mailslurp.api.ApiAuditLogControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLogByEventId**](ApiAuditLogControllerApi#getauditlogbyeventid) | **GET** /audit-logs/{eventId} | 
[**getAuditLogs**](ApiAuditLogControllerApi#getauditlogs) | **GET** /audit-logs | 
[**searchAuditLogs**](ApiAuditLogControllerApi#searchauditlogs) | **POST** /audit-logs/search | 


# **getAuditLogByEventId**
> AuditLogEventDto getAuditLogByEventId(eventId, since, before)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAuditLogControllerApi();
final eventId = eventId_example; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getAuditLogByEventId(eventId, since, before);
    print(result);
} catch (e) {
    print('Exception when calling ApiAuditLogControllerApi->getAuditLogByEventId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | **String**|  | 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**AuditLogEventDto**](AuditLogEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAuditLogs**
> AuditLogPageDto getAuditLogs(since, before, action, userId, actorUserId, targetUserId, resourceType, resourceId, outcome, requestId, ipAddress, pageSize, cursor)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAuditLogControllerApi();
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final action = action_example; // String | 
final userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final actorUserId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final targetUserId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final resourceType = resourceType_example; // String | 
final resourceId = resourceId_example; // String | 
final outcome = outcome_example; // String | 
final requestId = requestId_example; // String | 
final ipAddress = ipAddress_example; // String | 
final pageSize = 56; // int | 
final cursor = cursor_example; // String | 

try {
    final result = api_instance.getAuditLogs(since, before, action, userId, actorUserId, targetUserId, resourceType, resourceId, outcome, requestId, ipAddress, pageSize, cursor);
    print(result);
} catch (e) {
    print('Exception when calling ApiAuditLogControllerApi->getAuditLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **action** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **actorUserId** | **String**|  | [optional] 
 **targetUserId** | **String**|  | [optional] 
 **resourceType** | **String**|  | [optional] 
 **resourceId** | **String**|  | [optional] 
 **outcome** | **String**|  | [optional] 
 **requestId** | **String**|  | [optional] 
 **ipAddress** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchAuditLogs**
> AuditLogPageDto searchAuditLogs(auditLogSearchOptions)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiAuditLogControllerApi();
final auditLogSearchOptions = AuditLogSearchOptions(); // AuditLogSearchOptions | 

try {
    final result = api_instance.searchAuditLogs(auditLogSearchOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiAuditLogControllerApi->searchAuditLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditLogSearchOptions** | [**AuditLogSearchOptions**](AuditLogSearchOptions)|  | 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

