//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SCIMApi {
  SCIMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /scim/v2/{slug}/Groups' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [ScimGroupResource] scimGroupResource (required):
  Future<Response> createGroupWithHttpInfo(String slug, ScimGroupResource scimGroupResource,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = scimGroupResource;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [ScimGroupResource] scimGroupResource (required):
  Future<Object?> createGroup(String slug, ScimGroupResource scimGroupResource,) async {
    final response = await createGroupWithHttpInfo(slug, scimGroupResource,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /scim/v2/{slug}/Users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [ScimUserResource] scimUserResource (required):
  Future<Response> createUserWithHttpInfo(String slug, ScimUserResource scimUserResource,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = scimUserResource;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [ScimUserResource] scimUserResource (required):
  Future<Object?> createUser(String slug, ScimUserResource scimUserResource,) async {
    final response = await createUserWithHttpInfo(slug, scimUserResource,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /scim/v2/{slug}/Groups/{groupId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  Future<Response> deleteGroupWithHttpInfo(String slug, String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups/{groupId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  Future<Object?> deleteGroup(String slug, String groupId,) async {
    final response = await deleteGroupWithHttpInfo(slug, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /scim/v2/{slug}/Users/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  Future<Response> deleteUserWithHttpInfo(String slug, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users/{userId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  Future<Object?> deleteUser(String slug, String userId,) async {
    final response = await deleteUserWithHttpInfo(slug, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Groups/{groupId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  Future<Response> getGroupWithHttpInfo(String slug, String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups/{groupId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  Future<Object?> getGroup(String slug, String groupId,) async {
    final response = await getGroupWithHttpInfo(slug, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/ResourceTypes/{resourceType}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] resourceType (required):
  Future<Response> getResourceTypeWithHttpInfo(String slug, String resourceType,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/ResourceTypes/{resourceType}'
      .replaceAll('{slug}', slug)
      .replaceAll('{resourceType}', resourceType);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] resourceType (required):
  Future<Object?> getResourceType(String slug, String resourceType,) async {
    final response = await getResourceTypeWithHttpInfo(slug, resourceType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/ResourceTypes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> getResourceTypesWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/ResourceTypes'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Object?> getResourceTypes(String slug,) async {
    final response = await getResourceTypesWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Schemas/{schemaId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] schemaId (required):
  Future<Response> getSchemaWithHttpInfo(String slug, String schemaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Schemas/{schemaId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{schemaId}', schemaId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] schemaId (required):
  Future<Object?> getSchema(String slug, String schemaId,) async {
    final response = await getSchemaWithHttpInfo(slug, schemaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Schemas' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> getSchemasWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Schemas'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Object?> getSchemas(String slug,) async {
    final response = await getSchemasWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/ServiceProviderConfig' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> getServiceProviderConfigWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/ServiceProviderConfig'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Object?> getServiceProviderConfig(String slug,) async {
    final response = await getServiceProviderConfigWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Users/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  Future<Response> getUserWithHttpInfo(String slug, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users/{userId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  Future<Object?> getUser(String slug, String userId,) async {
    final response = await getUserWithHttpInfo(slug, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Groups' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] filter:
  ///
  /// * [int] startIndex:
  ///
  /// * [int] count:
  Future<Response> listGroupsWithHttpInfo(String slug, { String? filter, int? startIndex, int? count, }) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (startIndex != null) {
      queryParams.addAll(_queryParams('', 'startIndex', startIndex));
    }
    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] filter:
  ///
  /// * [int] startIndex:
  ///
  /// * [int] count:
  Future<Object?> listGroups(String slug, { String? filter, int? startIndex, int? count, }) async {
    final response = await listGroupsWithHttpInfo(slug,  filter: filter, startIndex: startIndex, count: count, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /scim/v2/{slug}/Users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] filter:
  ///
  /// * [int] startIndex:
  ///
  /// * [int] count:
  Future<Response> listUsersWithHttpInfo(String slug, { String? filter, int? startIndex, int? count, }) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (startIndex != null) {
      queryParams.addAll(_queryParams('', 'startIndex', startIndex));
    }
    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] filter:
  ///
  /// * [int] startIndex:
  ///
  /// * [int] count:
  Future<Object?> listUsers(String slug, { String? filter, int? startIndex, int? count, }) async {
    final response = await listUsersWithHttpInfo(slug,  filter: filter, startIndex: startIndex, count: count, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /scim/v2/{slug}/Groups/{groupId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [ScimPatchRequest] scimPatchRequest (required):
  Future<Response> patchGroupWithHttpInfo(String slug, String groupId, ScimPatchRequest scimPatchRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups/{groupId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = scimPatchRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [ScimPatchRequest] scimPatchRequest (required):
  Future<Object?> patchGroup(String slug, String groupId, ScimPatchRequest scimPatchRequest,) async {
    final response = await patchGroupWithHttpInfo(slug, groupId, scimPatchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /scim/v2/{slug}/Users/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [ScimPatchRequest] scimPatchRequest (required):
  Future<Response> patchUserWithHttpInfo(String slug, String userId, ScimPatchRequest scimPatchRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users/{userId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = scimPatchRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [ScimPatchRequest] scimPatchRequest (required):
  Future<Object?> patchUser(String slug, String userId, ScimPatchRequest scimPatchRequest,) async {
    final response = await patchUserWithHttpInfo(slug, userId, scimPatchRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /scim/v2/{slug}/Groups/{groupId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [ScimGroupResource] scimGroupResource (required):
  Future<Response> replaceGroupWithHttpInfo(String slug, String groupId, ScimGroupResource scimGroupResource,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Groups/{groupId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = scimGroupResource;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [ScimGroupResource] scimGroupResource (required):
  Future<Object?> replaceGroup(String slug, String groupId, ScimGroupResource scimGroupResource,) async {
    final response = await replaceGroupWithHttpInfo(slug, groupId, scimGroupResource,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /scim/v2/{slug}/Users/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [ScimUserResource] scimUserResource (required):
  Future<Response> replaceUserWithHttpInfo(String slug, String userId, ScimUserResource scimUserResource,) async {
    // ignore: prefer_const_declarations
    final path = r'/scim/v2/{slug}/Users/{userId}'
      .replaceAll('{slug}', slug)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = scimUserResource;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/scim+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [ScimUserResource] scimUserResource (required):
  Future<Object?> replaceUser(String slug, String userId, ScimUserResource scimUserResource,) async {
    final response = await replaceUserWithHttpInfo(slug, userId, scimUserResource,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
