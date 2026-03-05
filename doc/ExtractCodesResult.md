# mailslurp.model.ExtractCodesResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**found** | **bool** | True if at least one code candidate was found | 
**code** | **String** | Best candidate code when found | [optional] 
**methodUsed** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | [optional] 
**candidates** | [**List<CodeCandidate>**](CodeCandidate) | Ranked code candidates | [default to const []]
**warnings** | **List<String>** | Warnings or fallback notes explaining extraction behavior for debugging and QA. | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


