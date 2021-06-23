//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupControllerApi {
  GroupControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add contacts to a group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [UpdateGroupContacts] updateGroupContactsOption (required):
  ///   updateGroupContactsOption
  Future<Response> addContactsToGroupWithHttpInfo(String groupId, UpdateGroupContacts updateGroupContactsOption) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }
    if (updateGroupContactsOption == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: updateGroupContactsOption');
    }

    final path = r'/groups/{groupId}/contacts'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody = updateGroupContactsOption;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Add contacts to a group
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [UpdateGroupContacts] updateGroupContactsOption (required):
  ///   updateGroupContactsOption
  Future<GroupContactsDto> addContactsToGroup(String groupId, UpdateGroupContacts updateGroupContactsOption) async {
    final response = await addContactsToGroupWithHttpInfo(groupId, updateGroupContactsOption);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupContactsDto',) as GroupContactsDto;
        }
    return Future<GroupContactsDto>.value(null);
  }

  /// Create a group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateGroupOptions] createGroupOptions (required):
  ///   createGroupOptions
  Future<Response> createGroupWithHttpInfo(CreateGroupOptions createGroupOptions) async {
    // Verify required params are set.
    if (createGroupOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createGroupOptions');
    }

    final path = r'/groups';

    Object postBody = createGroupOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create a group
  ///
  /// Parameters:
  ///
  /// * [CreateGroupOptions] createGroupOptions (required):
  ///   createGroupOptions
  Future<GroupDto> createGroup(CreateGroupOptions createGroupOptions) async {
    final response = await createGroupWithHttpInfo(createGroupOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
        }
    return Future<GroupDto>.value(null);
  }

  /// Delete group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<Response> deleteGroupWithHttpInfo(String groupId) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }

    final path = r'/groups/{groupId}'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete group
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<void> deleteGroup(String groupId) async {
    final response = await deleteGroupWithHttpInfo(groupId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all Contact Groups in paginated format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllGroupsWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/groups/paginated';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all Contact Groups in paginated format
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageGroupProjection> getAllGroups({ int page, int size, String sort }) async {
    final response = await getAllGroupsWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageGroupProjection',) as PageGroupProjection;
        }
    return Future<PageGroupProjection>.value(null);
  }

  /// Get group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<Response> getGroupWithHttpInfo(String groupId) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }

    final path = r'/groups/{groupId}'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get group
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<GroupDto> getGroup(String groupId) async {
    final response = await getGroupWithHttpInfo(groupId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
        }
    return Future<GroupDto>.value(null);
  }

  /// Get group and contacts belonging to it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<Response> getGroupWithContactsWithHttpInfo(String groupId) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }

    final path = r'/groups/{groupId}/contacts'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get group and contacts belonging to it
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  Future<GroupContactsDto> getGroupWithContacts(String groupId) async {
    final response = await getGroupWithContactsWithHttpInfo(groupId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupContactsDto',) as GroupContactsDto;
        }
    return Future<GroupContactsDto>.value(null);
  }

  /// Get group and paginated contacts belonging to it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [int] page:
  ///   Optional page index in group contact pagination
  ///
  /// * [int] size:
  ///   Optional page size in group contact pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getGroupWithContactsPaginatedWithHttpInfo(String groupId, { int page, int size, String sort }) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }

    final path = r'/groups/{groupId}/contacts-paginated'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get group and paginated contacts belonging to it
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [int] page:
  ///   Optional page index in group contact pagination
  ///
  /// * [int] size:
  ///   Optional page size in group contact pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageContactProjection> getGroupWithContactsPaginated(String groupId, { int page, int size, String sort }) async {
    final response = await getGroupWithContactsPaginatedWithHttpInfo(groupId,  page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageContactProjection',) as PageContactProjection;
        }
    return Future<PageContactProjection>.value(null);
  }

  /// Get all groups
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGroupsWithHttpInfo() async {
    final path = r'/groups';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all groups
  Future<List<GroupProjection>> getGroups() async {
    final response = await getGroupsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<GroupProjection>') as List)
        .cast<GroupProjection>()
        .toList(growable: false);
    }
    return Future<List<GroupProjection>>.value(null);
  }

  /// Remove contacts from a group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [UpdateGroupContacts] updateGroupContactsOption (required):
  ///   updateGroupContactsOption
  Future<Response> removeContactsFromGroupWithHttpInfo(String groupId, UpdateGroupContacts updateGroupContactsOption) async {
    // Verify required params are set.
    if (groupId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: groupId');
    }
    if (updateGroupContactsOption == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: updateGroupContactsOption');
    }

    final path = r'/groups/{groupId}/contacts'
      .replaceAll('{' + 'groupId' + '}', groupId.toString());

    Object postBody = updateGroupContactsOption;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove contacts from a group
  ///
  /// Parameters:
  ///
  /// * [String] groupId (required):
  ///   groupId
  ///
  /// * [UpdateGroupContacts] updateGroupContactsOption (required):
  ///   updateGroupContactsOption
  Future<GroupContactsDto> removeContactsFromGroup(String groupId, UpdateGroupContacts updateGroupContactsOption) async {
    final response = await removeContactsFromGroupWithHttpInfo(groupId, updateGroupContactsOption);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupContactsDto',) as GroupContactsDto;
        }
    return Future<GroupContactsDto>.value(null);
  }
}
