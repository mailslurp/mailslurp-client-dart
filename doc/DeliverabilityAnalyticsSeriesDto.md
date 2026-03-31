# mailslurp.model.DeliverabilityAnalyticsSeriesDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**since** | [**DateTime**](DateTime) |  | 
**before** | [**DateTime**](DateTime) |  | 
**scope** | **String** |  | [optional] 
**bucket** | **String** |  | 
**summary** | [**DeliverabilityAnalyticsSummaryDto**](DeliverabilityAnalyticsSummaryDto) |  | 
**runs** | [**List<DeliverabilityAnalyticsRunDto>**](DeliverabilityAnalyticsRunDto) |  | [default to const []]
**points** | [**List<DeliverabilityAnalyticsSeriesPointDto>**](DeliverabilityAnalyticsSeriesPointDto) |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


