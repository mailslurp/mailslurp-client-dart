# mailslurp.api.SCIMApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroup**](SCIMApi#creategroup) | **POST** /scim/v2/{slug}/Groups | 
[**createUser**](SCIMApi#createuser) | **POST** /scim/v2/{slug}/Users | 
[**deleteGroup**](SCIMApi#deletegroup) | **DELETE** /scim/v2/{slug}/Groups/{groupId} | 
[**deleteUser**](SCIMApi#deleteuser) | **DELETE** /scim/v2/{slug}/Users/{userId} | 
[**getGroup**](SCIMApi#getgroup) | **GET** /scim/v2/{slug}/Groups/{groupId} | 
[**getResourceType**](SCIMApi#getresourcetype) | **GET** /scim/v2/{slug}/ResourceTypes/{resourceType} | 
[**getResourceTypes**](SCIMApi#getresourcetypes) | **GET** /scim/v2/{slug}/ResourceTypes | 
[**getSchema**](SCIMApi#getschema) | **GET** /scim/v2/{slug}/Schemas/{schemaId} | 
[**getSchemas**](SCIMApi#getschemas) | **GET** /scim/v2/{slug}/Schemas | 
[**getServiceProviderConfig**](SCIMApi#getserviceproviderconfig) | **GET** /scim/v2/{slug}/ServiceProviderConfig | 
[**getUser**](SCIMApi#getuser) | **GET** /scim/v2/{slug}/Users/{userId} | 
[**listGroups**](SCIMApi#listgroups) | **GET** /scim/v2/{slug}/Groups | 
[**listUsers**](SCIMApi#listusers) | **GET** /scim/v2/{slug}/Users | 
[**patchGroup**](SCIMApi#patchgroup) | **PATCH** /scim/v2/{slug}/Groups/{groupId} | 
[**patchUser**](SCIMApi#patchuser) | **PATCH** /scim/v2/{slug}/Users/{userId} | 
[**replaceGroup**](SCIMApi#replacegroup) | **PUT** /scim/v2/{slug}/Groups/{groupId} | 
[**replaceUser**](SCIMApi#replaceuser) | **PUT** /scim/v2/{slug}/Users/{userId} | 


# **createGroup**
> Object createGroup(slug, scimGroupResource)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final scimGroupResource = ScimGroupResource(); // ScimGroupResource | 

try {
    final result = api_instance.createGroup(slug, scimGroupResource);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **scimGroupResource** | [**ScimGroupResource**](ScimGroupResource)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createUser**
> Object createUser(slug, scimUserResource)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final scimUserResource = ScimUserResource(); // ScimUserResource | 

try {
    final result = api_instance.createUser(slug, scimUserResource);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **scimUserResource** | [**ScimUserResource**](ScimUserResource)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteGroup**
> Object deleteGroup(slug, groupId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final groupId = groupId_example; // String | 

try {
    final result = api_instance.deleteGroup(slug, groupId);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **groupId** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteUser**
> Object deleteUser(slug, userId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final userId = userId_example; // String | 

try {
    final result = api_instance.deleteUser(slug, userId);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroup**
> Object getGroup(slug, groupId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final groupId = groupId_example; // String | 

try {
    final result = api_instance.getGroup(slug, groupId);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **groupId** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getResourceType**
> Object getResourceType(slug, resourceType)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final resourceType = resourceType_example; // String | 

try {
    final result = api_instance.getResourceType(slug, resourceType);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getResourceType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **resourceType** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getResourceTypes**
> Object getResourceTypes(slug)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 

try {
    final result = api_instance.getResourceTypes(slug);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getResourceTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSchema**
> Object getSchema(slug, schemaId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final schemaId = schemaId_example; // String | 

try {
    final result = api_instance.getSchema(slug, schemaId);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getSchema: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **schemaId** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSchemas**
> Object getSchemas(slug)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 

try {
    final result = api_instance.getSchemas(slug);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getSchemas: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getServiceProviderConfig**
> Object getServiceProviderConfig(slug)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 

try {
    final result = api_instance.getServiceProviderConfig(slug);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getServiceProviderConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUser**
> Object getUser(slug, userId)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final userId = userId_example; // String | 

try {
    final result = api_instance.getUser(slug, userId);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listGroups**
> Object listGroups(slug, filter, startIndex, count)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final filter = filter_example; // String | 
final startIndex = 56; // int | 
final count = 56; // int | 

try {
    final result = api_instance.listGroups(slug, filter, startIndex, count);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->listGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **filter** | **String**|  | [optional] 
 **startIndex** | **int**|  | [optional] 
 **count** | **int**|  | [optional] 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listUsers**
> Object listUsers(slug, filter, startIndex, count)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final filter = filter_example; // String | 
final startIndex = 56; // int | 
final count = 56; // int | 

try {
    final result = api_instance.listUsers(slug, filter, startIndex, count);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->listUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **filter** | **String**|  | [optional] 
 **startIndex** | **int**|  | [optional] 
 **count** | **int**|  | [optional] 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **patchGroup**
> Object patchGroup(slug, groupId, scimPatchRequest)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final groupId = groupId_example; // String | 
final scimPatchRequest = ScimPatchRequest(); // ScimPatchRequest | 

try {
    final result = api_instance.patchGroup(slug, groupId, scimPatchRequest);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->patchGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **groupId** | **String**|  | 
 **scimPatchRequest** | [**ScimPatchRequest**](ScimPatchRequest)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **patchUser**
> Object patchUser(slug, userId, scimPatchRequest)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final userId = userId_example; // String | 
final scimPatchRequest = ScimPatchRequest(); // ScimPatchRequest | 

try {
    final result = api_instance.patchUser(slug, userId, scimPatchRequest);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->patchUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **userId** | **String**|  | 
 **scimPatchRequest** | [**ScimPatchRequest**](ScimPatchRequest)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replaceGroup**
> Object replaceGroup(slug, groupId, scimGroupResource)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final groupId = groupId_example; // String | 
final scimGroupResource = ScimGroupResource(); // ScimGroupResource | 

try {
    final result = api_instance.replaceGroup(slug, groupId, scimGroupResource);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->replaceGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **groupId** | **String**|  | 
 **scimGroupResource** | [**ScimGroupResource**](ScimGroupResource)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replaceUser**
> Object replaceUser(slug, userId, scimUserResource)



### Example
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = SCIMApi();
final slug = slug_example; // String | 
final userId = userId_example; // String | 
final scimUserResource = ScimUserResource(); // ScimUserResource | 

try {
    final result = api_instance.replaceUser(slug, userId, scimUserResource);
    print(result);
} catch (e) {
    print('Exception when calling SCIMApi->replaceUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **userId** | **String**|  | 
 **scimUserResource** | [**ScimUserResource**](ScimUserResource)|  | 

### Return type

[**Object**](Object)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/scim+json, application/json
 - **Accept**: application/scim+json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

