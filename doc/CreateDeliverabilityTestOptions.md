# mailslurp.model.CreateDeliverabilityTestOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Optional name for the test | [optional] 
**description** | **String** | Optional description | [optional] 
**scope** | **String** | Entity scope to evaluate | 
**startAt** | [**DateTime**](DateTime) | UTC instant when the receive window starts. Defaults to now if omitted. | [optional] 
**maxDurationSeconds** | **int** | Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED. | [optional] 
**successThresholdPercent** | **double** | Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage. | [optional] 
**selector** | [**DeliverabilitySelectorOptions**](DeliverabilitySelectorOptions) |  | 
**expectations** | [**List<DeliverabilityExpectation>**](DeliverabilityExpectation) | One or more expectations to evaluate for each entity | [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


