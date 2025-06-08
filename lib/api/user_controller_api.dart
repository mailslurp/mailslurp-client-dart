//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserControllerApi {
  UserControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /user/automations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] filter:
  ///   Optional automation type filter
  Future<Response> getEntityAutomationsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? phoneId, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/automations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] filter:
  ///   Optional automation type filter
  Future<PageEntityAutomationItems?> getEntityAutomations({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? phoneId, String? filter, }) async {
    final response = await getEntityAutomationsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, phoneId: phoneId, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityAutomationItems',) as PageEntityAutomationItems;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /user/events' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] emailId:
  ///   Optional email ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] smsId:
  ///   Optional SMS ID
  ///
  /// * [String] attachmentId:
  ///   Optional attachment ID
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<Response> getEntityEventsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? emailId, String? phoneId, String? smsId, String? attachmentId, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (emailId != null) {
      queryParams.addAll(_queryParams('', 'emailId', emailId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
    }
    if (smsId != null) {
      queryParams.addAll(_queryParams('', 'smsId', smsId));
    }
    if (attachmentId != null) {
      queryParams.addAll(_queryParams('', 'attachmentId', attachmentId));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] emailId:
  ///   Optional email ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] smsId:
  ///   Optional SMS ID
  ///
  /// * [String] attachmentId:
  ///   Optional attachment ID
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<PageEntityEventItems?> getEntityEvents({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? emailId, String? phoneId, String? smsId, String? attachmentId, String? filter, }) async {
    final response = await getEntityEventsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, emailId: emailId, phoneId: phoneId, smsId: smsId, attachmentId: attachmentId, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityEventItems',) as PageEntityEventItems;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /user/favorites' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<Response> getEntityFavoritesWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/favorites';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<PageEntityFavouriteItems?> getEntityFavorites({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? filter, }) async {
    final response = await getEntityFavoritesWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityFavouriteItems',) as PageEntityFavouriteItems;
    
    }
    return null;
  }

  /// Utility function to extract properties from JSON objects in language where this is cumbersome.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] property (required):
  ///   JSON property name or dot separated path selector such as `a.b.c`
  ///
  /// * [Object] body (required):
  Future<Response> getJsonPropertyAsStringWithHttpInfo(String property, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/json/pluck';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'property', property));

    const contentTypes = <String>['application/json'];


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

  /// Utility function to extract properties from JSON objects in language where this is cumbersome.
  ///
  /// Parameters:
  ///
  /// * [String] property (required):
  ///   JSON property name or dot separated path selector such as `a.b.c`
  ///
  /// * [Object] body (required):
  Future<String?> getJsonPropertyAsString(String property, Object body,) async {
    final response = await getJsonPropertyAsStringWithHttpInfo(property, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get account information for your user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/info';

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

  /// Get account information for your user
  Future<UserInfoDto?> getUserInfo() async {
    final response = await getUserInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserInfoDto',) as UserInfoDto;
    
    }
    return null;
  }
}
