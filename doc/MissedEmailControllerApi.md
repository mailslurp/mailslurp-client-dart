# mailslurp.api.MissedEmailControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedEmails**](MissedEmailControllerApi#getallmissedemails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**getMissedEmail**](MissedEmailControllerApi#getmissedemail) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail


# **getAllMissedEmails**
> PageMissedEmailProjection getAllMissedEmails(page, size, sort)

Get all MissedEmails in paginated format

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MissedEmailControllerApi();
final page = 56; // int | Optional page index in inbox list pagination
final size = 56; // int | Optional page size in inbox list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllMissedEmails(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling MissedEmailControllerApi->getAllMissedEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedEmail**
> MissedEmail getMissedEmail(missedEmailId)

Get MissedEmail

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = MissedEmailControllerApi();
final missedEmailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | MissedEmailId

try { 
    final result = api_instance.getMissedEmail(missedEmailId);
    print(result);
} catch (e) {
    print('Exception when calling MissedEmailControllerApi->getMissedEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missedEmailId** | [**String**]()| MissedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

