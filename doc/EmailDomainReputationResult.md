# mailslurp.model.EmailDomainReputationResult

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input** | **String** |  | 
**normalizedTarget** | **String** |  | 
**emailAddress** | **String** |  | [optional] 
**domain** | **String** |  | [optional] 
**ipAddress** | **String** |  | [optional] 
**mxHost** | **String** |  | [optional] 
**status** | **String** |  | 
**listed** | **bool** |  | 
**blacklist** | [**CheckEmailBlacklistResults**](CheckEmailBlacklistResults) |  | [optional] 
**insights** | **List<String>** |  | [default to const []]
**warnings** | **List<String>** |  | [default to const []]
**errors** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


