# mailslurp.model.DeliverabilitySimulationJobDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**testId** | **String** |  | 
**scope** | **String** |  | 
**status** | **String** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 
**startedAt** | [**DateTime**](DateTime) |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**totalTargets** | **int** |  | 
**totalPlannedSends** | **int** |  | 
**nextSendIndex** | **int** |  | 
**sentCount** | **int** |  | 
**successCount** | **int** |  | 
**failureCount** | **int** |  | 
**progressPercent** | **double** |  | 
**activeTargetLabel** | **String** |  | [optional] 
**estimatedRemainingMs** | **int** |  | [optional] 
**configSnapshot** | [**DeliverabilitySimulationJobConfigDto**](DeliverabilitySimulationJobConfigDto) |  | 
**errorSummary** | [**DeliverabilitySimulationJobErrorSummaryDto**](DeliverabilitySimulationJobErrorSummaryDto) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


