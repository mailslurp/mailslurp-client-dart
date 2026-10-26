# mailslurp.model.EmailIntelligenceOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targets** | **List<String>** | Email addresses or domains to score. | [default to const []]
**page** | **int** | Zero-based page index for processing a subset of the target list. | [optional] 
**size** | **int** | Page size for processing a subset of the target list. | [optional] 
**ignoreCache** | **bool** | Ignore cached intelligence values and force recomputation. | [optional] 
**includeEmailValidation** | **bool** | Also run mailbox safety verification using the existing verification client for email inputs. | [optional] 
**tests** | [**EmailIntelligenceTestsOptions**](EmailIntelligenceTestsOptions) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


