# mailslurp.model.CheckEmailAuthStackResults

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** |  | 
**status** | **String** |  | 
**healthScore** | **int** |  | 
**totalChecks** | **int** |  | 
**passingChecks** | **int** |  | 
**failingChecks** | **int** |  | 
**spf** | [**LookupSpfDomainResults**](LookupSpfDomainResults) |  | 
**dmarc** | [**LookupDmarcDomainResults**](LookupDmarcDomainResults) |  | 
**dkim** | [**LookupDkimDomainResults**](LookupDkimDomainResults) |  | 
**bimi** | [**LookupBimiDomainResults**](LookupBimiDomainResults) |  | 
**mx** | [**LookupMxRecordsResults**](LookupMxRecordsResults) |  | 
**mtaSts** | [**LookupMtaStsDomainResults**](LookupMtaStsDomainResults) |  | 
**tlsReporting** | [**LookupTlsReportingDomainResults**](LookupTlsReportingDomainResults) |  | 
**insights** | **List<String>** |  | [default to const []]
**warnings** | **List<String>** |  | [default to const []]
**errors** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


