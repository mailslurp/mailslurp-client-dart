# mailslurp.model.ExtractAIMessageOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | [**AIMessageReference**](AIMessageReference) |  | 
**outputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**transformId** | **String** |  | [optional] 
**instructions** | **String** |  | [optional] 
**timeout** | **int** |  | 
**aiOptions** | [**AIMessageAIOptions**](AIMessageAIOptions) |  | 
**extractionPreset** | **String** | Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


