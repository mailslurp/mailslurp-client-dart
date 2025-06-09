# mailslurp.model.ImapServerSearchOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seqNum** | **String** |  | [optional] 
**uid** | **String** |  | [optional] 
**since** | [**DateTime**](DateTime) |  | [optional] 
**before** | [**DateTime**](DateTime) |  | [optional] 
**sentSince** | [**DateTime**](DateTime) |  | [optional] 
**sentBefore** | [**DateTime**](DateTime) |  | [optional] 
**header** | [**Map<String, List<String>>**](List) |  | [optional] [default to const {}]
**body** | **List<String>** |  | [optional] [default to const []]
**text** | **List<String>** |  | [optional] [default to const []]
**withFlags** | **List<String>** |  | [optional] [default to const []]
**withoutFlags** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


