//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OAuthConnectionApi {
  OAuthConnectionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an OAuth connection
  ///
  /// Configure an inbox for OAuth sync with MailSlurp
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] redirectBase (required):
  ///
  /// * [String] oAuthConnectionType (required):
  ///
  /// * [String] emailAddress:
  Future<Response> createOAuthConnectionWithHttpInfo(String redirectBase, String oAuthConnectionType, { String? emailAddress, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth-connection';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'redirectBase', redirectBase));
      queryParams.addAll(_queryParams('', 'oAuthConnectionType', oAuthConnectionType));
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }

    const contentTypes = <String>[];


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

  /// Create an OAuth connection
  ///
  /// Configure an inbox for OAuth sync with MailSlurp
  ///
  /// Parameters:
  ///
  /// * [String] redirectBase (required):
  ///
  /// * [String] oAuthConnectionType (required):
  ///
  /// * [String] emailAddress:
  Future<CreateOAuthConnectionResult?> createOAuthConnection(String redirectBase, String oAuthConnectionType, { String? emailAddress, }) async {
    final response = await createOAuthConnectionWithHttpInfo(redirectBase, oAuthConnectionType,  emailAddress: emailAddress, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateOAuthConnectionResult',) as CreateOAuthConnectionResult;
    
    }
    return null;
  }

  /// Exchange authorization code for access token and create inbox
  ///
  /// Exchange an OAuth code for an access token and create an inbox connection in MailSlurp
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authorizationCode (required):
  ///
  /// * [String] redirectUri (required):
  Future<Response> exchangeAuthorizationTokenAndCreateOrUpdateInboxWithHttpInfo(String authorizationCode, String redirectUri,) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth-connection/oauth-exchange/google';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'authorizationCode', authorizationCode));
      queryParams.addAll(_queryParams('', 'redirectUri', redirectUri));

    const contentTypes = <String>[];


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

  /// Exchange authorization code for access token and create inbox
  ///
  /// Exchange an OAuth code for an access token and create an inbox connection in MailSlurp
  ///
  /// Parameters:
  ///
  /// * [String] authorizationCode (required):
  ///
  /// * [String] redirectUri (required):
  Future<CreateOAuthExchangeResult?> exchangeAuthorizationTokenAndCreateOrUpdateInbox(String authorizationCode, String redirectUri,) async {
    final response = await exchangeAuthorizationTokenAndCreateOrUpdateInboxWithHttpInfo(authorizationCode, redirectUri,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateOAuthExchangeResult',) as CreateOAuthExchangeResult;
    
    }
    return null;
  }
}
