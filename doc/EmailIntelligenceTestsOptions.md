# mailslurp.model.EmailIntelligenceTestsOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**checkRandomLocalPart** | **bool** | Check local-part randomness for email inputs. | [optional] 
**checkFreeProvider** | **bool** | Check if domain is a known free email provider. | [optional] 
**checkHttpsWebsite** | **bool** | Check if the domain has a reachable HTTPS website. | [optional] 
**checkDns** | **bool** | Check DNS records (A, MX, SOA) for the domain. | [optional] 
**checkDomainAgeHint** | **bool** | Derive a domain age hint from DNS SOA serial when possible. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


