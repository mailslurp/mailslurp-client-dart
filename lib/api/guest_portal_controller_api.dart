//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GuestPortalControllerApi {
  GuestPortalControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a portal page for your customers or clients to log into email accounts and view emails.
  ///
  /// Create a guest login page for customers or clients to access assigned email addresses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePortalOptions] createPortalOptions (required):
  Future<Response> createGuestPortalWithHttpInfo(CreatePortalOptions createPortalOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal';

    // ignore: prefer_final_locals
    Object? postBody = createPortalOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create a portal page for your customers or clients to log into email accounts and view emails.
  ///
  /// Create a guest login page for customers or clients to access assigned email addresses
  ///
  /// Parameters:
  ///
  /// * [CreatePortalOptions] createPortalOptions (required):
  Future<GuestPortalDto?> createGuestPortal(CreatePortalOptions createPortalOptions,) async {
    final response = await createGuestPortalWithHttpInfo(createPortalOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuestPortalDto',) as GuestPortalDto;
    
    }
    return null;
  }

  /// Create a portal guest user
  ///
  /// Add customer to portal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [CreatePortalUserOptions] createPortalUserOptions (required):
  Future<Response> createGuestPortalUserWithHttpInfo(String portalId, CreatePortalUserOptions createPortalUserOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/{portalId}/user'
      .replaceAll('{portalId}', portalId);

    // ignore: prefer_final_locals
    Object? postBody = createPortalUserOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create a portal guest user
  ///
  /// Add customer to portal
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [CreatePortalUserOptions] createPortalUserOptions (required):
  Future<GuestPortalUserCreateDto?> createGuestPortalUser(String portalId, CreatePortalUserOptions createPortalUserOptions,) async {
    final response = await createGuestPortalUserWithHttpInfo(portalId, createPortalUserOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuestPortalUserCreateDto',) as GuestPortalUserCreateDto;
    
    }
    return null;
  }

  /// Get all guest users for portal
  ///
  /// Get all customers for a portal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] portalId:
  ///   Optional portal ID
  ///
  /// * [String] search:
  ///   Optional search term
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllGuestPortalUsersWithHttpInfo({ String? portalId, String? search, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (portalId != null) {
      queryParams.addAll(_queryParams('', 'portalId', portalId));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
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

  /// Get all guest users for portal
  ///
  /// Get all customers for a portal
  ///
  /// Parameters:
  ///
  /// * [String] portalId:
  ///   Optional portal ID
  ///
  /// * [String] search:
  ///   Optional search term
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageGuestPortalUsers?> getAllGuestPortalUsers({ String? portalId, String? search, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAllGuestPortalUsersWithHttpInfo( portalId: portalId, search: search, page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageGuestPortalUsers',) as PageGuestPortalUsers;
    
    }
    return null;
  }

  /// Get a client email portal
  ///
  /// Fetch a customer guest portal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  Future<Response> getGuestPortalWithHttpInfo(String portalId,) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/{portalId}'
      .replaceAll('{portalId}', portalId);

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

  /// Get a client email portal
  ///
  /// Fetch a customer guest portal
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  Future<GuestPortalDto?> getGuestPortal(String portalId,) async {
    final response = await getGuestPortalWithHttpInfo(portalId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuestPortalDto',) as GuestPortalDto;
    
    }
    return null;
  }

  /// Get guest user for portal
  ///
  /// Get customer for portal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [String] guestId (required):
  Future<Response> getGuestPortalUserWithHttpInfo(String portalId, String guestId,) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/{portalId}/user/{guestId}'
      .replaceAll('{portalId}', portalId)
      .replaceAll('{guestId}', guestId);

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

  /// Get guest user for portal
  ///
  /// Get customer for portal
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [String] guestId (required):
  Future<GuestPortalUserDto?> getGuestPortalUser(String portalId, String guestId,) async {
    final response = await getGuestPortalUserWithHttpInfo(portalId, guestId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuestPortalUserDto',) as GuestPortalUserDto;
    
    }
    return null;
  }

  /// Get guest user
  ///
  /// Get customer by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] guestId (required):
  Future<Response> getGuestPortalUserByIdWithHttpInfo(String guestId,) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/user/{guestId}'
      .replaceAll('{guestId}', guestId);

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

  /// Get guest user
  ///
  /// Get customer by ID
  ///
  /// Parameters:
  ///
  /// * [String] guestId (required):
  Future<GuestPortalUserDto?> getGuestPortalUserById(String guestId,) async {
    final response = await getGuestPortalUserByIdWithHttpInfo(guestId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuestPortalUserDto',) as GuestPortalUserDto;
    
    }
    return null;
  }

  /// Get all guest users for portal
  ///
  /// Get customers for a portal
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [String] search:
  ///   Optional search term
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getGuestPortalUsersWithHttpInfo(String portalId, { String? search, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal/{portalId}/user'
      .replaceAll('{portalId}', portalId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
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

  /// Get all guest users for portal
  ///
  /// Get customers for a portal
  ///
  /// Parameters:
  ///
  /// * [String] portalId (required):
  ///
  /// * [String] search:
  ///   Optional search term
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageGuestPortalUsers?> getGuestPortalUsers(String portalId, { String? search, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getGuestPortalUsersWithHttpInfo(portalId,  search: search, page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageGuestPortalUsers',) as PageGuestPortalUsers;
    
    }
    return null;
  }

  /// Get guest portals
  ///
  /// Get portals
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGuestPortalsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/guest-portal';

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

  /// Get guest portals
  ///
  /// Get portals
  Future<List<GuestPortalDto>?> getGuestPortals() async {
    final response = await getGuestPortalsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GuestPortalDto>') as List)
        .cast<GuestPortalDto>()
        .toList();

    }
    return null;
  }
}
