# mailslurp.model.CodeCandidate

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Extracted code value | 
**confidence** | **double** | Relative confidence score from 0 to 1 | 
**method** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | 
**source_** | **String** | Source fragment used for extraction, for example RAW_TEXT_PART or SMS_BODY | 
**context** | **String** | Nearby text context useful for debugging extraction decisions | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


