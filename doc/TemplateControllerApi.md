# mailslurp.api.TemplateControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplateControllerApi#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](TemplateControllerApi#deletetemplate) | **DELETE** /templates/{templateId} | Delete email template
[**getAllTemplates**](TemplateControllerApi#getalltemplates) | **GET** /templates/paginated | List templates
[**getTemplate**](TemplateControllerApi#gettemplate) | **GET** /templates/{templateId} | Get template
[**getTemplatePreviewHtml**](TemplateControllerApi#gettemplatepreviewhtml) | **GET** /templates/{templateId}/preview/html | Get template preview HTML
[**getTemplatePreviewJson**](TemplateControllerApi#gettemplatepreviewjson) | **GET** /templates/{templateId}/preview/json | Get template preview Json
[**getTemplates**](TemplateControllerApi#gettemplates) | **GET** /templates | List templates
[**updateTemplate**](TemplateControllerApi#updatetemplate) | **PUT** /templates/{templateId} | Update template


# **createTemplate**
> TemplateDto createTemplate(createTemplateOptions)

Create a Template

Create an email template with variables for use with templated transactional emails.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final createTemplateOptions = CreateTemplateOptions(); // CreateTemplateOptions | 

try { 
    final result = api_instance.createTemplate(createTemplateOptions);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->createTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
> deleteTemplate(templateId)

Delete email template

Delete template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template ID

try { 
    api_instance.deleteTemplate(templateId);
} catch (e) {
    print('Exception when calling TemplateControllerApi->deleteTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| Template ID | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTemplates**
> PageTemplateProjection getAllTemplates(page, size, sort, since, before)

List templates

Get all templates in paginated format

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try { 
    final result = api_instance.getAllTemplates(page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->getAllTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
> TemplateDto getTemplate(templateId)

Get template

Get email template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template ID

try { 
    final result = api_instance.getTemplate(templateId);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->getTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| Template ID | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewHtml**
> String getTemplatePreviewHtml(templateId)

Get template preview HTML

Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template ID

try { 
    final result = api_instance.getTemplatePreviewHtml(templateId);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->getTemplatePreviewHtml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| Template ID | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewJson**
> TemplatePreview getTemplatePreviewJson(templateId)

Get template preview Json

Get email template preview with passed template variables in JSON format. Pass template variables as query params.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template ID

try { 
    final result = api_instance.getTemplatePreviewJson(templateId);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->getTemplatePreviewJson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| Template ID | 

### Return type

[**TemplatePreview**](TemplatePreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
> List<TemplateProjection> getTemplates()

List templates

Get all templates

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();

try { 
    final result = api_instance.getTemplates();
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->getTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TemplateProjection>**](TemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateTemplate**
> TemplateDto updateTemplate(templateId, createTemplateOptions)

Update template

Update email template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TemplateControllerApi();
final templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Template ID
final createTemplateOptions = CreateTemplateOptions(); // CreateTemplateOptions | 

try { 
    final result = api_instance.updateTemplate(templateId, createTemplateOptions);
    print(result);
} catch (e) {
    print('Exception when calling TemplateControllerApi->updateTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| Template ID | 
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

