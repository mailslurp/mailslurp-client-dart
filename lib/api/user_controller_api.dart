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
