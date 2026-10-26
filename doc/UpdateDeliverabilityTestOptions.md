# mailslurp.model.UpdateDeliverabilityTestOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Optional updated name | [optional] 
**description** | **String** | Optional updated description | [optional] 
**startAt** | [**DateTime**](DateTime) | Optional updated receive-window start time. Only applied while test is not terminal. | [optional] 
**maxDurationSeconds** | **int** | Optional updated timeout in seconds | [optional] 
**clearMaxDuration** | **bool** | Set true to clear timeout. If true, maxDurationSeconds is ignored for this request. | [optional] 
**successThresholdPercent** | **double** | Optional updated acceptable success threshold percentage (0,100]. | [optional] 
**clearSuccessThreshold** | **bool** | Set true to clear success threshold. If true, successThresholdPercent is ignored for this request. | [optional] 
**expectations** | [**List<DeliverabilityExpectation>**](DeliverabilityExpectation) | Optional replacement expectations | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


