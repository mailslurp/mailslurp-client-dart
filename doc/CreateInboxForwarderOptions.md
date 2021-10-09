# mailslurp.model.CreateInboxForwarderOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Field to match against to trigger inbox forwarding for inbound email | [optional] 
**forwardToRecipients** | **List<String>** | Email addresses to forward an email to if it matches the field and match criteria of the forwarder | [optional] [default to const []]
**match** | **String** | String or wildcard style match for field specified when evaluating forwarding rules | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


