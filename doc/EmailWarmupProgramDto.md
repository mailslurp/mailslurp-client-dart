# mailslurp.model.EmailWarmupProgramDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**connectionId** | **String** |  | 
**senderEmail** | **String** |  | 
**name** | **String** |  | 
**customerIntent** | **String** |  | 
**executionPolicy** | **String** |  | 
**programMode** | **String** |  | 
**status** | **String** |  | 
**blockers** | **Set<String>** |  | [default to const {}]
**currentDailyVolume** | **int** |  | 
**goalDailyVolume** | **int** |  | 
**schedulePreset** | **String** |  | 
**rampDurationDays** | **int** |  | 
**maintenanceEnabled** | **bool** |  | 
**maintenanceDailyVolume** | **int** |  | 
**sendWindowStart** | **String** |  | 
**sendWindowEnd** | **String** |  | 
**timeZone** | **String** |  | 
**requestedCoverage** | **String** |  | 
**resolvedCoverage** | **String** |  | 
**baselineTestId** | **String** |  | [optional] 
**baselineSource** | **String** |  | 
**contentSource** | **String** |  | 
**content** | [**EmailWarmupContentOptions**](EmailWarmupContentOptions) |  | 
**contentHash** | **String** |  | 
**senderOwnershipAttestedAt** | [**DateTime**](DateTime) |  | 
**permissionBasedSendingAttestedAt** | [**DateTime**](DateTime) |  | 
**attestationPolicyVersion** | **String** |  | 
**policyVersion** | **String** |  | 
**contentPolicyVersion** | **String** |  | 
**recipientPolicyVersion** | **String** |  | 
**nextActionAt** | [**DateTime**](DateTime) |  | [optional] 
**startedAt** | [**DateTime**](DateTime) |  | [optional] 
**completedAt** | [**DateTime**](DateTime) |  | [optional] 
**completionCode** | **String** |  | [optional] 
**version** | **int** |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


