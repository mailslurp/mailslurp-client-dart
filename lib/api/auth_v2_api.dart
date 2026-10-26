//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthV2Api {
  AuthV2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Switch the account bound to an Auth v2 session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SwitchAccountOptions] switchAccountOptions (required):
  Future<Response> authV2AccountSwitchWithHttpInfo(SwitchAccountOptions switchAccountOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/account/switch';

    // ignore: prefer_final_locals
    Object? postBody = switchAccountOptions;

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

  /// Switch the account bound to an Auth v2 session
  ///
  /// Parameters:
  ///
  /// * [SwitchAccountOptions] switchAccountOptions (required):
  Future<AuthV2BootstrapDto?> authV2AccountSwitch(SwitchAccountOptions switchAccountOptions,) async {
    final response = await authV2AccountSwitchWithHttpInfo(switchAccountOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthV2BootstrapDto',) as AuthV2BootstrapDto;
    
    }
    return null;
  }

  /// Bootstrap an existing Auth v2 session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthV2BootstrapOptions] authV2BootstrapOptions:
  Future<Response> authV2BootstrapWithHttpInfo({ AuthV2BootstrapOptions? authV2BootstrapOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/bootstrap';

    // ignore: prefer_final_locals
    Object? postBody = authV2BootstrapOptions;

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

  /// Bootstrap an existing Auth v2 session
  ///
  /// Parameters:
  ///
  /// * [AuthV2BootstrapOptions] authV2BootstrapOptions:
  Future<AuthV2BootstrapDto?> authV2Bootstrap({ AuthV2BootstrapOptions? authV2BootstrapOptions, }) async {
    final response = await authV2BootstrapWithHttpInfo( authV2BootstrapOptions: authV2BootstrapOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthV2BootstrapDto',) as AuthV2BootstrapDto;
    
    }
    return null;
  }

  /// Switch the environment bound to an Auth v2 session
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] targetUserId (required):
  Future<Response> authV2EnvironmentSwitchWithHttpInfo(String targetUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/environment/{targetUserId}/switch'
      .replaceAll('{targetUserId}', targetUserId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Switch the environment bound to an Auth v2 session
  ///
  /// Parameters:
  ///
  /// * [String] targetUserId (required):
  Future<AuthV2BootstrapDto?> authV2EnvironmentSwitch(String targetUserId,) async {
    final response = await authV2EnvironmentSwitchWithHttpInfo(targetUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthV2BootstrapDto',) as AuthV2BootstrapDto;
    
    }
    return null;
  }

  /// Revoke an Auth v2 session
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> authV2LogoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/logout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Revoke an Auth v2 session
  Future<void> authV2Logout() async {
    final response = await authV2LogoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create an Auth v2 session using a password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthV2PasswordLoginOptions] authV2PasswordLoginOptions (required):
  Future<Response> authV2PasswordLoginWithHttpInfo(AuthV2PasswordLoginOptions authV2PasswordLoginOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/password/login';

    // ignore: prefer_final_locals
    Object? postBody = authV2PasswordLoginOptions;

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

  /// Create an Auth v2 session using a password
  ///
  /// Parameters:
  ///
  /// * [AuthV2PasswordLoginOptions] authV2PasswordLoginOptions (required):
  Future<AuthV2BootstrapDto?> authV2PasswordLogin(AuthV2PasswordLoginOptions authV2PasswordLoginOptions,) async {
    final response = await authV2PasswordLoginWithHttpInfo(authV2PasswordLoginOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthV2BootstrapDto',) as AuthV2BootstrapDto;
    
    }
    return null;
  }

  /// Redeem a staging provider handoff and continue to the app
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] providerKind (required):
  ///
  /// * [String] code:
  Future<Response> authV2ProviderCallbackWithHttpInfo(String providerKind, { String? code, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/{providerKind}'
      .replaceAll('{providerKind}', providerKind);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
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

  /// Redeem a staging provider handoff and continue to the app
  ///
  /// Parameters:
  ///
  /// * [String] providerKind (required):
  ///
  /// * [String] code:
  Future<void> authV2ProviderCallback(String providerKind, { String? code, }) async {
    final response = await authV2ProviderCallbackWithHttpInfo(providerKind,  code: code, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /auth/v2/callback/email' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] code:
  Future<Response> emailCallbackWithHttpInfo({ String? code, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
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
  /// * [String] code:
  Future<void> emailCallback({ String? code, }) async {
    final response = await emailCallbackWithHttpInfo( code: code, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /auth/v2/callback/email/complete' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] attempt:
  Future<Response> emailCallbackCompleteWithHttpInfo({ String? attempt, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/email/complete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (attempt != null) {
      formParams[r'attempt'] = parameterToString(attempt);
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
  /// * [String] attempt:
  Future<void> emailCallbackComplete({ String? attempt, }) async {
    final response = await emailCallbackCompleteWithHttpInfo( attempt: attempt, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /auth/v2/callback/email/continue' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] attempt:
  Future<Response> emailCallbackContinueWithHttpInfo({ String? attempt, }) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/email/continue';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (attempt != null) {
      queryParams.addAll(_queryParams('', 'attempt', attempt));
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
  /// * [String] attempt:
  Future<String?> emailCallbackContinue({ String? attempt, }) async {
    final response = await emailCallbackContinueWithHttpInfo( attempt: attempt, );
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

  /// Performs an HTTP 'GET /auth/v2/callback/email/continue.js' operation and returns the [Response].
  Future<Response> emailCallbackContinueScriptWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/email/continue.js';

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

  Future<String?> emailCallbackContinueScript() async {
    final response = await emailCallbackContinueScriptWithHttpInfo();
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

  /// Performs an HTTP 'HEAD /auth/v2/callback/email' operation and returns the [Response].
  Future<Response> emailCallbackHeadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/v2/callback/email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'HEAD',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> emailCallbackHead() async {
    final response = await emailCallbackHeadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
