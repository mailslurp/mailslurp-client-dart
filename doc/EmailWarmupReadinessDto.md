# mailslurp.model.EmailWarmupReadinessDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | 
**summary** | **String** |  | 
**readyForDailyVolume** | **int** |  | 
**goalDailyVolume** | **int** |  | 
**estimatedReadyAt** | [**DateTime**](DateTime) |  | [optional] 
**today** | [**EmailWarmupTodayDto**](EmailWarmupTodayDto) |  | 
**pacing** | [**EmailWarmupPacingDto**](EmailWarmupPacingDto) |  | 
**placementDeltas** | [**List<EmailWarmupPlacementDeltaDto>**](EmailWarmupPlacementDeltaDto) |  | [default to const []]
**domainHealth** | [**EmailWarmupDomainHealthDto**](EmailWarmupDomainHealthDto) |  | 
**postmasterSignals** | [**EmailWarmupPostmasterSignalsDto**](EmailWarmupPostmasterSignalsDto) |  | [optional] 
**recommendations** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


