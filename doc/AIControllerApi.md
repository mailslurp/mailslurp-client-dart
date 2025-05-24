# mailslurp.api.AIControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateStructuredContentFromEmail**](AIControllerApi#generatestructuredcontentfromemail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**validateStructuredOutputSchema**](AIControllerApi#validatestructuredoutputschema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **generateStructuredContentFromEmail**
> StructuredContentResult generateStructuredContentFromEmail(generateStructuredContentEmailOptions)

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

[**StructuredContentResult**](StructuredContentResult)

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

