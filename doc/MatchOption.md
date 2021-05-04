# mailslurp.model.MatchOption

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The email property to match on. One of SUBJECT, TO, BCC, CC or FROM | [optional] 
**should** | **String** | What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines to fields and body content. | [optional] 
**value** | **String** | The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


