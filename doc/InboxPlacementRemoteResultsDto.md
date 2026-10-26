# mailslurp.model.InboxPlacementRemoteResultsDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**test** | [**InboxPlacementRemoteTestSummaryDto**](InboxPlacementRemoteTestSummaryDto) |  | 
**deliverability** | [**InboxPlacementDeliverabilitySummaryDto**](InboxPlacementDeliverabilitySummaryDto) |  | 
**setupAnalysis** | **Map<String, String>** |  | [default to const {}]
**contentAnalysis** | **Map<String, String>** |  | [default to const {}]
**analysis** | [**InboxPlacementAnalysisBundleDto**](InboxPlacementAnalysisBundleDto) |  | [optional] 
**providerAnalysis** | [**InboxPlacementProviderAnalysisDto**](InboxPlacementProviderAnalysisDto) |  | [optional] 
**targets** | [**List<InboxPlacementTargetResultDto>**](InboxPlacementTargetResultDto) |  | [default to const []]
**scores** | [**List<Map<String, String>>**](Map) |  | [default to const []]
**share** | **Map<String, String>** |  | [optional] [default to const {}]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


