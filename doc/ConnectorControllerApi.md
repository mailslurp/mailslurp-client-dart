# mailslurp.api.ConnectorControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](ConnectorControllerApi#createconnector) | **POST** /connectors | Create an inbox connector
[**deleteConnector**](ConnectorControllerApi#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**getAllConnectorSyncEvents**](ConnectorControllerApi#getallconnectorsyncevents) | **GET** /connectors/events | Get all inbox connector sync events
[**getConnector**](ConnectorControllerApi#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorSyncEvent**](ConnectorControllerApi#getconnectorsyncevent) | **GET** /connectors/events/{id} | Get an inbox connector sync event
[**getConnectorSyncEvents**](ConnectorControllerApi#getconnectorsyncevents) | **GET** /connectors/{id}/events | Get an inbox connector sync events
[**getConnectors**](ConnectorControllerApi#getconnectors) | **GET** /connectors | Get inbox connectors
[**syncConnector**](ConnectorControllerApi#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**updateConnector**](ConnectorControllerApi#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector


# **createConnector**
> ConnectorDto createConnector(createConnectorOptions)

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

try { 
    final result = api_instance.createConnector(createConnectorOptions);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->createConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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
 **id** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllConnectorSyncEvents**
> PageConnectorSyncEvents getAllConnectorSyncEvents(page, size, sort, since, before)

Get all inbox connector sync events

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
    final result = api_instance.getAllConnectorSyncEvents(page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getAllConnectorSyncEvents: $e\n');
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

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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
 **id** | [**String**]()|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncEvent**
> ConnectorSyncEventDto getConnectorSyncEvent(id)

Get an inbox connector sync event

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
    final result = api_instance.getConnectorSyncEvent(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorSyncEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**ConnectorSyncEventDto**](ConnectorSyncEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncEvents**
> PageConnectorSyncEvents getConnectorSyncEvents(id, page, size, sort, since, before)

Get an inbox connector sync events

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

try { 
    final result = api_instance.getConnectorSyncEvents(id, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->getConnectorSyncEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 
 **page** | **int**| Optional page index in connector list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in connector list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageConnectorSyncEvents**](PageConnectorSyncEvents)

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

# **syncConnector**
> ConnectorSyncRequestResult syncConnector(id)

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

try { 
    final result = api_instance.syncConnector(id);
    print(result);
} catch (e) {
    print('Exception when calling ConnectorControllerApi->syncConnector: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**ConnectorSyncRequestResult**](ConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
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
 **id** | [**String**]()|  | 
 **createConnectorOptions** | [**CreateConnectorOptions**](CreateConnectorOptions)|  | 

### Return type

[**ConnectorDto**](ConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

