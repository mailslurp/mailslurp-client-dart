# mailslurp.model.EmailWarmupProgramAnalyticsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**programId** | **String** |  | 
**fromDate** | [**DateTime**](DateTime) |  | 
**throughDate** | [**DateTime**](DateTime) |  | 
**progress** | [**EmailWarmupProgramProgressDto**](EmailWarmupProgramProgressDto) |  | 
**totalScheduledSends** | **int** |  | 
**totalAcceptedSends** | **int** |  | 
**totalObservedSends** | **int** |  | 
**totalFailedSends** | **int** |  | 
**attentionRequiredSends** | **int** |  | 
**dailyActivity** | [**List<EmailWarmupDailyActivityDto>**](EmailWarmupDailyActivityDto) |  | [default to const []]
**placementChecks** | [**List<EmailWarmupPlacementCheckDto>**](EmailWarmupPlacementCheckDto) |  | [default to const []]
**readiness** | [**EmailWarmupReadinessDto**](EmailWarmupReadinessDto) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


