# mailslurp.model.GenerateSpfRecordOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | Domain the SPF record applies to | 
**includeDomains** | **List<String>** | Optional include domains | [optional] [default to const []]
**ip4** | **List<String>** | Optional IPv4 CIDRs or hosts | [optional] [default to const []]
**ip6** | **List<String>** | Optional IPv6 CIDRs or hosts | [optional] [default to const []]
**mx** | **bool** | Whether to include the MX mechanism | 
**a** | **bool** | Whether to include the A mechanism | 
**allPolicy** | **String** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


