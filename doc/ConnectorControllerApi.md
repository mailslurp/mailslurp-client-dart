# mailslurp.api.ConnectorControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](ConnectorControllerApi#createconnector) | **POST** /connectors | Create an inbox connector
[**createConnectorImapConnection**](ConnectorControllerApi#createconnectorimapconnection) | **POST** /connectors/{id}/imap | Create an inbox connector IMAP connection
[**createConnectorSmtpConnection**](ConnectorControllerApi#createconnectorsmtpconnection) | **POST** /connectors/{id}/smtp | Create an inbox connector SMTP connection
[**createConnectorSyncSettings**](ConnectorControllerApi#createconnectorsyncsettings) | **POST** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**createConnectorWithOptions**](ConnectorControllerApi#createconnectorwithoptions) | **POST** /connectors/withOptions | Create an inbox connector with options
[**deleteAllConnector**](ConnectorControllerApi#deleteallconnector) | **DELETE** /connectors | Delete all inbox connectors
[**deleteConnector**](ConnectorControllerApi#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**deleteConnectorImapConnection**](ConnectorControllerApi#deleteconnectorimapconnection) | **DELETE** /connectors/{id}/imap | Delete an inbox connector IMAP connection
[**deleteConnectorSmtpConnection**](ConnectorControllerApi#deleteconnectorsmtpconnection) | **DELETE** /connectors/{id}/smtp | Delete an inbox connector SMTP connection
[**deleteConnectorSyncSettings**](ConnectorControllerApi#deleteconnectorsyncsettings) | **DELETE** /connectors/{id}/sync-settings | Create an inbox connector sync settings
[**getAllConnectorEvents**](ConnectorControllerApi#getallconnectorevents) | **GET** /connectors/events | Get all inbox connector events
[**getConnector**](ConnectorControllerApi#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorByEmailAddress**](ConnectorControllerApi#getconnectorbyemailaddress) | **GET** /connectors/by-email-address | Get connector by email address
[**getConnectorByInboxId**](ConnectorControllerApi#getconnectorbyinboxid) | **GET** /connectors/by-inbox-id | Get connector by inbox ID
[**getConnectorByName**](ConnectorControllerApi#getconnectorbyname) | **GET** /connectors/by-name | Get connector by name
[**getConnectorEvent**](ConnectorControllerApi#getconnectorevent) | **GET** /connectors/events/{id} | Get an inbox connector event
[**getConnectorEvents**](ConnectorControllerApi#getconnectorevents) | **GET** /connectors/{id}/events | Get an inbox connector events
[**getConnectorImapConnection**](ConnectorControllerApi#getconnectorimapconnection) | **GET** /connectors/{id}/imap | Get an inbox connector IMAP connection
[**getConnectorProviderSettings**](ConnectorControllerApi#getconnectorprovidersettings) | **GET** /connectors/provider-settings | Get SMTP and IMAP connection settings for common mail providers
[**getConnectorSmtpConnection**](ConnectorControllerApi#getconnectorsmtpconnection) | **GET** /connectors/{id}/smtp | Get an inbox connector SMTP connection
[**getConnectorSyncSettings**](ConnectorControllerApi#getconnectorsyncsettings) | **GET** /connectors/{id}/sync-settings | Get an inbox connector sync settings
[**getConnectors**](ConnectorControllerApi#getconnectors) | **GET** /connectors | Get inbox connectors
[**sendEmailFromConnector**](ConnectorControllerApi#sendemailfromconnector) | **POST** /connectors/{id}/send | Send from an inbox connector
[**syncConnector**](ConnectorControllerApi#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**testConnectorImapConnection**](ConnectorControllerApi#testconnectorimapconnection) | **POST** /connectors/{id}/imap/test | Test an inbox connector IMAP connection
[**testConnectorImapConnectionOptions**](ConnectorControllerApi#testconnectorimapconnectionoptions) | **POST** /connectors/connections/imap/test | Test an inbox connector IMAP connection options
[**testConnectorSmtpConnection**](ConnectorControllerApi#testconnectorsmtpconnection) | **POST** /connectors/{id}/smtp/test | Test an inbox connector SMTP connection
[**testConnectorSmtpConnectionOptions**](ConnectorControllerApi#testconnectorsmtpconnectionoptions) | **POST** /connectors/connections/smtp/test | Test an inbox connector SMTP connection options
[**updateConnector**](ConnectorControllerApi#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector
[**updateConnectorImapConnection**](ConnectorControllerApi#updateconnectorimapconnection) | **PATCH** /connectors/{id}/imap | Update an inbox connector IMAP connection
[**updateConnectorSmtpConnection**](ConnectorControllerApi#updateconnectorsmtpconnection) | **PATCH** /connectors/{id}/smtp | Update an inbox connector SMTP connection


# **createConnector**
> ConnectorDto createConnector(createConnectorOptions, inboxId)

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final createConnectorOptions = CreateConnectorOptions(); // CreateConnectorOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox ID to associate with the connector

try {
    final result = api_instance.createConnector(createConnectorOptions, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 
 **inboxId** | **String**| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorImapConnection**
> ConnectorImapConnectionDto createConnectorImapConnection(id, createConnectorImapConnectionOptions)

Create an inbox connector IMAP connection

Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(); // CreateConnectorImapConnectionOptions | 

try {
    final result = api_instance.createConnectorImapConnection(id, createConnectorImapConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnectorImapConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSmtpConnection**
> ConnectorSmtpConnectionDto createConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions)

Create an inbox connector SMTP connection

Allows sending via connector and email is routed to connected inbox and sent via SMTP

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(); // CreateConnectorSmtpConnectionOptions | 

try {
    final result = api_instance.createConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnectorSmtpConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorSyncSettings**
> ConnectorSyncSettingsDto createConnectorSyncSettings(id, createConnectorSyncSettingsOptions)

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorSyncSettingsOptions = CreateConnectorSyncSettingsOptions(); // CreateConnectorSyncSettingsOptions | 

try {
    final result = api_instance.createConnectorSyncSettings(id, createConnectorSyncSettingsOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnectorSyncSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorSyncSettingsOptions** | [**CreateConnectorSyncSettingsOptions**](CreateConnectorSyncSettingsOptions)|  | 

### Return type

[**ConnectorSyncSettingsDto**](ConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createConnectorWithOptions**
> ConnectorDto createConnectorWithOptions(createConnectorWithOptions, inboxId)

Create an inbox connector with options

Sync emails between external mailboxes and MailSlurp inboxes

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final createConnectorWithOptions = CreateConnectorWithOptions(); // CreateConnectorWithOptions | 
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional inbox ID to associate with the connector

try {
    final result = api_instance.createConnectorWithOptions(createConnectorWithOptions, inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnectorWithOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorWithOptions** | [**CreateConnectorWithOptions**](CreateConnectorWithOptions)|  | 
 **inboxId** | **String**| Optional inbox ID to associate with the connector | [optional] 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllConnector**
> deleteAllConnector()

Delete all inbox connectors

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();

try {
    api_instance.deleteAllConnector();
} catch (e) {
    print('Exception when calling ConnectorControllerApi->deleteAllConnector: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnector**
> deleteConnector(id)

Delete an inbox connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteConnector(id);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->deleteConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorImapConnection**
> deleteConnectorImapConnection(id)

Delete an inbox connector IMAP connection

Delete IMAP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteConnectorImapConnection(id);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->deleteConnectorImapConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSmtpConnection**
> deleteConnectorSmtpConnection(id)

Delete an inbox connector SMTP connection

Delete SMTP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteConnectorSmtpConnection(id);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->deleteConnectorSmtpConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteConnectorSyncSettings**
> deleteConnectorSyncSettings(id)

Create an inbox connector sync settings

Configure automatic pull or emails from external inboxes using an interval or schedule

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteConnectorSyncSettings(id);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->deleteConnectorSyncSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllConnectorEvents**
> PageConnectorEvents getAllConnectorEvents(id, page, size, sort, since, before, eventType)

Get all inbox connector events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional connector ID
final page = 56; // int | Optional page index in connector list pagination
final size = 56; // int | Optional page size in connector list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final eventType = eventType_example; // String | Filter by event type

try {
    final result = api_instance.getAllConnectorEvents(id, page, size, sort, since, before, eventType);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getAllConnectorEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Optional connector ID | [optional] 
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **eventType** | **String**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnector**
> ConnectorDto getConnector(id)

Get an inbox connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getConnector(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByEmailAddress**
> OptionalConnectorDto getConnectorByEmailAddress(emailAddress)

Get connector by email address

Find an inbox connector by email address

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final emailAddress = emailAddress_example; // String | Email address to search for connector by

try {
    final result = api_instance.getConnectorByEmailAddress(emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorByEmailAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**| Email address to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByInboxId**
> OptionalConnectorDto getConnectorByInboxId(inboxId)

Get connector by inbox ID

Find an inbox connector by inbox ID

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Inbox ID to search for connector by

try {
    final result = api_instance.getConnectorByInboxId(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorByInboxId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **String**| Inbox ID to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorByName**
> OptionalConnectorDto getConnectorByName(name)

Get connector by name

Find an inbox connector by name

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final name = name_example; // String | Name to search for connector by

try {
    final result = api_instance.getConnectorByName(name);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name to search for connector by | 

### Return type

[**OptionalConnectorDto**](OptionalConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvent**
> ConnectorEventDto getConnectorEvent(id)

Get an inbox connector event

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getConnectorEvent(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ConnectorEventDto**](ConnectorEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorEvents**
> PageConnectorEvents getConnectorEvents(id, page, size, sort, since, before, eventType)

Get an inbox connector events

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in connector list pagination
final size = 56; // int | Optional page size in connector list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final eventType = eventType_example; // String | Filter by event type

try {
    final result = api_instance.getConnectorEvents(id, page, size, sort, since, before, eventType);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **eventType** | **String**| Filter by event type | [optional] 

### Return type

[**PageConnectorEvents**](PageConnectorEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorImapConnection**
> OptionalConnectorImapConnectionDto getConnectorImapConnection(id)

Get an inbox connector IMAP connection

Get IMAP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getConnectorImapConnection(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorImapConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OptionalConnectorImapConnectionDto**](OptionalConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorProviderSettings**
> ConnectorProviderSettingsDto getConnectorProviderSettings()

Get SMTP and IMAP connection settings for common mail providers

Get common mail provider SMTP and IMAP connection settings

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();

try {
    final result = api_instance.getConnectorProviderSettings();
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorProviderSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectorProviderSettingsDto**](ConnectorProviderSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSmtpConnection**
> OptionalConnectorSmtpConnectionDto getConnectorSmtpConnection(id)

Get an inbox connector SMTP connection

Get SMTP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getConnectorSmtpConnection(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorSmtpConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OptionalConnectorSmtpConnectionDto**](OptionalConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncSettings**
> OptionalConnectorSyncSettingsDto getConnectorSyncSettings(id)

Get an inbox connector sync settings

Get sync settings for connection with external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getConnectorSyncSettings(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorSyncSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OptionalConnectorSyncSettingsDto**](OptionalConnectorSyncSettingsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectors**
> PageConnector getConnectors(page, size, sort, since, before)

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final page = 56; // int | Optional page index in connector list pagination
final size = 56; // int | Optional page size in connector list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp

try {
    final result = api_instance.getConnectors(page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnector**](PageConnector)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailFromConnector**
> SentEmailDto sendEmailFromConnector(id, sendEmailOptions, useFallback)

Send from an inbox connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 
final useFallback = true; // bool | 

try {
    final result = api_instance.sendEmailFromConnector(id, sendEmailOptions, useFallback);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->sendEmailFromConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **useFallback** | **bool**|  | [optional] 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncConnector**
> ConnectorSyncRequestResult syncConnector(id, since, folder, logging)

Sync an inbox connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | Date to request emails since
final folder = folder_example; // String | Which folder to sync emails with
final logging = true; // bool | Enable or disable logging for the sync operation

try {
    final result = api_instance.syncConnector(id, since, folder, logging);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->syncConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **since** | **DateTime**| Date to request emails since | [optional] 
 **folder** | **String**| Which folder to sync emails with | [optional] 
 **logging** | **bool**| Enable or disable logging for the sync operation | [optional] 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnection**
> ConnectorImapConnectionTestResult testConnectorImapConnection(id, createConnectorImapConnectionOptions)

Test an inbox connector IMAP connection

Test the IMAP connection for a connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(); // CreateConnectorImapConnectionOptions | 

try {
    final result = api_instance.testConnectorImapConnection(id, createConnectorImapConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->testConnectorImapConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | [optional] 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorImapConnectionOptions**
> ConnectorImapConnectionTestResult testConnectorImapConnectionOptions(createConnectorImapConnectionOptions)

Test an inbox connector IMAP connection options

Test the IMAP connection options for a connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(); // CreateConnectorImapConnectionOptions | 

try {
    final result = api_instance.testConnectorImapConnectionOptions(createConnectorImapConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->testConnectorImapConnectionOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionTestResult**](ConnectorImapConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnection**
> ConnectorSmtpConnectionTestResult testConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions)

Test an inbox connector SMTP connection

Test the SMTP connection for a connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(); // CreateConnectorSmtpConnectionOptions | 

try {
    final result = api_instance.testConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->testConnectorSmtpConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | [optional] 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testConnectorSmtpConnectionOptions**
> ConnectorSmtpConnectionTestResult testConnectorSmtpConnectionOptions(createConnectorSmtpConnectionOptions)

Test an inbox connector SMTP connection options

Test the SMTP connection options for a connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(); // CreateConnectorSmtpConnectionOptions | 

try {
    final result = api_instance.testConnectorSmtpConnectionOptions(createConnectorSmtpConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->testConnectorSmtpConnectionOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionTestResult**](ConnectorSmtpConnectionTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnector**
> ConnectorDto updateConnector(id, createConnectorOptions)

Update an inbox connector

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorOptions = CreateConnectorOptions(); // CreateConnectorOptions | 

try {
    final result = api_instance.updateConnector(id, createConnectorOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->updateConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorImapConnection**
> ConnectorImapConnectionDto updateConnectorImapConnection(id, createConnectorImapConnectionOptions)

Update an inbox connector IMAP connection

Update IMAP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorImapConnectionOptions = CreateConnectorImapConnectionOptions(); // CreateConnectorImapConnectionOptions | 

try {
    final result = api_instance.updateConnectorImapConnection(id, createConnectorImapConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->updateConnectorImapConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorImapConnectionOptions** | [**CreateConnectorImapConnectionOptions**](CreateConnectorImapConnectionOptions)|  | 

### Return type

[**ConnectorImapConnectionDto**](ConnectorImapConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnectorSmtpConnection**
> ConnectorSmtpConnectionDto updateConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions)

Update an inbox connector SMTP connection

Update SMTP connection for external inbox

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ConnectorControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createConnectorSmtpConnectionOptions = CreateConnectorSmtpConnectionOptions(); // CreateConnectorSmtpConnectionOptions | 

try {
    final result = api_instance.updateConnectorSmtpConnection(id, createConnectorSmtpConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->updateConnectorSmtpConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createConnectorSmtpConnectionOptions** | [**CreateConnectorSmtpConnectionOptions**](CreateConnectorSmtpConnectionOptions)|  | 

### Return type

[**ConnectorSmtpConnectionDto**](ConnectorSmtpConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

