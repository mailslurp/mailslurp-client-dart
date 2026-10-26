# mailslurp.model.PostmasterTrafficStatsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**domain** | **String** |  | 
**reportDate** | [**DateTime**](DateTime) |  | [optional] 
**userReportedSpamRatio** | **double** |  | [optional] 
**domainReputation** | **String** |  | [optional] 
**ipReputations** | [**List<PostmasterIpReputationDto>**](PostmasterIpReputationDto) |  | [default to const []]
**spfSuccessRatio** | **double** |  | [optional] 
**dkimSuccessRatio** | **double** |  | [optional] 
**dmarcSuccessRatio** | **double** |  | [optional] 
**outboundEncryptionRatio** | **double** |  | [optional] 
**inboundEncryptionRatio** | **double** |  | [optional] 
**payload** | [**Object**]() |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


