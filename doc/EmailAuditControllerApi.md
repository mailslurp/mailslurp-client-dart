# mailslurp.api.EmailAuditControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareEmailAudits**](EmailAuditControllerApi#compareemailaudits) | **GET** /email-audits/{auditId}/compare/{otherAuditId} | Compare two email audits
[**createEmailAudit**](EmailAuditControllerApi#createemailaudit) | **POST** /email-audits | Create email audit
[**deleteEmailAudit**](EmailAuditControllerApi#deleteemailaudit) | **DELETE** /email-audits/{auditId} | Delete email audit
[**getEmailAudit**](EmailAuditControllerApi#getemailaudit) | **GET** /email-audits/{auditId} | Get email audit
[**getEmailAudits**](EmailAuditControllerApi#getemailaudits) | **GET** /email-audits | List email audits


# **compareEmailAudits**
> EmailAuditComparisonDto compareEmailAudits(auditId, otherAuditId)

Compare two email audits

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailAuditControllerApi();
final auditId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final otherAuditId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.compareEmailAudits(auditId, otherAuditId);
    print(result);
} catch (e) {
    print('Exception when calling EmailAuditControllerApi->compareEmailAudits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | **String**|  | 
 **otherAuditId** | **String**|  | 

### Return type

[**EmailAuditComparisonDto**](EmailAuditComparisonDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createEmailAudit**
> EmailAuditDto createEmailAudit(createEmailAuditOptions)

Create email audit

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailAuditControllerApi();
final createEmailAuditOptions = CreateEmailAuditOptions(); // CreateEmailAuditOptions | 

try {
    final result = api_instance.createEmailAudit(createEmailAuditOptions);
    print(result);
} catch (e) {
    print('Exception when calling EmailAuditControllerApi->createEmailAudit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmailAuditOptions** | [**CreateEmailAuditOptions**](CreateEmailAuditOptions)|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailAudit**
> deleteEmailAudit(auditId)

Delete email audit

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailAuditControllerApi();
final auditId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteEmailAudit(auditId);
} catch (e) {
    print('Exception when calling EmailAuditControllerApi->deleteEmailAudit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAudit**
> EmailAuditDto getEmailAudit(auditId)

Get email audit

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailAuditControllerApi();
final auditId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getEmailAudit(auditId);
    print(result);
} catch (e) {
    print('Exception when calling EmailAuditControllerApi->getEmailAudit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditId** | **String**|  | 

### Return type

[**EmailAuditDto**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAudits**
> List<EmailAuditDto> getEmailAudits(emailId, since, before, limit)

List email audits

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = EmailAuditControllerApi();
final emailId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final limit = 56; // int | 

try {
    final result = api_instance.getEmailAudits(emailId, since, before, limit);
    print(result);
} catch (e) {
    print('Exception when calling EmailAuditControllerApi->getEmailAudits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **String**|  | [optional] 
 **since** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<EmailAuditDto>**](EmailAuditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

