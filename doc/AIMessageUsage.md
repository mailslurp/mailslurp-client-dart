# mailslurp.model.AIMessageUsage

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokens** | **int** | Consumed MailSlurp AI tokens after applying the model multiplier. These are not raw provider tokens. | 
**candidatesEvaluated** | **int** |  | 
**complete** | **bool** | False when a timed-out provider invocation is still settling. The reservation remains held and actual usage is settled when it finishes. | 
**reservedTokens** | **int** | AI tokens held for provider attempts with unknown usage. Excluded from tokens; complete remains false until reconciliation. | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


