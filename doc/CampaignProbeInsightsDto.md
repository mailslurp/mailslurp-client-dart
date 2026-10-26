# mailslurp.model.CampaignProbeInsightsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**probeId** | **String** |  | 
**since** | [**DateTime**](DateTime) |  | 
**before** | [**DateTime**](DateTime) |  | 
**totalRuns** | **int** |  | 
**healthyRuns** | **int** |  | 
**warningRuns** | **int** |  | 
**failedRuns** | **int** |  | 
**successRate** | **double** |  | 
**averageHealthScore** | **double** |  | 
**currentHealthyStreak** | **int** |  | 
**bestHealthyStreak** | **int** |  | 
**goodPerformanceSignals** | **List<String>** |  | [default to const []]
**attentionSignals** | **List<String>** |  | [default to const []]
**topFindings** | **List<String>** |  | [default to const []]
**latestRun** | [**CampaignProbeRunDto**](CampaignProbeRunDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


