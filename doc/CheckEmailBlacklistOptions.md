# mailslurp.model.CheckEmailBlacklistOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | Domain to check against configured domain blocklists. Domain A and MX addresses are not treated as outbound sending IPs unless includeDomainInfrastructure is explicitly enabled. | [optional] 
**ipAddress** | **String** | Specific observed or configured outbound IPv4 address to check directly | [optional] 
**mxHost** | **String** | Specific MX host to resolve and check as inbound infrastructure. MX results do not prove outbound sender reputation. | [optional] 
**includeDomainInfrastructure** | **bool** | Explicitly include the domain A address and discovered MX addresses as infrastructure diagnostics. Defaults to false because these addresses are normally not outbound sending IPs. | [optional] 
**captchaToken** | **String** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


