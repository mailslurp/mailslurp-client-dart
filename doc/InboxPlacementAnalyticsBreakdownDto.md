# mailslurp.model.InboxPlacementAnalyticsBreakdownDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**since** | [**DateTime**](DateTime) |  | 
**before** | [**DateTime**](DateTime) |  | 
**senderDomain** | **String** |  | [optional] 
**fromEmail** | **String** |  | [optional] 
**summary** | [**InboxPlacementAnalyticsSummaryDto**](InboxPlacementAnalyticsSummaryDto) |  | 
**folders** | [**List<InboxPlacementFolderBreakdownDto>**](InboxPlacementFolderBreakdownDto) |  | [default to const []]
**providers** | [**List<InboxPlacementProviderBreakdownDto>**](InboxPlacementProviderBreakdownDto) |  | [default to const []]
**senderDomains** | [**List<InboxPlacementSenderBreakdownDto>**](InboxPlacementSenderBreakdownDto) |  | [default to const []]
**fromEmails** | [**List<InboxPlacementSenderBreakdownDto>**](InboxPlacementSenderBreakdownDto) |  | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


