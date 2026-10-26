# mailslurp.model.SmsMatchOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matches** | [**List<SmsMatchOption>**](SmsMatchOption) | Zero or more match options such as `{ field: 'BODY', should: 'CONTAIN', value: 'Welcome' }`. Options are additive so if one does not match the SMS is excluded from results | [optional] [default to const []]
**ai** | [**AIMessageMatchOptions**](AIMessageMatchOptions) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


