# mailslurp.model.EmailAnalysis

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dkimVerdict** | **String** | Verdict of DomainKeys Identified Mail analysis | [optional] [default to null]
**dmarcVerdict** | **String** | Verdict of Domain-based Message Authentication Reporting and Conformance analysis | [optional] [default to null]
**spamVerdict** | **String** | Verdict of spam ranking analysis | [optional] [default to null]
**spfVerdict** | **String** | Verdict of Send Policy Framework record spoofing analysis | [optional] [default to null]
**virusVerdict** | **String** | Verdict of virus scan analysis | [optional] [default to null]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


