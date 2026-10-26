# mailslurp.model.AutomatedInboxPlacementScheduleDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**connectionId** | **String** |  | 
**name** | **String** |  | 
**enabled** | **bool** |  | 
**intervalMinutes** | **int** |  | 
**requestedSegment** | **String** |  | 
**seedlistProfile** | **String** |  | [optional] 
**subjectTemplate** | **String** |  | 
**textBodyTemplate** | **String** |  | [optional] 
**htmlBodyTemplate** | **String** |  | [optional] 
**sourceRunId** | **String** |  | [optional] 
**lastStatus** | **String** |  | [optional] 
**consecutiveFailures** | **int** |  | 
**lastRunAt** | [**DateTime**](DateTime) |  | [optional] 
**nextRunAt** | [**DateTime**](DateTime) |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


