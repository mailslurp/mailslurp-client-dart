//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PhoneControllerApi {
  PhoneControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /phone/emergency-addresses' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateEmergencyAddressOptions] createEmergencyAddressOptions (required):
  Future<Response> createEmergencyAddressWithHttpInfo(CreateEmergencyAddressOptions createEmergencyAddressOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/emergency-addresses';

    // ignore: prefer_final_locals
    Object? postBody = createEmergencyAddressOptions;

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
  /// * [CreateEmergencyAddressOptions] createEmergencyAddressOptions (required):
  Future<EmergencyAddress?> createEmergencyAddress(CreateEmergencyAddressOptions createEmergencyAddressOptions,) async {
    final response = await createEmergencyAddressWithHttpInfo(createEmergencyAddressOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmergencyAddress',) as EmergencyAddress;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /phone/emergency-addresses/{addressId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] addressId (required):
  Future<Response> deleteEmergencyAddressWithHttpInfo(String addressId,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/emergency-addresses/{addressId}'
      .replaceAll('{addressId}', addressId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] addressId (required):
  Future<EmptyResponseDto?> deleteEmergencyAddress(String addressId,) async {
    final response = await deleteEmergencyAddressWithHttpInfo(addressId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmptyResponseDto',) as EmptyResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /phone/numbers/{phoneNumberId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<Response> deletePhoneNumberWithHttpInfo(String phoneNumberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] phoneNumberId (required):
  Future<void> deletePhoneNumber(String phoneNumberId,) async {
    final response = await deletePhoneNumberWithHttpInfo(phoneNumberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /phone/emergency-addresses/{addressId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] addressId (required):
  Future<Response> getEmergencyAddressWithHttpInfo(String addressId,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/emergency-addresses/{addressId}'
      .replaceAll('{addressId}', addressId);

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

  /// Parameters:
  ///
  /// * [String] addressId (required):
  Future<EmergencyAddress?> getEmergencyAddress(String addressId,) async {
    final response = await getEmergencyAddressWithHttpInfo(addressId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmergencyAddress',) as EmergencyAddress;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /phone/emergency-addresses' operation and returns the [Response].
  Future<Response> getEmergencyAddressesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/emergency-addresses';

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

  Future<List<EmergencyAddressDto>?> getEmergencyAddresses() async {
    final response = await getEmergencyAddressesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmergencyAddressDto>') as List)
        .cast<EmergencyAddressDto>()
        .toList();

    }
    return null;
  }

  /// Performs an HTTP 'GET /phone/numbers/{phoneNumberId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<Response> getPhoneNumberWithHttpInfo(String phoneNumberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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

  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<PhoneNumberDto?> getPhoneNumber(String phoneNumberId,) async {
    final response = await getPhoneNumberWithHttpInfo(phoneNumberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PhoneNumberDto',) as PhoneNumberDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /phone/numbers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneCountry:
  ///   Optional phone country
  ///
  /// * [int] page:
  ///   Optional page index for list pagination
  ///
  /// * [int] size:
  ///   Optional page size for list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getPhoneNumbersWithHttpInfo({ String? phoneCountry, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneCountry != null) {
      queryParams.addAll(_queryParams('', 'phoneCountry', phoneCountry));
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

  /// Parameters:
  ///
  /// * [String] phoneCountry:
  ///   Optional phone country
  ///
  /// * [int] page:
  ///   Optional page index for list pagination
  ///
  /// * [int] size:
  ///   Optional page size for list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PagePhoneNumberProjection?> getPhoneNumbers({ String? phoneCountry, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getPhoneNumbersWithHttpInfo( phoneCountry: phoneCountry, page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneNumberProjection',) as PagePhoneNumberProjection;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /phone/plans' operation and returns the [Response].
  Future<Response> getPhonePlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/plans';

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

  Future<List<PhonePlanDto>?> getPhonePlans() async {
    final response = await getPhonePlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PhonePlanDto>') as List)
        .cast<PhonePlanDto>()
        .toList();

    }
    return null;
  }

  /// Performs an HTTP 'POST /phone/numbers/{phoneNumberId}/test' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [TestPhoneNumberOptions] testPhoneNumberOptions (required):
  ///
  /// * [String] xTestId:
  Future<Response> testPhoneNumberSendSmsWithHttpInfo(String phoneNumberId, TestPhoneNumberOptions testPhoneNumberOptions, { String? xTestId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/test'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = testPhoneNumberOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xTestId != null) {
      headerParams[r'x-test-id'] = parameterToString(xTestId);
    }

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
  /// * [String] phoneNumberId (required):
  ///
  /// * [TestPhoneNumberOptions] testPhoneNumberOptions (required):
  ///
  /// * [String] xTestId:
  Future<void> testPhoneNumberSendSms(String phoneNumberId, TestPhoneNumberOptions testPhoneNumberOptions, { String? xTestId, }) async {
    final response = await testPhoneNumberSendSmsWithHttpInfo(phoneNumberId, testPhoneNumberOptions,  xTestId: xTestId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
