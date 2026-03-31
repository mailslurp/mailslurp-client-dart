# mailslurp.model.AIMappingMatchOption

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Fields of an email, sms, or attachment object that can be used to filter results | 
**should** | **String** | How the value of the field specified should be compared to the value given in the match options. | 
**value** | **String** | The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed. When should value is `MATCH` pass a regex | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


