//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailVerificationControllerApi {
  EmailVerificationControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validate a list of email addresses. Per unit billing. See your plan for pricing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] isValid:
  ///   Filter where email is valid is true or false
  Future<Response> getValidationRequestsWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? isValid, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-verification/validation-requests';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (isValid != null) {
      queryParams.addAll(_queryParams('', 'isValid', isValid));
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

  /// Validate a list of email addresses. Per unit billing. See your plan for pricing.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] isValid:
  ///   Filter where email is valid is true or false
  Future<PageEmailValidationRequest?> getValidationRequests({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? isValid, }) async {
    final response = await getValidationRequestsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, isValid: isValid, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailValidationRequest',) as PageEmailValidationRequest;
    
    }
    return null;
  }

  /// Validate a list of email addresses. Per unit billing. See your plan for pricing.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateEmailAddressListOptions] validateEmailAddressListOptions (required):
  Future<Response> validateEmailAddressListWithHttpInfo(ValidateEmailAddressListOptions validateEmailAddressListOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-verification/email-address-list';

    // ignore: prefer_final_locals
    Object? postBody = validateEmailAddressListOptions;

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

  /// Validate a list of email addresses. Per unit billing. See your plan for pricing.
  ///
  /// Parameters:
  ///
  /// * [ValidateEmailAddressListOptions] validateEmailAddressListOptions (required):
  Future<ValidateEmailAddressListResult?> validateEmailAddressList(ValidateEmailAddressListOptions validateEmailAddressListOptions,) async {
    final response = await validateEmailAddressListWithHttpInfo(validateEmailAddressListOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateEmailAddressListResult',) as ValidateEmailAddressListResult;
    
    }
    return null;
  }
}
