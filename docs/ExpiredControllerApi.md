# mailslurp.api.ExpiredControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExpirationDefaults**](ExpiredControllerApi#getExpirationDefaults) | **GET** /expired/defaults | Get default expiration settings
[**getExpiredInboxByInboxId**](ExpiredControllerApi#getExpiredInboxByInboxId) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
[**getExpiredInboxRecord**](ExpiredControllerApi#getExpiredInboxRecord) | **GET** /expired/{expiredId} | Get an expired inbox record
[**getExpiredInboxes**](ExpiredControllerApi#getExpiredInboxes) | **GET** /expired | List records of expired inboxes


# **getExpirationDefaults**
> ExpirationDefaults getExpirationDefaults()

Get default expiration settings

Return default times used for inbox expiration

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ExpiredControllerApi();

try { 
    var result = api_instance.getExpirationDefaults();
    print(result);
} catch (e) {
    print("Exception when calling ExpiredControllerApi->getExpirationDefaults: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExpirationDefaults**](ExpirationDefaults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxByInboxId**
> ExpiredInboxDto getExpiredInboxByInboxId(inboxId)

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ExpiredControllerApi();
var inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of inbox you want to retrieve (not the inbox ID)

try { 
    var result = api_instance.getExpiredInboxByInboxId(inboxId);
    print(result);
} catch (e) {
    print("Exception when calling ExpiredControllerApi->getExpiredInboxByInboxId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()| ID of inbox you want to retrieve (not the inbox ID) | [default to null]

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxRecord**
> ExpiredInboxDto getExpiredInboxRecord(expiredId)

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ExpiredControllerApi();
var expiredId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)

try { 
    var result = api_instance.getExpiredInboxRecord(expiredId);
    print(result);
} catch (e) {
    print("Exception when calling ExpiredControllerApi->getExpiredInboxRecord: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiredId** | [**String**]()| ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) | [default to null]

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxes**
> PageExpiredInboxRecordProjection getExpiredInboxes(page, size, sort)

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = ExpiredControllerApi();
var page = 56; // int | Optional page index in inbox sent email list pagination
var size = 56; // int | Optional page size in inbox sent email list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getExpiredInboxes(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ExpiredControllerApi->getExpiredInboxes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageExpiredInboxRecordProjection**](PageExpiredInboxRecordProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

