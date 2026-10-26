# mailslurp.model.EmailWarmupOverviewDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromDate** | [**DateTime**](DateTime) |  | 
**throughDate** | [**DateTime**](DateTime) |  | 
**totalPrograms** | **int** |  | 
**activePrograms** | **int** |  | 
**rampingPrograms** | **int** |  | 
**maintenancePrograms** | **int** |  | 
**pausedPrograms** | **int** |  | 
**attentionRequiredPrograms** | **int** |  | 
**acceptedSends** | **int** |  | 
**failedSends** | **int** |  | 
**dailyActivity** | [**List<EmailWarmupDailyActivityDto>**](EmailWarmupDailyActivityDto) |  | [default to const []]
**programProgress** | [**List<EmailWarmupProgramProgressDto>**](EmailWarmupProgramProgressDto) |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


