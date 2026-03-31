# mailslurp.model.EmailIntelligenceSignalsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**normalizedTarget** | **String** |  | 
**emailAddress** | **String** |  | [optional] 
**domain** | **String** |  | 
**localPart** | **String** |  | [optional] 
**randomLocalPart** | **bool** |  | [optional] 
**localPartEntropy** | **double** |  | [optional] 
**freeEmailProvider** | **bool** |  | [optional] 
**hasHttpsWebsite** | **bool** |  | [optional] 
**dnsARecordPresent** | **bool** |  | [optional] 
**dnsMxRecordPresent** | **bool** |  | [optional] 
**soaRecordPresent** | **bool** |  | [optional] 
**domainAgeHintDays** | **int** |  | [optional] 
**neverBounceSafeToSend** | **bool** |  | [optional] 
**notes** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


