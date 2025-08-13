# mailslurp.api.AIControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransformer**](AIControllerApi#createtransformer) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**createTransformerMappings**](AIControllerApi#createtransformermappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**deleteAllTransformerMappings**](AIControllerApi#deletealltransformermappings) | **DELETE** /ai/transformer/mappings | Delete all transformer mapping
[**deleteTransformer**](AIControllerApi#deletetransformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**deleteTransformerMapping**](AIControllerApi#deletetransformermapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**deleteTransformers**](AIControllerApi#deletetransformers) | **DELETE** /ai/transformer | Delete all transformers
[**generateStructuredContentFromAttachment**](AIControllerApi#generatestructuredcontentfromattachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**generateStructuredContentFromEmail**](AIControllerApi#generatestructuredcontentfromemail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**generateStructuredContentFromSms**](AIControllerApi#generatestructuredcontentfromsms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**getTransformer**](AIControllerApi#gettransformer) | **GET** /ai/transformer/{id} | Get a transformer
[**getTransformerMapping**](AIControllerApi#gettransformermapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**getTransformerMappings**](AIControllerApi#gettransformermappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**getTransformerResult**](AIControllerApi#gettransformerresult) | **GET** /ai/transformer/results/{id} | Get transformer result
[**getTransformerResults**](AIControllerApi#gettransformerresults) | **GET** /ai/transformer/results | Get transformer results
[**getTransformers**](AIControllerApi#gettransformers) | **GET** /ai/transformer | List transformers
[**invokeTransformer**](AIControllerApi#invoketransformer) | **POST** /ai/transformer/invoke | Invoke a transformer
[**validateStructuredOutputSchema**](AIControllerApi#validatestructuredoutputschema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **createTransformer**
> AITransformDto createTransformer(aITransformCreateOptions)

Create a transformer for reuse in automations

Save an AI transform instructions and schema for use with webhooks and automations

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final aITransformCreateOptions = AITransformCreateOptions(); // AITransformCreateOptions | 

try {
    final result = api_instance.createTransformer(aITransformCreateOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->createTransformer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aITransformCreateOptions** | [**AITransformCreateOptions**](AITransformCreateOptions)|  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTransformerMappings**
> AITransformMappingDto createTransformerMappings(createAITransformerMappingOptions)

Create transformer mapping

Create AI transformer mappings to other entities

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final createAITransformerMappingOptions = CreateAITransformerMappingOptions(); // CreateAITransformerMappingOptions | 

try {
    final result = api_instance.createTransformerMappings(createAITransformerMappingOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->createTransformerMappings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAITransformerMappingOptions** | [**CreateAITransformerMappingOptions**](CreateAITransformerMappingOptions)|  | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllTransformerMappings**
> deleteAllTransformerMappings()

Delete all transformer mapping

Delete all AI transformer mappings

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();

try {
    api_instance.deleteAllTransformerMappings();
} catch (e) {
    print('Exception when calling AIControllerApi->deleteAllTransformerMappings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformer**
> deleteTransformer(id)

Delete a transformer

Delete an AI transformer and schemas by ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteTransformer(id);
} catch (e) {
    print('Exception when calling AIControllerApi->deleteTransformer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformerMapping**
> deleteTransformerMapping(id)

Delete transformer mapping

Delete an AI transformer mapping

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of transform mapping

try {
    api_instance.deleteTransformerMapping(id);
} catch (e) {
    print('Exception when calling AIControllerApi->deleteTransformerMapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of transform mapping | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformers**
> deleteTransformers()

Delete all transformers

Delete all AI transformers and schemas

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();

try {
    api_instance.deleteTransformers();
} catch (e) {
    print('Exception when calling AIControllerApi->deleteTransformers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromAttachment**
> StructuredContentResultDto generateStructuredContentFromAttachment(generateStructuredContentAttachmentOptions)

Generate structured content for an attachment

Use output schemas to extract data from an attachment using AI

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final generateStructuredContentAttachmentOptions = GenerateStructuredContentAttachmentOptions(); // GenerateStructuredContentAttachmentOptions | 

try {
    final result = api_instance.generateStructuredContentFromAttachment(generateStructuredContentAttachmentOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->generateStructuredContentFromAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentAttachmentOptions** | [**GenerateStructuredContentAttachmentOptions**](GenerateStructuredContentAttachmentOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromEmail**
> StructuredContentResultDto generateStructuredContentFromEmail(generateStructuredContentEmailOptions)

Generate structured content for an email

Use output schemas to extract data from an email using AI

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final generateStructuredContentEmailOptions = GenerateStructuredContentEmailOptions(); // GenerateStructuredContentEmailOptions | 

try {
    final result = api_instance.generateStructuredContentFromEmail(generateStructuredContentEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->generateStructuredContentFromEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentEmailOptions** | [**GenerateStructuredContentEmailOptions**](GenerateStructuredContentEmailOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromSms**
> StructuredContentResultDto generateStructuredContentFromSms(generateStructuredContentSmsOptions)

Generate structured content for a TXT message

Use output schemas to extract data from an SMS using AI

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final generateStructuredContentSmsOptions = GenerateStructuredContentSmsOptions(); // GenerateStructuredContentSmsOptions | 

try {
    final result = api_instance.generateStructuredContentFromSms(generateStructuredContentSmsOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->generateStructuredContentFromSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateStructuredContentSmsOptions** | [**GenerateStructuredContentSmsOptions**](GenerateStructuredContentSmsOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformer**
> AITransformDto getTransformer(id)

Get a transformer

Get AI transformer and schemas by ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getTransformer(id);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMapping**
> AITransformMappingDto getTransformerMapping(id)

Get transformer mapping

Get an AI transformer mapping

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of transform mapping

try {
    final result = api_instance.getTransformerMapping(id);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformerMapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of transform mapping | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMappings**
> PageAITransformMappingProjection getTransformerMappings(aiTransformId, entityId, entityType, page, size, sort)

Get transformer mappings

Get AI transformer mappings to other entities

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final aiTransformId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final entityId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final entityType = entityType_example; // String | 
final page = 56; // int | 
final size = 56; // int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getTransformerMappings(aiTransformId, entityId, entityType, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformerMappings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiTransformId** | **String**|  | [optional] 
 **entityId** | **String**|  | [optional] 
 **entityType** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageAITransformMappingProjection**](PageAITransformMappingProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResult**
> AITransformResultDto getTransformerResult(id)

Get transformer result

Get AI transformer result

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of transform result

try {
    final result = api_instance.getTransformerResult(id);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformerResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of transform result | 

### Return type

[**AITransformResultDto**](AITransformResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResults**
> PageAITransformResultProjection getTransformerResults(aiTransformId, aiTransformMappingId, entityId, entityType, page, size, sort)

Get transformer results

Get AI transformer results

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final aiTransformId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final aiTransformMappingId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final entityId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final entityType = entityType_example; // String | 
final page = 56; // int | 
final size = 56; // int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try {
    final result = api_instance.getTransformerResults(aiTransformId, aiTransformMappingId, entityId, entityType, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformerResults: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiTransformId** | **String**|  | [optional] 
 **aiTransformMappingId** | **String**|  | [optional] 
 **entityId** | **String**|  | [optional] 
 **entityType** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageAITransformResultProjection**](PageAITransformResultProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformers**
> PageAITransformProjection getTransformers(page, size, sort, include)

List transformers

List all AI transforms

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final page = 56; // int | 
final size = 56; // int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final include = []; // List<String> | Optional list of IDs to include in result

try {
    final result = api_instance.getTransformers(page, size, sort, include);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->getTransformers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 0]
 **size** | **int**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **include** | [**List<String>**](String)| Optional list of IDs to include in result | [optional] [default to const []]

### Return type

[**PageAITransformProjection**](PageAITransformProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **invokeTransformer**
> ConditionalStructuredContentResult invokeTransformer(invokeTransformerOptions)

Invoke a transformer

Execute an AI transformer to generate structured content

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final invokeTransformerOptions = InvokeTransformerOptions(); // InvokeTransformerOptions | 

try {
    final result = api_instance.invokeTransformer(invokeTransformerOptions);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->invokeTransformer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invokeTransformerOptions** | [**InvokeTransformerOptions**](InvokeTransformerOptions)|  | 

### Return type

[**ConditionalStructuredContentResult**](ConditionalStructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateStructuredOutputSchema**
> StructuredOutputSchemaValidation validateStructuredOutputSchema(structuredOutputSchema)

Validate structured content schema

Check if a schema is valid and can be used to extract data using AI

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = AIControllerApi();
final structuredOutputSchema = StructuredOutputSchema(); // StructuredOutputSchema | 

try {
    final result = api_instance.validateStructuredOutputSchema(structuredOutputSchema);
    print(result);
} catch (e) {
    print('Exception when calling AIControllerApi->validateStructuredOutputSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structuredOutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema)|  | 

### Return type

[**StructuredOutputSchemaValidation**](StructuredOutputSchemaValidation)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

