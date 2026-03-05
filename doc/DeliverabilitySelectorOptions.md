# mailslurp.model.DeliverabilitySelectorOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Selection mode | 
**pattern** | **String** | Wildcard pattern for PATTERN selection. Supports '*' and '?' wildcards. If no wildcard is present the value is treated as a case-insensitive contains match. | [optional] 
**phoneCountry** | **String** | Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope. | [optional] 
**entityIds** | **List<String>** | Explicit entity IDs for EXPLICIT selection | [optional] [default to const []]
**excludeEntityIds** | **List<String>** | Optional entity IDs to exclude from the resolved selection (applies after ALL/PATTERN/EXPLICIT selection). | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


