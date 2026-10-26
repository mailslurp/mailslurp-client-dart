# mailslurp.model.CheckDnsPropagationResults

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **String** |  | 
**recordType** | **String** | Domain Name Server Record Types | 
**expectedValue** | **String** |  | [optional] 
**propagatedToAllResolvers** | **bool** |  | 
**respondingResolverCount** | **int** |  | 
**matchingResolverCount** | **int** |  | 
**resolverResults** | [**List<DnsPropagationResolverResult>**](DnsPropagationResolverResult) |  | [default to const []]
**warnings** | **List<String>** |  | [default to const []]
**errors** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


