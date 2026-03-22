# mailslurp.model.DeliverabilityTestDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**scope** | **String** |  | 
**selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**selectedEntityCount** | **int** |  | 
**expectations** | [**List<DeliverabilityExpectation>**](DeliverabilityExpectation) |  | [default to const []]
**status** | **String** |  | 
**startAt** | [**DateTime**](DateTime) |  | 
**startedAt** | [**DateTime**](DateTime) |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**maxDurationSeconds** | **int** |  | [optional] 
**successThresholdPercent** | **double** |  | [optional] 
**thresholdStatus** | **String** |  | 
**thresholdMet** | **bool** |  | [optional] 
**lastEvaluatedAt** | [**DateTime**](DateTime) |  | [optional] 
**totalEntities** | **int** |  | 
**matchedEntities** | **int** |  | 
**unmatchedEntities** | **int** |  | 
**completionPercentage** | **double** |  | 
**timedOut** | **bool** |  | 
**failureReason** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


