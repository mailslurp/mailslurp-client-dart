# mailslurp.api.DomainMonitorPostmasterControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#createdomainmonitorpostmasterconnection) | **POST** /domain-monitor/postmaster/connect | Create Postmaster OAuth connection URL
[**deleteDomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#deletedomainmonitorpostmasterconnection) | **DELETE** /domain-monitor/postmaster/connection | Disconnect Postmaster OAuth
[**exchangeDomainMonitorPostmasterCode**](DomainMonitorPostmasterControllerApi#exchangedomainmonitorpostmastercode) | **POST** /domain-monitor/postmaster/oauth-exchange | Exchange Postmaster OAuth authorization code
[**getDomainMonitorPostmasterConnection**](DomainMonitorPostmasterControllerApi#getdomainmonitorpostmasterconnection) | **GET** /domain-monitor/postmaster/connection | Get Postmaster connection status
[**getDomainMonitorPostmasterDomains**](DomainMonitorPostmasterControllerApi#getdomainmonitorpostmasterdomains) | **GET** /domain-monitor/postmaster/domains | List local Postmaster domain snapshots
[**getDomainMonitorPostmasterTrafficStats**](DomainMonitorPostmasterControllerApi#getdomainmonitorpostmastertrafficstats) | **GET** /domain-monitor/postmaster/domains/{domain}/traffic-stats | Get local Postmaster traffic stats
[**syncDomainMonitorPostmasterDomains**](DomainMonitorPostmasterControllerApi#syncdomainmonitorpostmasterdomains) | **POST** /domain-monitor/postmaster/domains/sync | Sync Postmaster domains
[**syncDomainMonitorPostmasterTrafficStats**](DomainMonitorPostmasterControllerApi#syncdomainmonitorpostmastertrafficstats) | **POST** /domain-monitor/postmaster/domains/{domain}/traffic-stats/sync | Sync Postmaster traffic stats


# **createDomainMonitorPostmasterConnection**
> CreatePostmasterConnectionResult createDomainMonitorPostmasterConnection(createPostmasterConnectionOptions)

Create Postmaster OAuth connection URL

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();
final createPostmasterConnectionOptions = CreatePostmasterConnectionOptions(); // CreatePostmasterConnectionOptions | 

try {
    final result = api_instance.createDomainMonitorPostmasterConnection(createPostmasterConnectionOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->createDomainMonitorPostmasterConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPostmasterConnectionOptions** | [**CreatePostmasterConnectionOptions**](CreatePostmasterConnectionOptions)|  | 

### Return type

[**CreatePostmasterConnectionResult**](CreatePostmasterConnectionResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitorPostmasterConnection**
> deleteDomainMonitorPostmasterConnection()

Disconnect Postmaster OAuth

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();

try {
    api_instance.deleteDomainMonitorPostmasterConnection();
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->deleteDomainMonitorPostmasterConnection: $e\n');
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

# **exchangeDomainMonitorPostmasterCode**
> PostmasterConnectionDto exchangeDomainMonitorPostmasterCode(exchangePostmasterCodeOptions)

Exchange Postmaster OAuth authorization code

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();
final exchangePostmasterCodeOptions = ExchangePostmasterCodeOptions(); // ExchangePostmasterCodeOptions | 

try {
    final result = api_instance.exchangeDomainMonitorPostmasterCode(exchangePostmasterCodeOptions);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->exchangeDomainMonitorPostmasterCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangePostmasterCodeOptions** | [**ExchangePostmasterCodeOptions**](ExchangePostmasterCodeOptions)|  | 

### Return type

[**PostmasterConnectionDto**](PostmasterConnectionDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorPostmasterConnection**
> PostmasterConnectionStatusDto getDomainMonitorPostmasterConnection()

Get Postmaster connection status

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();

try {
    final result = api_instance.getDomainMonitorPostmasterConnection();
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->getDomainMonitorPostmasterConnection: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PostmasterConnectionStatusDto**](PostmasterConnectionStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorPostmasterDomains**
> List<PostmasterDomainDto> getDomainMonitorPostmasterDomains()

List local Postmaster domain snapshots

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();

try {
    final result = api_instance.getDomainMonitorPostmasterDomains();
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->getDomainMonitorPostmasterDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PostmasterDomainDto>**](PostmasterDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorPostmasterTrafficStats**
> PostmasterTrafficStatsListDto getDomainMonitorPostmasterTrafficStats(domain, startDate, endDate)

Get local Postmaster traffic stats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();
final domain = domain_example; // String | 
final startDate = 2013-10-20; // DateTime | 
final endDate = 2013-10-20; // DateTime | 

try {
    final result = api_instance.getDomainMonitorPostmasterTrafficStats(domain, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->getDomainMonitorPostmasterTrafficStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**PostmasterTrafficStatsListDto**](PostmasterTrafficStatsListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncDomainMonitorPostmasterDomains**
> List<PostmasterDomainDto> syncDomainMonitorPostmasterDomains()

Sync Postmaster domains

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();

try {
    final result = api_instance.syncDomainMonitorPostmasterDomains();
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->syncDomainMonitorPostmasterDomains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PostmasterDomainDto>**](PostmasterDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncDomainMonitorPostmasterTrafficStats**
> PostmasterTrafficStatsListDto syncDomainMonitorPostmasterTrafficStats(domain, startDate, endDate)

Sync Postmaster traffic stats

### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = DomainMonitorPostmasterControllerApi();
final domain = domain_example; // String | 
final startDate = 2013-10-20; // DateTime | 
final endDate = 2013-10-20; // DateTime | 

try {
    final result = api_instance.syncDomainMonitorPostmasterTrafficStats(domain, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DomainMonitorPostmasterControllerApi->syncDomainMonitorPostmasterTrafficStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**PostmasterTrafficStatsListDto**](PostmasterTrafficStatsListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

