# mailslurp.api.GroupControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactsToGroup**](GroupControllerApi.md#addContactsToGroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**createGroup**](GroupControllerApi.md#createGroup) | **POST** /groups | Create a group
[**deleteGroup**](GroupControllerApi.md#deleteGroup) | **DELETE** /groups/{groupId} | Delete group
[**getAllGroups**](GroupControllerApi.md#getAllGroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**getGroup**](GroupControllerApi.md#getGroup) | **GET** /groups/{groupId} | Get group
[**getGroupWithContacts**](GroupControllerApi.md#getGroupWithContacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**getGroupWithContactsPaginated**](GroupControllerApi.md#getGroupWithContactsPaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**getGroups**](GroupControllerApi.md#getGroups) | **GET** /groups | Get all groups
[**removeContactsFromGroup**](GroupControllerApi.md#removeContactsFromGroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
var updateGroupContactsOption = UpdateGroupContacts(); // UpdateGroupContacts | updateGroupContactsOption

try { 
    var result = api_instance.addContactsToGroup(groupId, updateGroupContactsOption);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->addContactsToGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var createGroupOptions = CreateGroupOptions(); // CreateGroupOptions | createGroupOptions

try { 
    var result = api_instance.createGroup(createGroupOptions);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->createGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createGroupOptions** | [**CreateGroupOptions**](CreateGroupOptions.md)| createGroupOptions | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    api_instance.deleteGroup(groupId);
} catch (e) {
    print("Exception when calling GroupControllerApi->deleteGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]

### Return type

void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var page = 56; // int | Optional page index in inbox list pagination
var size = 56; // int | Optional page size in inbox list pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getAllGroups(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getAllGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageGroupProjection**](PageGroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    var result = api_instance.getGroup(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId

try { 
    var result = api_instance.getGroupWithContacts(groupId);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroupWithContacts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
var page = 56; // int | Optional page index in group contact pagination
var size = 56; // int | Optional page size in group contact pagination
var sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    var result = api_instance.getGroupWithContactsPaginated(groupId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroupWithContactsPaginated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]
 **page** | **int**| Optional page index in group contact pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageContactProjection**](PageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();

try { 
    var result = api_instance.getGroups();
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->getGroups: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GroupProjection>**](GroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

var api_instance = GroupControllerApi();
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | groupId
var updateGroupContactsOption = UpdateGroupContacts(); // UpdateGroupContacts | updateGroupContactsOption

try { 
    var result = api_instance.removeContactsFromGroup(groupId, updateGroupContactsOption);
    print(result);
} catch (e) {
    print("Exception when calling GroupControllerApi->removeContactsFromGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | [**String**](.md)| groupId | [default to null]
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts.md)| updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

