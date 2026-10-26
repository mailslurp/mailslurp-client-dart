# mailslurp.model.DomainMonitorObservedAuthSampleDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**monitorId** | **String** |  | 
**domain** | **String** |  | 
**recipientAddress** | **String** |  | 
**sourceMessageId** | **String** |  | [optional] 
**messageId** | **String** |  | [optional] 
**fromAddress** | **String** |  | [optional] 
**fromDomain** | **String** |  | [optional] 
**returnPath** | **String** |  | [optional] 
**returnPathDomain** | **String** |  | [optional] 
**spfStatus** | **String** |  | 
**spfEvaluatedDomain** | **String** |  | [optional] 
**spfSourceIp** | **String** |  | [optional] 
**dkimStatus** | **String** |  | 
**dkimSignatures** | [**List<DomainMonitorDkimSignatureDto>**](DomainMonitorDkimSignatureDto) |  | [default to const []]
**dmarcStatus** | **String** |  | 
**dmarcAlignedIdentifier** | **String** |  | [optional] 
**trustedAuthenticationResultsSource** | **String** |  | [optional] 
**providerHints** | **List<String>** |  | [default to const []]
**accepted** | **bool** |  | 
**validationError** | **String** |  | [optional] 
**receivedAt** | [**DateTime**](DateTime) |  | 
**createdAt** | [**DateTime**](DateTime) |  | 
**updatedAt** | [**DateTime**](DateTime) |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


