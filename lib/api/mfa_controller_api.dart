//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MFAControllerApi {
  MFAControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a TOTP device from custom options
  ///
  /// Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<Response> createTotpDeviceForCustomWithHttpInfo(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mfa/totp/device/custom';

    // ignore: prefer_final_locals
    Object? postBody = createTotpDeviceOtpAuthUrlOptions;

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

  /// Create a TOTP device from custom options
  ///
  /// Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<TotpDeviceDto?> createTotpDeviceForCustom(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    final response = await createTotpDeviceForCustomWithHttpInfo(createTotpDeviceOtpAuthUrlOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Create a TOTP device from an OTP Auth URL
  ///
  /// Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<Response> createTotpDeviceForOtpAuthUrlWithHttpInfo(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mfa/totp/device/otpAuthUrl';

    // ignore: prefer_final_locals
    Object? postBody = createTotpDeviceOtpAuthUrlOptions;

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

  /// Create a TOTP device from an OTP Auth URL
  ///
  /// Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<TotpDeviceDto?> createTotpDeviceForOtpAuthUrl(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    final response = await createTotpDeviceForOtpAuthUrlWithHttpInfo(createTotpDeviceOtpAuthUrlOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Get a TOTP device by ID
  ///
  /// Get Time-Based One-Time Password (TOTP) device by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTotpDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/mfa/totp/device/{id}'
      .replaceAll('{id}', id);

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

  /// Get a TOTP device by ID
  ///
  /// Get Time-Based One-Time Password (TOTP) device by its ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<TotpDeviceDto?> getTotpDevice(String id,) async {
    final response = await getTotpDeviceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Get a TOTP device by username, issuer, or name. Returns empty if not found.
  ///
  /// Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Optional name filter
  ///
  /// * [String] issuer:
  ///   Optional issuer filter
  ///
  /// * [String] username:
  ///   Optional username filter
  Future<Response> getTotpDeviceByWithHttpInfo({ String? name, String? issuer, String? username, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mfa/totp/device/by';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (issuer != null) {
      queryParams.addAll(_queryParams('', 'issuer', issuer));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
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

  /// Get a TOTP device by username, issuer, or name. Returns empty if not found.
  ///
  /// Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   Optional name filter
  ///
  /// * [String] issuer:
  ///   Optional issuer filter
  ///
  /// * [String] username:
  ///   Optional username filter
  Future<TotpDeviceOptionalDto?> getTotpDeviceBy({ String? name, String? issuer, String? username, }) async {
    final response = await getTotpDeviceByWithHttpInfo( name: name, issuer: issuer, username: username, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceOptionalDto',) as TotpDeviceOptionalDto;
    
    }
    return null;
  }

  /// Get a TOTP device code by device ID
  ///
  /// Get Time-Based One-Time Password for a device by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the TOTP device to get the code for
  ///
  /// * [DateTime] at:
  ///   Optional time to get code for. If not provided, current time is used.
  ///
  /// * [int] minSecondsUntilExpire:
  ///   Optional minimum time until code expires. Will hold thread open until period reached.
  Future<Response> getTotpDeviceCodeWithHttpInfo(String id, { DateTime? at, int? minSecondsUntilExpire, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mfa/totp/device/{id}/code'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (at != null) {
      queryParams.addAll(_queryParams('', 'at', at));
    }
    if (minSecondsUntilExpire != null) {
      queryParams.addAll(_queryParams('', 'minSecondsUntilExpire', minSecondsUntilExpire));
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

  /// Get a TOTP device code by device ID
  ///
  /// Get Time-Based One-Time Password for a device by its ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the TOTP device to get the code for
  ///
  /// * [DateTime] at:
  ///   Optional time to get code for. If not provided, current time is used.
  ///
  /// * [int] minSecondsUntilExpire:
  ///   Optional minimum time until code expires. Will hold thread open until period reached.
  Future<TotpDeviceCodeDto?> getTotpDeviceCode(String id, { DateTime? at, int? minSecondsUntilExpire, }) async {
    final response = await getTotpDeviceCodeWithHttpInfo(id,  at: at, minSecondsUntilExpire: minSecondsUntilExpire, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceCodeDto',) as TotpDeviceCodeDto;
    
    }
    return null;
  }
}
