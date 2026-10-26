# mailslurp.api.ApiSendingConnectionControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSendingConnection**](ApiSendingConnectionControllerApi#createsendingconnection) | **POST** /sending-connections | Create a sending connection
[**deleteDeliverySenderSeats**](ApiSendingConnectionControllerApi#deletedeliverysenderseats) | **DELETE** /sending-connections/sender-seats | Cancel purchased Delivery Sender seats
[**deleteSendingConnection**](ApiSendingConnectionControllerApi#deletesendingconnection) | **DELETE** /sending-connections/{connectionId} | Disconnect a sending connection
[**disableSendingConnection**](ApiSendingConnectionControllerApi#disablesendingconnection) | **DELETE** /sending-connections/{connectionId}/enable | Disable Delivery Sender capacity
[**enableSendingConnection**](ApiSendingConnectionControllerApi#enablesendingconnection) | **POST** /sending-connections/{connectionId}/enable | Enable a verified Delivery Sender
[**getDeliverySenderCapacity**](ApiSendingConnectionControllerApi#getdeliverysendercapacity) | **GET** /sending-connections/capacity | Get shared Delivery Sender capacity
[**getSendingConnection**](ApiSendingConnectionControllerApi#getsendingconnection) | **GET** /sending-connections/{connectionId} | Get a sending connection
[**getSendingConnectionProviders**](ApiSendingConnectionControllerApi#getsendingconnectionproviders) | **GET** /sending-connections/providers | List sending connection providers
[**getSendingConnections**](ApiSendingConnectionControllerApi#getsendingconnections) | **GET** /sending-connections | List sending connections
[**probeSendingConnectionDelivery**](ApiSendingConnectionControllerApi#probesendingconnectiondelivery) | **POST** /sending-connections/{connectionId}/delivery-probe | Send an unbilled delivery test to a temporary MailSlurp inbox
[**rotateSendingConnectionCredentials**](ApiSendingConnectionControllerApi#rotatesendingconnectioncredentials) | **POST** /sending-connections/{connectionId}/credentials | Rotate sending connection credentials
[**updateDeliverySenderSeats**](ApiSendingConnectionControllerApi#updatedeliverysenderseats) | **PUT** /sending-connections/sender-seats | Update purchased Delivery Sender seats
[**updateSendingConnection**](ApiSendingConnectionControllerApi#updatesendingconnection) | **PATCH** /sending-connections/{connectionId} | Update a sending connection
[**verifySendingConnection**](ApiSendingConnectionControllerApi#verifysendingconnection) | **POST** /sending-connections/{connectionId}/verify | Verify a sending connection


# **createSendingConnection**
> SendingConnectionDto createSendingConnection(createSendingConnectionOptions)

Create a sending connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final createSendingConnectionOptions = CreateSendingConnectionOptions(); // CreateSendingConnectionOptions | 

try {
    final result = api_instance.createSendingConnection(createSendingConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->createSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSendingConnectionOptions** | [**CreateSendingConnectionOptions**](CreateSendingConnectionOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDeliverySenderSeats**
> DeliverySenderCapacityDto deleteDeliverySenderSeats()

Cancel purchased Delivery Sender seats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();

try {
    final result = api_instance.deleteDeliverySenderSeats();
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->deleteDeliverySenderSeats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSendingConnection**
> deleteSendingConnection(connectionId)

Disconnect a sending connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.deleteSendingConnection(connectionId);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->deleteSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **disableSendingConnection**
> SendingConnectionDto disableSendingConnection(connectionId)

Disable Delivery Sender capacity

Releases this connection's shared sender allocation while retaining its verified credentials.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.disableSendingConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->disableSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **enableSendingConnection**
> SendingConnectionDto enableSendingConnection(connectionId)

Enable a verified Delivery Sender

Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.enableSendingConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->enableSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverySenderCapacity**
> DeliverySenderCapacityDto getDeliverySenderCapacity()

Get shared Delivery Sender capacity

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();

try {
    final result = api_instance.getDeliverySenderCapacity();
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->getDeliverySenderCapacity: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSendingConnection**
> SendingConnectionDto getSendingConnection(connectionId)

Get a sending connection

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.getSendingConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->getSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSendingConnectionProviders**
> List<SendingConnectionProviderDto> getSendingConnectionProviders()

List sending connection providers

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();

try {
    final result = api_instance.getSendingConnectionProviders();
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->getSendingConnectionProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SendingConnectionProviderDto>**](SendingConnectionProviderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSendingConnections**
> List<SendingConnectionDto> getSendingConnections()

List sending connections

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();

try {
    final result = api_instance.getSendingConnections();
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->getSendingConnections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SendingConnectionDto>**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **probeSendingConnectionDelivery**
> SendingConnectionDeliveryProbeDto probeSendingConnectionDelivery(connectionId)

Send an unbilled delivery test to a temporary MailSlurp inbox

Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.probeSendingConnectionDelivery(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->probeSendingConnectionDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**SendingConnectionDeliveryProbeDto**](SendingConnectionDeliveryProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **rotateSendingConnectionCredentials**
> SendingConnectionDto rotateSendingConnectionCredentials(connectionId, rotateSendingConnectionCredentialsOptions)

Rotate sending connection credentials

Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final rotateSendingConnectionCredentialsOptions = RotateSendingConnectionCredentialsOptions(); // RotateSendingConnectionCredentialsOptions | 

try {
    final result = api_instance.rotateSendingConnectionCredentials(connectionId, rotateSendingConnectionCredentialsOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->rotateSendingConnectionCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 
 **rotateSendingConnectionCredentialsOptions** | [**RotateSendingConnectionCredentialsOptions**](RotateSendingConnectionCredentialsOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDeliverySenderSeats**
> DeliverySenderCapacityDto updateDeliverySenderSeats(updateDeliverySenderSeatsOptions)

Update purchased Delivery Sender seats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final updateDeliverySenderSeatsOptions = UpdateDeliverySenderSeatsOptions(); // UpdateDeliverySenderSeatsOptions | 

try {
    final result = api_instance.updateDeliverySenderSeats(updateDeliverySenderSeatsOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->updateDeliverySenderSeats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateDeliverySenderSeatsOptions** | [**UpdateDeliverySenderSeatsOptions**](UpdateDeliverySenderSeatsOptions)|  | 

### Return type

[**DeliverySenderCapacityDto**](DeliverySenderCapacityDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateSendingConnection**
> SendingConnectionDto updateSendingConnection(connectionId, updateSendingConnectionOptions)

Update a sending connection

Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateSendingConnectionOptions = UpdateSendingConnectionOptions(); // UpdateSendingConnectionOptions | 

try {
    final result = api_instance.updateSendingConnection(connectionId, updateSendingConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->updateSendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 
 **updateSendingConnectionOptions** | [**UpdateSendingConnectionOptions**](UpdateSendingConnectionOptions)|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifySendingConnection**
> SendingConnectionDto verifySendingConnection(connectionId)

Verify a sending connection

Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = ApiSendingConnectionControllerApi();
final connectionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.verifySendingConnection(connectionId);
    print(result);
} catch (e) {
    print('Exception when calling ApiSendingConnectionControllerApi->verifySendingConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **String**|  | 

### Return type

[**SendingConnectionDto**](SendingConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

