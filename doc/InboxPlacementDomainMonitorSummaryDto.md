# mailslurp.model.InboxPlacementDomainMonitorSummaryDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **String** | Sender-domain monitor state derived while analyzing an inbox placement run | 
**domain** | **String** |  | [optional] 
**providerManaged** | **bool** |  | 
**source_** | **String** | Source for an inbox-placement domain monitor summary | 
**status** | **String** |  | [optional] 
**healthScore** | **int** |  | [optional] 
**totalChecks** | **int** |  | [optional] 
**passingChecks** | **int** |  | [optional] 
**failingChecks** | **int** |  | [optional] 
**spfOk** | **bool** |  | [optional] 
**dmarcOk** | **bool** |  | [optional] 
**dmarcEnforced** | **bool** |  | [optional] 
**mxOk** | **bool** |  | [optional] 
**dkimOk** | **bool** |  | [optional] 
**bimiOk** | **bool** |  | [optional] 
**mtaStsOk** | **bool** |  | [optional] 
**tlsReportingOk** | **bool** |  | [optional] 
**blacklistChecked** | **bool** |  | 
**blacklistOk** | **bool** |  | 
**blacklistListed** | **bool** |  | 
**blacklistStatus** | **String** |  | 
**observedSendingIp** | **String** |  | [optional] 
**scoreVersion** | **String** |  | 
**scoreScope** | **String** |  | 
**insights** | **List<String>** |  | [default to const []]
**errorMessage** | **String** |  | [optional] 
**monitorId** | **String** |  | [optional] 
**runId** | **String** |  | [optional] 
**checkedAt** | [**DateTime**](DateTime) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


