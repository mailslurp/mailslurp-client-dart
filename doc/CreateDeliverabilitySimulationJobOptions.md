# mailslurp.model.CreateDeliverabilitySimulationJobOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderInboxId** | **String** | Sender inbox ID for INBOX scope tests | [optional] 
**senderPhoneId** | **String** | Sender phone ID for PHONE scope tests | [optional] 
**email** | [**DeliverabilitySimulationEmailOptions**](DeliverabilitySimulationEmailOptions) |  | [optional] 
**sms** | [**DeliverabilitySimulationSmsOptions**](DeliverabilitySimulationSmsOptions) |  | [optional] 
**delayMs** | **int** | Delay between individual sends in milliseconds | [optional] 
**batchSize** | **int** | Maximum sends processed per scheduler batch | [optional] 
**sendsPerTarget** | **int** | Optional fixed sends per target. If omitted this is derived from test expectations. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


