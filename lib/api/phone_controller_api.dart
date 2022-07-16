//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PhoneControllerApi {
  PhoneControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /phone/emergency-addresses' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateEmergencyAddressOptions] createEmergencyAddressOptions (required):
  Future<Response> createEmergencyAddressWithHttpInfo(CreateEmergencyAddressOptions createEmergencyAddressOptions) async {
    // Verify required params are set.
    if (createEmergencyAddressOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createEmergencyAddressOptions');
    }

    final path = r'/phone/emergency-addresses';

    Object postBody = createEmergencyAddressOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [CreateEmergencyAddressOptions] createEmergencyAddressOptions (required):
  Future<EmergencyAddress> createEmergencyAddress(CreateEmergencyAddressOptions createEmergencyAddressOptions) async {
    final response = await createEmergencyAddressWithHttpInfo(createEmergencyAddressOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmergencyAddress',) as EmergencyAddress;
        }
    return Future<EmergencyAddress>.value(null);
  }

  /// Performs an HTTP 'DELETE /phone/emergency-addresses/{addressId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] addressId (required):
  Future<Response> deleteEmergencyAddressWithHttpInfo(String addressId) async {
    // Verify required params are set.
    if (addressId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addressId');
    }

    final path = r'/phone/emergency-addresses/{addressId}'
      .replaceAll('{' + 'addressId' + '}', addressId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'DELETE',
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
  /// * [String] addressId (required):
  Future<EmptyResponseDto> deleteEmergencyAddress(String addressId) async {
    final response = await deleteEmergencyAddressWithHttpInfo(addressId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmptyResponseDto',) as EmptyResponseDto;
        }
    return Future<EmptyResponseDto>.value(null);
  }

  /// Performs an HTTP 'DELETE /phone/numbers/{phoneNumberId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<Response> deletePhoneNumberWithHttpInfo(String phoneNumberId) async {
    // Verify required params are set.
    if (phoneNumberId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: phoneNumberId');
    }

    final path = r'/phone/numbers/{phoneNumberId}'
      .replaceAll('{' + 'phoneNumberId' + '}', phoneNumberId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'DELETE',
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
  /// * [String] phoneNumberId (required):
  Future<void> deletePhoneNumber(String phoneNumberId) async {
    final response = await deletePhoneNumberWithHttpInfo(phoneNumberId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /phone/emergency-addresses/{addressId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] addressId (required):
  Future<Response> getEmergencyAddressWithHttpInfo(String addressId) async {
    // Verify required params are set.
    if (addressId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addressId');
    }

    final path = r'/phone/emergency-addresses/{addressId}'
      .replaceAll('{' + 'addressId' + '}', addressId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'GET',
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
  /// * [String] addressId (required):
  Future<EmergencyAddress> getEmergencyAddress(String addressId) async {
    final response = await getEmergencyAddressWithHttpInfo(addressId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmergencyAddress',) as EmergencyAddress;
        }
    return Future<EmergencyAddress>.value(null);
  }

  /// Performs an HTTP 'GET /phone/emergency-addresses' operation and returns the [Response].
  Future<Response> getEmergencyAddressesWithHttpInfo() async {
    final path = r'/phone/emergency-addresses';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<List<EmergencyAddressDto>> getEmergencyAddresses() async {
    final response = await getEmergencyAddressesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<EmergencyAddressDto>') as List)
        .cast<EmergencyAddressDto>()
        .toList(growable: false);
    }
    return Future<List<EmergencyAddressDto>>.value(null);
  }

  /// Performs an HTTP 'GET /phone/numbers/{phoneNumberId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<Response> getPhoneNumberWithHttpInfo(String phoneNumberId) async {
    // Verify required params are set.
    if (phoneNumberId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: phoneNumberId');
    }

    final path = r'/phone/numbers/{phoneNumberId}'
      .replaceAll('{' + 'phoneNumberId' + '}', phoneNumberId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'GET',
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
  /// * [String] phoneNumberId (required):
  Future<PhoneNumberDto> getPhoneNumber(String phoneNumberId) async {
    final response = await getPhoneNumberWithHttpInfo(phoneNumberId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PhoneNumberDto',) as PhoneNumberDto;
        }
    return Future<PhoneNumberDto>.value(null);
  }

  /// Performs an HTTP 'GET /phone/numbers' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> getPhoneNumbersWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/phone/numbers';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }

    final contentTypes = <String>[];
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
      'GET',
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
  Future<PagePhoneNumberProjection> getPhoneNumbers({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getPhoneNumbersWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneNumberProjection',) as PagePhoneNumberProjection;
        }
    return Future<PagePhoneNumberProjection>.value(null);
  }

  /// Performs an HTTP 'GET /phone/plans' operation and returns the [Response].
  Future<Response> getPhonePlansWithHttpInfo() async {
    final path = r'/phone/plans';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  Future<List<PhonePlanDto>> getPhonePlans() async {
    final response = await getPhonePlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<PhonePlanDto>') as List)
        .cast<PhonePlanDto>()
        .toList(growable: false);
    }
    return Future<List<PhonePlanDto>>.value(null);
  }
}
