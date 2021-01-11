# mailslurp.model.MatchOption

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The email property to match on. One of SUBJECT, TO, BCC, CC or FROM | [optional] [default to null]
**should** | **String** | What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines to fields and body content. | [optional] [default to null]
**value** | **String** | The value you wish to compare with the value of the field specified using the &#x60;should&#x60; value passed. For example &#x60;BODY&#x60; should &#x60;CONTAIN&#x60; a value passed. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


