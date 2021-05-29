# mailslurp.api.GroupControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactsToGroup**](GroupControllerApi#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**createGroup**](GroupControllerApi#creategroup) | **POST** /groups | Create a group
[**deleteGroup**](GroupControllerApi#deletegroup) | **DELETE** /groups/{groupId} | Delete group
[**getAllGroups**](GroupControllerApi#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**getGroup**](GroupControllerApi#getgroup) | **GET** /groups/{groupId} | Get group
[**getGroupWithContacts**](GroupControllerApi#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**getGroupWithContactsPaginated**](GroupControllerApi#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**getGroups**](GroupControllerApi#getgroups) | **GET** /groups | Get all groups
[**removeContactsFromGroup**](GroupControllerApi#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


# **addContactsToGroup**
> GroupContactsDto addContactsToGroup(groupId, updateGroupContactsOption)

Add contacts to a group

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
final updateGroupContactsOption = UpdateGroupContacts(); // UpdateGroupContacts | updateGroupContactsOption

try { 
    final result = api_instance.addContactsToGroup(groupId, updateGroupContactsOption);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->addContactsToGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGroup**
> GroupDto createGroup(createGroupOptions)

Create a group

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final createGroupOptions = CreateGroupOptions(); // CreateGroupOptions | createGroupOptions

try { 
    final result = api_instance.createGroup(createGroupOptions);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->createGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createGroupOptions** | [**CreateGroupOptions**](CreateGroupOptions)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteGroup**
> deleteGroup(groupId)

Delete group

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    api_instance.deleteGroup(groupId);
} catch (e) {
    print('Exception when calling GroupControllerApi->deleteGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGroups**
> PageGroupProjection getAllGroups(page, size, sort)

Get all Contact Groups in paginated format

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final page = 56; // int | Optional page index in inbox list pagination
final size = 56; // int | Optional page size in inbox list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllGroups(page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->getAllGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageGroupProjection**](PageGroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroup**
> GroupDto getGroup(groupId)

Get group

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    final result = api_instance.getGroup(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->getGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContacts**
> GroupContactsDto getGroupWithContacts(groupId)

Get group and contacts belonging to it

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    final result = api_instance.getGroupWithContacts(groupId);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->getGroupWithContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContactsPaginated**
> PageContactProjection getGroupWithContactsPaginated(groupId, page, size, sort)

Get group and paginated contacts belonging to it

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
final page = 56; // int | Optional page index in group contact pagination
final size = 56; // int | Optional page size in group contact pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getGroupWithContactsPaginated(groupId, page, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->getGroupWithContactsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 
 **page** | **int**| Optional page index in group contact pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroups**
> List<GroupProjection> getGroups()

Get all groups

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();

try { 
    final result = api_instance.getGroups();
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->getGroups: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GroupProjection>**](GroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removeContactsFromGroup**
> GroupContactsDto removeContactsFromGroup(groupId, updateGroupContactsOption)

Remove contacts from a group

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = GroupControllerApi();
final groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
final updateGroupContactsOption = UpdateGroupContacts(); // UpdateGroupContacts | updateGroupContactsOption

try { 
    final result = api_instance.removeContactsFromGroup(groupId, updateGroupContactsOption);
    print(result);
} catch (e) {
    print('Exception when calling GroupControllerApi->removeContactsFromGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**]()| groupId | 
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

