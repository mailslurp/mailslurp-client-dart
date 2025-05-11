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

  /// Create an emergency address
  ///
  /// Add an emergency address to a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Create an emergency address
  ///
  /// Add an emergency address to a phone number
  ///
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

  /// Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
  ///
  /// Create new phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePhoneNumberOptions] createPhoneNumberOptions (required):
  Future<Response> createPhoneNumberWithHttpInfo(CreatePhoneNumberOptions createPhoneNumberOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone';

    // ignore: prefer_final_locals
    Object? postBody = createPhoneNumberOptions;

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

  /// Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
  ///
  /// Create new phone number
  ///
  /// Parameters:
  ///
  /// * [CreatePhoneNumberOptions] createPhoneNumberOptions (required):
  Future<PhoneNumberDto?> createPhoneNumber(CreatePhoneNumberOptions createPhoneNumberOptions,) async {
    final response = await createPhoneNumberWithHttpInfo(createPhoneNumberOptions,);
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

  /// Delete an emergency address
  ///
  /// Delete an emergency address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Delete an emergency address
  ///
  /// Delete an emergency address
  ///
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

  /// Delete a phone number
  ///
  /// Remove phone number from account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Delete a phone number
  ///
  /// Remove phone number from account
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<void> deletePhoneNumber(String phoneNumberId,) async {
    final response = await deletePhoneNumberWithHttpInfo(phoneNumberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the latest messages for all phones
  ///
  /// List all message threads for all phones
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> getAllPhoneMessageThreadsWithHttpInfo({ int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/message-threads';

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

  /// Get the latest messages for all phones
  ///
  /// List all message threads for all phones
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<PagePhoneMessageThreadProjection?> getAllPhoneMessageThreads({ int? page, int? size, }) async {
    final response = await getAllPhoneMessageThreadsWithHttpInfo( page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneMessageThreadProjection',) as PagePhoneMessageThreadProjection;
    
    }
    return null;
  }

  /// Get consent status
  ///
  /// Get the status of phone usage consent
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConsentStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/consent';

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

  /// Get consent status
  ///
  /// Get the status of phone usage consent
  Future<ConsentStatusDto?> getConsentStatus() async {
    final response = await getConsentStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsentStatusDto',) as ConsentStatusDto;
    
    }
    return null;
  }

  /// Get an emergency address
  ///
  /// Fetch an emergency address by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Get an emergency address
  ///
  /// Fetch an emergency address by ID
  ///
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

  /// Get emergency addresses
  ///
  /// List emergency addresses
  ///
  /// Note: This method returns the HTTP [Response].
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

  /// Get emergency addresses
  ///
  /// List emergency addresses
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

  /// Get messages in a phone thread
  ///
  /// List message thread messages for a phone message thread
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] otherNumber (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> getPhoneMessageThreadItemsWithHttpInfo(String phoneNumberId, String otherNumber, { int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/message-threads/{otherNumber}'
      .replaceAll('{phoneNumberId}', phoneNumberId)
      .replaceAll('{otherNumber}', otherNumber);

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

  /// Get messages in a phone thread
  ///
  /// List message thread messages for a phone message thread
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] otherNumber (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<PagePhoneMessageThreadItemProjection?> getPhoneMessageThreadItems(String phoneNumberId, String otherNumber, { int? page, int? size, }) async {
    final response = await getPhoneMessageThreadItemsWithHttpInfo(phoneNumberId, otherNumber,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneMessageThreadItemProjection',) as PagePhoneMessageThreadItemProjection;
    
    }
    return null;
  }

  /// Get the latest message preview for a thread
  ///
  /// List message threads for a phone
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> getPhoneMessageThreadsWithHttpInfo(String phoneNumberId, { int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/message-threads'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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

  /// Get the latest message preview for a thread
  ///
  /// List message threads for a phone
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<PagePhoneMessageThreadProjection?> getPhoneMessageThreads(String phoneNumberId, { int? page, int? size, }) async {
    final response = await getPhoneMessageThreadsWithHttpInfo(phoneNumberId,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneMessageThreadProjection',) as PagePhoneMessageThreadProjection;
    
    }
    return null;
  }

  /// Get a phone number by ID
  ///
  /// Get a phone number by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Get a phone number by ID
  ///
  /// Get a phone number by ID
  ///
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

  /// Get a phone number by name
  ///
  /// Get a phone number by name
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPhoneNumberByNameWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/by-name';

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

  /// Get a phone number by name
  ///
  /// Get a phone number by name
  Future<PhoneNumberDto?> getPhoneNumberByName() async {
    final response = await getPhoneNumberByNameWithHttpInfo();
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

  /// Get a phone number by phone number
  ///
  /// Get a phone number by phone number
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPhoneNumberByPhoneNumberWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/by-phone-number';

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

  /// Get a phone number by phone number
  ///
  /// Get a phone number by phone number
  Future<PhoneNumberDto?> getPhoneNumberByPhoneNumber() async {
    final response = await getPhoneNumberByPhoneNumberWithHttpInfo();
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

  /// Get phone numbers
  ///
  /// List phone numbers for account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [List<String>] include:
  ///   Optional phoneIds to include in result
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  Future<Response> getPhoneNumbersWithHttpInfo({ String? phoneCountry, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, List<String>? include, bool? favourite, }) async {
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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('multi', 'include', include));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
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

  /// Get phone numbers
  ///
  /// List phone numbers for account
  ///
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
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [List<String>] include:
  ///   Optional phoneIds to include in result
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  Future<PagePhoneNumberProjection?> getPhoneNumbers({ String? phoneCountry, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, List<String>? include, bool? favourite, }) async {
    final response = await getPhoneNumbersWithHttpInfo( phoneCountry: phoneCountry, page: page, size: size, sort: sort, since: since, before: before, search: search, include: include, favourite: favourite, );
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

  /// Get phone plans
  ///
  /// Get phone number plans
  ///
  /// Note: This method returns the HTTP [Response].
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

  /// Get phone plans
  ///
  /// Get phone number plans
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

  /// Get phone plans availability
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPhonePlansAvailabilityWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/phone/plans/availability';

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

  /// Get phone plans availability
  Future<PhonePlanAvailability?> getPhonePlansAvailability() async {
    final response = await getPhonePlansAvailabilityWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PhonePlanAvailability',) as PhonePlanAvailability;
    
    }
    return null;
  }

  /// List sent TXT messages for a phone number
  ///
  /// Get sent SMS messages for a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<Response> getSentSmsByPhoneNumberWithHttpInfo(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/sms-sent'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List sent TXT messages for a phone number
  ///
  /// Get sent SMS messages for a phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<PageSentSmsProjection?> getSentSmsByPhoneNumber(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    final response = await getSentSmsByPhoneNumberWithHttpInfo(phoneNumberId,  page: page, size: size, sort: sort, since: since, before: before, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentSmsProjection',) as PageSentSmsProjection;
    
    }
    return null;
  }

  /// List SMS messages for a phone number
  ///
  /// Get SMS messages for a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  Future<Response> getSmsByPhoneNumberWithHttpInfo(String phoneNumberId, { int? page, int? size, String? sort, bool? unreadOnly, DateTime? since, DateTime? before, String? search, bool? favourite, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/sms'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
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

  /// List SMS messages for a phone number
  ///
  /// Get SMS messages for a phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  Future<PageSmsProjection?> getSmsByPhoneNumber(String phoneNumberId, { int? page, int? size, String? sort, bool? unreadOnly, DateTime? since, DateTime? before, String? search, bool? favourite, }) async {
    final response = await getSmsByPhoneNumberWithHttpInfo(phoneNumberId,  page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before, search: search, favourite: favourite, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSmsProjection',) as PageSmsProjection;
    
    }
    return null;
  }

  /// Send TXT message from a phone number
  ///
  /// Send SMS from a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  Future<Response> sendSmsFromPhoneNumberWithHttpInfo(String phoneNumberId, SmsSendOptions smsSendOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/sms'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = smsSendOptions;

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

  /// Send TXT message from a phone number
  ///
  /// Send SMS from a phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  Future<SentSmsDto?> sendSmsFromPhoneNumber(String phoneNumberId, SmsSendOptions smsSendOptions,) async {
    final response = await sendSmsFromPhoneNumberWithHttpInfo(phoneNumberId, smsSendOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Set consent status
  ///
  /// Give or revoke consent for phone usage
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] agree (required):
  Future<Response> setConsentStatusWithHttpInfo(bool agree,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'agree', agree));

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

  /// Set consent status
  ///
  /// Give or revoke consent for phone usage
  ///
  /// Parameters:
  ///
  /// * [bool] agree (required):
  Future<ConsentStatusDto?> setConsentStatus(bool agree,) async {
    final response = await setConsentStatusWithHttpInfo(agree,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsentStatusDto',) as ConsentStatusDto;
    
    }
    return null;
  }

  /// Set phone favourited state
  ///
  /// Set and return new favorite state for a phone
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///   ID of phone to set favourite state
  ///
  /// * [SetPhoneFavouritedOptions] setPhoneFavouritedOptions (required):
  Future<Response> setPhoneFavouritedWithHttpInfo(String phoneNumberId, SetPhoneFavouritedOptions setPhoneFavouritedOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/favourite'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = setPhoneFavouritedOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set phone favourited state
  ///
  /// Set and return new favorite state for a phone
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///   ID of phone to set favourite state
  ///
  /// * [SetPhoneFavouritedOptions] setPhoneFavouritedOptions (required):
  Future<PhoneNumberDto?> setPhoneFavourited(String phoneNumberId, SetPhoneFavouritedOptions setPhoneFavouritedOptions,) async {
    final response = await setPhoneFavouritedWithHttpInfo(phoneNumberId, setPhoneFavouritedOptions,);
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

  /// Test sending an SMS to a number
  ///
  /// Test a phone number by sending an SMS to it
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Test sending an SMS to a number
  ///
  /// Test a phone number by sending an SMS to it
  ///
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

  /// Update a phone number
  ///
  /// Set field for phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///   ID of phone to set favourite state
  ///
  /// * [UpdatePhoneNumberOptions] updatePhoneNumberOptions (required):
  Future<Response> updatePhoneNumberWithHttpInfo(String phoneNumberId, UpdatePhoneNumberOptions updatePhoneNumberOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = updatePhoneNumberOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a phone number
  ///
  /// Set field for phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///   ID of phone to set favourite state
  ///
  /// * [UpdatePhoneNumberOptions] updatePhoneNumberOptions (required):
  Future<PhoneNumberDto?> updatePhoneNumber(String phoneNumberId, UpdatePhoneNumberOptions updatePhoneNumberOptions,) async {
    final response = await updatePhoneNumberWithHttpInfo(phoneNumberId, updatePhoneNumberOptions,);
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

  /// Verify validity of a phone number
  ///
  /// Validate a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidatePhoneNumberOptions] validatePhoneNumberOptions (required):
  Future<Response> validatePhoneNumberWithHttpInfo(ValidatePhoneNumberOptions validatePhoneNumberOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/validate';

    // ignore: prefer_final_locals
    Object? postBody = validatePhoneNumberOptions;

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

  /// Verify validity of a phone number
  ///
  /// Validate a phone number
  ///
  /// Parameters:
  ///
  /// * [ValidatePhoneNumberOptions] validatePhoneNumberOptions (required):
  Future<PhoneNumberValidationDto?> validatePhoneNumber(ValidatePhoneNumberOptions validatePhoneNumberOptions,) async {
    final response = await validatePhoneNumberWithHttpInfo(validatePhoneNumberOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PhoneNumberValidationDto',) as PhoneNumberValidationDto;
    
    }
    return null;
  }
}
