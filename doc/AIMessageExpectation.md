# mailslurp.model.AIMessageExpectation

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**scope** | [**AIMessageScope**](AIMessageScope) |  | 
**match** | [**AIMessageMatchOptions**](AIMessageMatchOptions) |  | [optional] 
**emailMatchOptions** | [**MatchOptions**](MatchOptions) |  | [optional] 
**smsMatchOptions** | [**SmsMatchOptions**](SmsMatchOptions) |  | [optional] 
**assertions** | [**List<AIMessageAssertion>**](AIMessageAssertion) |  | [default to const []]
**outputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**transformId** | **String** |  | [optional] 
**instructions** | **String** |  | [optional] 
**extractionPreset** | **String** | Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


