//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiMcpOAuthControllerApi {
  ApiMcpOAuthControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /.well-known/oauth-authorization-server/mcp' operation and returns the [Response].
  Future<Response> authorizationServerMetadataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-authorization-server/mcp';

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

  Future<Map<String, Object>?> authorizationServerMetadata() async {
    final response = await authorizationServerMetadataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /.well-known/oauth-authorization-server' operation and returns the [Response].
  Future<Response> authorizationServerMetadata1WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-authorization-server';

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

  Future<Map<String, Object>?> authorizationServerMetadata1() async {
    final response = await authorizationServerMetadata1WithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /mcp/oauth/authorize' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] redirectUri (required):
  ///
  /// * [String] responseType (required):
  ///
  /// * [String] codeChallenge (required):
  ///
  /// * [String] codeChallengeMethod (required):
  ///
  /// * [String] resource (required):
  ///
  /// * [String] scope:
  ///
  /// * [String] state:
  Future<Response> authorizeWithHttpInfo(String clientId, String redirectUri, String responseType, String codeChallenge, String codeChallengeMethod, String resource, { String? scope, String? state, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mcp/oauth/authorize';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'client_id', clientId));
      queryParams.addAll(_queryParams('', 'redirect_uri', redirectUri));
      queryParams.addAll(_queryParams('', 'response_type', responseType));
    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
      queryParams.addAll(_queryParams('', 'code_challenge', codeChallenge));
      queryParams.addAll(_queryParams('', 'code_challenge_method', codeChallengeMethod));
      queryParams.addAll(_queryParams('', 'resource', resource));

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
  /// * [String] clientId (required):
  ///
  /// * [String] redirectUri (required):
  ///
  /// * [String] responseType (required):
  ///
  /// * [String] codeChallenge (required):
  ///
  /// * [String] codeChallengeMethod (required):
  ///
  /// * [String] resource (required):
  ///
  /// * [String] scope:
  ///
  /// * [String] state:
  Future<Object?> authorize(String clientId, String redirectUri, String responseType, String codeChallenge, String codeChallengeMethod, String resource, { String? scope, String? state, }) async {
    final response = await authorizeWithHttpInfo(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod, resource,  scope: scope, state: state, );
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

  /// Performs an HTTP 'GET /.well-known/oauth-protected-resource/mcp' operation and returns the [Response].
  Future<Response> protectedResourceMetadataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-protected-resource/mcp';

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

  Future<Map<String, Object>?> protectedResourceMetadata() async {
    final response = await protectedResourceMetadataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /.well-known/oauth-protected-resource' operation and returns the [Response].
  Future<Response> protectedResourceMetadata1WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-protected-resource';

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

  Future<Map<String, Object>?> protectedResourceMetadata1() async {
    final response = await protectedResourceMetadata1WithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'POST /mcp/oauth/register' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [McpOAuthClientRegistrationOptions] mcpOAuthClientRegistrationOptions (required):
  Future<Response> registerWithHttpInfo(McpOAuthClientRegistrationOptions mcpOAuthClientRegistrationOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mcp/oauth/register';

    // ignore: prefer_final_locals
    Object? postBody = mcpOAuthClientRegistrationOptions;

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

  /// Parameters:
  ///
  /// * [McpOAuthClientRegistrationOptions] mcpOAuthClientRegistrationOptions (required):
  Future<Object?> register(McpOAuthClientRegistrationOptions mcpOAuthClientRegistrationOptions,) async {
    final response = await registerWithHttpInfo(mcpOAuthClientRegistrationOptions,);
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

  /// Performs an HTTP 'POST /mcp/oauth/token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] resource (required):
  ///
  /// * [String] code:
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] codeVerifier:
  ///
  /// * [String] refreshToken:
  Future<Response> tokenWithHttpInfo(String grantType, String clientId, String resource, { String? code, String? redirectUri, String? codeVerifier, String? refreshToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mcp/oauth/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (resource != null) {
      formParams[r'resource'] = parameterToString(resource);
    }
    if (code != null) {
      formParams[r'code'] = parameterToString(code);
    }
    if (redirectUri != null) {
      formParams[r'redirect_uri'] = parameterToString(redirectUri);
    }
    if (codeVerifier != null) {
      formParams[r'code_verifier'] = parameterToString(codeVerifier);
    }
    if (refreshToken != null) {
      formParams[r'refresh_token'] = parameterToString(refreshToken);
    }

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
  /// * [String] grantType (required):
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] resource (required):
  ///
  /// * [String] code:
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] codeVerifier:
  ///
  /// * [String] refreshToken:
  Future<Object?> token(String grantType, String clientId, String resource, { String? code, String? redirectUri, String? codeVerifier, String? refreshToken, }) async {
    final response = await tokenWithHttpInfo(grantType, clientId, resource,  code: code, redirectUri: redirectUri, codeVerifier: codeVerifier, refreshToken: refreshToken, );
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
