# mailslurp.model.DomainMonitorInsightsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monitorId** | **String** |  | 
**since** | [**DateTime**](DateTime) |  | 
**before** | [**DateTime**](DateTime) |  | 
**totalRuns** | **int** |  | 
**healthyRuns** | **int** |  | 
**degradedRuns** | **int** |  | 
**criticalRuns** | **int** |  | 
**failedRuns** | **int** |  | 
**successRate** | **double** |  | 
**averageHealthScore** | **double** |  | 
**currentHealthyStreak** | **int** |  | 
**bestHealthyStreak** | **int** |  | 
**goodPerformanceSignals** | **List<String>** |  | [default to const []]
**attentionSignals** | **List<String>** |  | [default to const []]
**topFindings** | **List<String>** |  | [default to const []]
**latestRun** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


