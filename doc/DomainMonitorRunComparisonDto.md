# mailslurp.model.DomainMonitorRunComparisonDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseline** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**current** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**healthScoreDelta** | **int** |  | 
**statusChanged** | **bool** |  | 
**passingChecksDelta** | **int** |  | 
**failingChecksDelta** | **int** |  | 
**spfChanged** | **bool** |  | 
**dmarcChanged** | **bool** |  | 
**dmarcEnforcedChanged** | **bool** |  | 
**mxChanged** | **bool** |  | 
**addedInsights** | **List<String>** |  | [default to const []]
**removedInsights** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


