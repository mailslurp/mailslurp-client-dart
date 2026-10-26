# mailslurp.model.CreateDevicePreviewOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targets** | **List<String>** | Optional device preview target keys to request for rendering. Null leaves target selection to service configuration. Values are forwarded to ESP so newly deployed targets can be used before this API's enum list is updated. | [optional] [default to const []]
**allTargets** | **bool** | When true, ask the renderer to include every currently configured target. Cannot be combined with targets. | [optional] 
**qa** | [**CreateDevicePreviewQaOptions**](CreateDevicePreviewQaOptions) |  | [optional] 
**folderId** | **String** | Optional folder for organizing the render. Missing folders leave the render unfiled. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


