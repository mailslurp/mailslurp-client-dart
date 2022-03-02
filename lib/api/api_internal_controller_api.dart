//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiInternalControllerApi {
  ApiInternalControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /internal/saml/user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] key (required):
  ///
  /// * [GetOrCreateSamlUserOptions] getOrCreateSamlUserOptions (required):
  Future<Response> getSamlUserOrCreateWithHttpInfo(String key, GetOrCreateSamlUserOptions getOrCreateSamlUserOptions) async {
    // Verify required params are set.
    if (key == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: key');
    }
    if (getOrCreateSamlUserOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: getOrCreateSamlUserOptions');
    }

    final path = r'/internal/saml/user';

    Object postBody = getOrCreateSamlUserOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'key', key));

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

  /// Parameters:
  ///
  /// * [String] key (required):
  ///
  /// * [GetOrCreateSamlUserOptions] getOrCreateSamlUserOptions (required):
  Future<UserDto> getSamlUserOrCreate(String key, GetOrCreateSamlUserOptions getOrCreateSamlUserOptions) async {
    final response = await getSamlUserOrCreateWithHttpInfo(key, getOrCreateSamlUserOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
        }
    return Future<UserDto>.value(null);
  }
}
