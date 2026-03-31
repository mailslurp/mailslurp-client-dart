//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConsentControllerApi {
  ConsentControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /consent/opt-in/sending-consent' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address to check consent for
  Future<Response> checkSendingConsentForEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/consent/opt-in/sending-consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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
  /// * [String] emailAddress (required):
  ///   Email address to check consent for
  Future<OptInSendingConsentDto?> checkSendingConsentForEmailAddress(String emailAddress,) async {
    final response = await checkSendingConsentForEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptInSendingConsentDto',) as OptInSendingConsentDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /consent/opt-in' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getOptInIdentitiesWithHttpInfo({ int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/consent/opt-in';

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
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageOptInIdentityProjection?> getOptInIdentities({ int? page, int? size, String? sort, }) async {
    final response = await getOptInIdentitiesWithHttpInfo( page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageOptInIdentityProjection',) as PageOptInIdentityProjection;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /consent/opt-in' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address to revoke consent for
  Future<Response> revokeOptInConsentForEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/consent/opt-in';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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
  /// * [String] emailAddress (required):
  ///   Email address to revoke consent for
  Future<OptInSendingConsentDto?> revokeOptInConsentForEmailAddress(String emailAddress,) async {
    final response = await revokeOptInConsentForEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptInSendingConsentDto',) as OptInSendingConsentDto;
    
    }
    return null;
  }

  /// Send a verification code to a user once they have explicitly submitted their email address
  ///
  /// Send double-opt in consent for an email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OptInConsentOptions] optInConsentOptions (required):
  Future<Response> sendOptInConsentForEmailAddressWithHttpInfo(OptInConsentOptions optInConsentOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/consent/opt-in/send';

    // ignore: prefer_final_locals
    Object? postBody = optInConsentOptions;

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

  /// Send a verification code to a user once they have explicitly submitted their email address
  ///
  /// Send double-opt in consent for an email address
  ///
  /// Parameters:
  ///
  /// * [OptInConsentOptions] optInConsentOptions (required):
  Future<OptInConsentSendResult?> sendOptInConsentForEmailAddress(OptInConsentOptions optInConsentOptions,) async {
    final response = await sendOptInConsentForEmailAddressWithHttpInfo(optInConsentOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptInConsentSendResult',) as OptInConsentSendResult;
    
    }
    return null;
  }
}
