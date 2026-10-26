# mailslurp.model.CreateConnectorImapConnectionOptions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**imapSsl** | **bool** |  | [optional] 
**imapUsername** | **String** |  | [optional] 
**imapPassword** | **String** |  | [optional] 
**selectFolder** | **String** | Optional folder to select during IMAP connection | [optional] 
**searchTerms** | **String** |  | [optional] 
**imapPort** | **int** | IMAP server port | [optional] 
**imapHost** | **String** | IMAP server host | 
**enabled** | **bool** | IMAP server enabled | [optional] 
**startTls** | **bool** |  | [optional] 
**proxyEnabled** | **bool** |  | [optional] 
**proxyPort** | **int** |  | [optional] 
**proxyHost** | **String** |  | [optional] 
**localHostName** | **String** |  | [optional] 
**mechanisms** | **List<String>** | List of IMAP mechanisms | [optional] [default to const []]
**sslTrust** | **String** |  | [optional] 
**sslProtocols** | **List<String>** | List of SSL protocols | [optional] [default to const []]

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


