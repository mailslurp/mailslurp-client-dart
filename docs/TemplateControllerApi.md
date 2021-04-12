# mailslurp.api.TemplateControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplateControllerApi#createTemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](TemplateControllerApi#deleteTemplate) | **DELETE** /templates/{TemplateId} | Delete Template
[**getAllTemplates**](TemplateControllerApi#getAllTemplates) | **GET** /templates/paginated | Get all Templates in paginated format
[**getTemplate**](TemplateControllerApi#getTemplate) | **GET** /templates/{TemplateId} | Get Template
[**getTemplates**](TemplateControllerApi#getTemplates) | **GET** /templates | Get all Templates


# **createTemplate**
> TemplateDto createTemplate(createTemplateOptions)

Create a Template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = TemplateControllerApi();
var createTemplateOptions = CreateTemplateOptions(); // CreateTemplateOptions | createTemplateOptions

try { 
    var result = api_instance.createTemplate(createTemplateOptions);
    print(result);
} catch (e) {
    print("Exception when calling TemplateControllerApi->createTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions)| createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
> deleteTemplate(templateId)

Delete Template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = TemplateControllerApi();
var templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | TemplateId

try { 
    api_instance.deleteTemplate(templateId);
} catch (e) {
    print("Exception when calling TemplateControllerApi->deleteTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| TemplateId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTemplates**
> PageTemplateProjection getAllTemplates(page, size, sort)

Get all Templates in paginated format

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = TemplateControllerApi();
var page = 56; // int | Optional page index in inbox list pagination
var size = 56; // int | Optional page size in inbox list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getAllTemplates(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TemplateControllerApi->getAllTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
> TemplateDto getTemplate(templateId)

Get Template

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = TemplateControllerApi();
var templateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | TemplateId

try { 
    var result = api_instance.getTemplate(templateId);
    print(result);
} catch (e) {
    print("Exception when calling TemplateControllerApi->getTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | [**String**]()| TemplateId | [default to null]

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
> List<TemplateProjection> getTemplates()

Get all Templates

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

var api_instance = TemplateControllerApi();

try { 
    var result = api_instance.getTemplates();
    print(result);
} catch (e) {
    print("Exception when calling TemplateControllerApi->getTemplates: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

