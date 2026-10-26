# mailslurp.model.AnalyzeDmarcReportResults

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**DmarcReportMetadata**](DmarcReportMetadata) |  | 
**recordCount** | **int** |  | 
**totalMessages** | **int** |  | 
**rejectCount** | **int** |  | 
**quarantineCount** | **int** |  | 
**noneCount** | **int** |  | 
**dkimAlignedCount** | **int** |  | 
**spfAlignedCount** | **int** |  | 
**fullyAlignedCount** | **int** |  | 
**failedAlignmentCount** | **int** |  | 
**topSources** | [**List<DmarcReportSourceSummary>**](DmarcReportSourceSummary) |  | [default to const []]
**warnings** | **List<String>** |  | [default to const []]
**errors** | **List<String>** |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


