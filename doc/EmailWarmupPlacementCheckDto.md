# mailslurp.model.EmailWarmupPlacementCheckDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**programId** | **String** |  | 
**checkpointDay** | **int** |  | 
**type** | **String** |  | 
**status** | **String** |  | 
**scheduledFor** | [**DateTime**](DateTime) |  | 
**inboxPlacementRunId** | **String** |  | [optional] 
**targetCount** | **int** |  | 
**acceptedCount** | **int** |  | 
**inboxCount** | **int** |  | 
**spamCount** | **int** |  | 
**notReceivedCount** | **int** |  | 
**inboxPercent** | **int** |  | 
**providerResults** | [**List<EmailWarmupProviderPlacementDto>**](EmailWarmupProviderPlacementDto) |  | [default to const []]
**failureCode** | **String** |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


