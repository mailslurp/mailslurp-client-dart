# mailslurp.model.InboxPlacementAnalyticsSeriesDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**since** | [**DateTime**](DateTime) |  | 
**before** | [**DateTime**](DateTime) |  | 
**bucket** | **String** |  | 
**groupBy** | **String** |  | 
**senderDomain** | **String** |  | [optional] 
**fromEmail** | **String** |  | [optional] 
**summary** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 
**runs** | [**List<InboxPlacementAnalyticsRunDto>**](InboxPlacementAnalyticsRunDto) |  | [default to const []]
**points** | [**List<InboxPlacementAnalyticsSeriesPointDto>**](InboxPlacementAnalyticsSeriesPointDto) |  | [default to const []]
**groups** | [**List<InboxPlacementAnalyticsGroupSeriesDto>**](InboxPlacementAnalyticsGroupSeriesDto) |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


