# mailslurp.model.RerunDevicePreviewTargetsOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targetIds** | **List<String>** | Device preview target IDs to rerun within the existing run. Use target IDs from DevicePreviewRunResultsDto.targets. | [default to const []]
**failedOnly** | **bool** | When true, only selected targets in failed terminal states are rerun. Set false to rerun any selected target; a target that already completed successfully uses its credit cost again. Defaults to true. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


