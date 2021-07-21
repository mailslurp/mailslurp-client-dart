# mailslurp.api.BounceControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBouncedEmail**](BounceControllerApi#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmail1**](BounceControllerApi#getbouncedemail1) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedEmails**](BounceControllerApi#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipients**](BounceControllerApi#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.


# **getBouncedEmail**
> getBouncedEmail(id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = BounceControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the bounced email to fetch

try { 
    api_instance.getBouncedEmail(id);
} catch (e) {
    print('Exception when calling BounceControllerApi->getBouncedEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced email to fetch | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmail1**
> getBouncedEmail1(id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = BounceControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the bounced recipient

try { 
    api_instance.getBouncedEmail1(id);
} catch (e) {
    print('Exception when calling BounceControllerApi->getBouncedEmail1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced recipient | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmails**
> getBouncedEmails(page, size, sort)

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = BounceControllerApi();
final page = 56; // int | Optional page index 
final size = 56; // int | Optional page size 
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    api_instance.getBouncedEmails(page, size, sort);
} catch (e) {
    print('Exception when calling BounceControllerApi->getBouncedEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index  | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipients**
> getBouncedRecipients(page, size, sort)

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = BounceControllerApi();
final page = 56; // int | Optional page index 
final size = 56; // int | Optional page size 
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    api_instance.getBouncedRecipients(page, size, sort);
} catch (e) {
    print('Exception when calling BounceControllerApi->getBouncedRecipients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index  | [optional] [default to 0]
 **size** | **int**| Optional page size  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

