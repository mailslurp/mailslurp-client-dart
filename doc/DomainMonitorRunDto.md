# mailslurp.model.DomainMonitorRunDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**monitorId** | **String** |  | 
**userId** | **String** |  | 
**domain** | **String** |  | 
**status** | **String** |  | 
**triggerSource** | **String** |  | 
**healthScore** | **int** |  | 
**totalChecks** | **int** |  | 
**passingChecks** | **int** |  | 
**failingChecks** | **int** |  | 
**spfOk** | **bool** |  | 
**dmarcOk** | **bool** |  | 
**dmarcEnforced** | **bool** |  | 
**mxOk** | **bool** |  | 
**insights** | **List<String>** |  | [default to const []]
**errorMessage** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


