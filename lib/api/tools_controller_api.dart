//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ToolsControllerApi {
  ToolsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check email client support for email HTML and CSS features
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CheckEmailFeaturesClientSupportOptions] checkEmailFeaturesClientSupportOptions (required):
  Future<Response> checkEmailFeaturesClientSupportWithHttpInfo(CheckEmailFeaturesClientSupportOptions checkEmailFeaturesClientSupportOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/check-email-features-client-support';

    // ignore: prefer_final_locals
    Object? postBody = checkEmailFeaturesClientSupportOptions;

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

  /// Check email client support for email HTML and CSS features
  ///
  /// Parameters:
  ///
  /// * [CheckEmailFeaturesClientSupportOptions] checkEmailFeaturesClientSupportOptions (required):
  Future<CheckEmailFeaturesClientSupportResults?> checkEmailFeaturesClientSupport(CheckEmailFeaturesClientSupportOptions checkEmailFeaturesClientSupportOptions,) async {
    final response = await checkEmailFeaturesClientSupportWithHttpInfo(checkEmailFeaturesClientSupportOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckEmailFeaturesClientSupportResults',) as CheckEmailFeaturesClientSupportResults;
    
    }
    return null;
  }

  /// Create a new email address using the fake email domains
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createNewFakeEmailAddressWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-email';

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

  /// Create a new email address using the fake email domains
  Future<NewFakeEmailAddressResult?> createNewFakeEmailAddress() async {
    final response = await createNewFakeEmailAddressWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewFakeEmailAddressResult',) as NewFakeEmailAddressResult;
    
    }
    return null;
  }

  /// Delete a fake email address using the fake email domains
  ///
  /// Delete a fake email address using the fake email domains
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<Response> deleteNewFakeEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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

  /// Delete a fake email address using the fake email domains
  ///
  /// Delete a fake email address using the fake email domains
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<void> deleteNewFakeEmailAddress(String emailAddress,) async {
    final response = await deleteNewFakeEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a BIMI record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateBimiRecordOptions] generateBimiRecordOptions (required):
  Future<Response> generateBimiRecordWithHttpInfo(GenerateBimiRecordOptions generateBimiRecordOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/generate-bimi-record';

    // ignore: prefer_final_locals
    Object? postBody = generateBimiRecordOptions;

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

  /// Create a BIMI record policy
  ///
  /// Parameters:
  ///
  /// * [GenerateBimiRecordOptions] generateBimiRecordOptions (required):
  Future<GenerateBimiRecordResults?> generateBimiRecord(GenerateBimiRecordOptions generateBimiRecordOptions,) async {
    final response = await generateBimiRecordWithHttpInfo(generateBimiRecordOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateBimiRecordResults',) as GenerateBimiRecordResults;
    
    }
    return null;
  }

  /// Create a DMARC record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateDmarcRecordOptions] generateDmarcRecordOptions (required):
  Future<Response> generateDmarcRecordWithHttpInfo(GenerateDmarcRecordOptions generateDmarcRecordOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/generate-dmarc-record';

    // ignore: prefer_final_locals
    Object? postBody = generateDmarcRecordOptions;

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

  /// Create a DMARC record policy
  ///
  /// Parameters:
  ///
  /// * [GenerateDmarcRecordOptions] generateDmarcRecordOptions (required):
  Future<GenerateDmarcRecordResults?> generateDmarcRecord(GenerateDmarcRecordOptions generateDmarcRecordOptions,) async {
    final response = await generateDmarcRecordWithHttpInfo(generateDmarcRecordOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateDmarcRecordResults',) as GenerateDmarcRecordResults;
    
    }
    return null;
  }

  /// Create a TLS reporting record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateMtaStsRecordOptions] generateMtaStsRecordOptions (required):
  Future<Response> generateMtaStsRecordWithHttpInfo(GenerateMtaStsRecordOptions generateMtaStsRecordOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/generate-mta-sts-record';

    // ignore: prefer_final_locals
    Object? postBody = generateMtaStsRecordOptions;

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

  /// Create a TLS reporting record policy
  ///
  /// Parameters:
  ///
  /// * [GenerateMtaStsRecordOptions] generateMtaStsRecordOptions (required):
  Future<GenerateMtaStsRecordResults?> generateMtaStsRecord(GenerateMtaStsRecordOptions generateMtaStsRecordOptions,) async {
    final response = await generateMtaStsRecordWithHttpInfo(generateMtaStsRecordOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateMtaStsRecordResults',) as GenerateMtaStsRecordResults;
    
    }
    return null;
  }

  /// Create a TLS reporting record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateTlsReportingRecordOptions] generateTlsReportingRecordOptions (required):
  Future<Response> generateTlsReportingRecordWithHttpInfo(GenerateTlsReportingRecordOptions generateTlsReportingRecordOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/generate-tls-reporting-record';

    // ignore: prefer_final_locals
    Object? postBody = generateTlsReportingRecordOptions;

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

  /// Create a TLS reporting record policy
  ///
  /// Parameters:
  ///
  /// * [GenerateTlsReportingRecordOptions] generateTlsReportingRecordOptions (required):
  Future<GenerateTlsReportingRecordResults?> generateTlsReportingRecord(GenerateTlsReportingRecordOptions generateTlsReportingRecordOptions,) async {
    final response = await generateTlsReportingRecordWithHttpInfo(generateTlsReportingRecordOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateTlsReportingRecordResults',) as GenerateTlsReportingRecordResults;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /tools/fake-email/byEmailAddress' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<Response> getFakeEmailByEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-email/byEmailAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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
  /// * [String] emailAddress (required):
  Future<FakeEmailResult?> getFakeEmailByEmailAddress(String emailAddress,) async {
    final response = await getFakeEmailByEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FakeEmailResult',) as FakeEmailResult;
    
    }
    return null;
  }

  /// Get a fake email by its ID
  ///
  /// Get a fake email by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getFakeEmailByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

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

  /// Get a fake email by its ID
  ///
  /// Get a fake email by its ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<FakeEmailResult?> getFakeEmailById(String id,) async {
    final response = await getFakeEmailByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FakeEmailResult',) as FakeEmailResult;
    
    }
    return null;
  }

  /// Get raw fake email content
  ///
  /// Retrieve the raw content of a fake email by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getFakeEmailRawWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-email/html';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

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

  /// Get raw fake email content
  ///
  /// Retrieve the raw content of a fake email by its ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<String?> getFakeEmailRaw(String id,) async {
    final response = await getFakeEmailRawWithHttpInfo(id,);
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

  /// Get fake emails for an address
  ///
  /// Get fake emails for an address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///
  /// * [int] page:
  Future<Response> getFakeEmailsForAddressWithHttpInfo(String emailAddress, { int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/fake-emails';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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

  /// Get fake emails for an address
  ///
  /// Get fake emails for an address
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///
  /// * [int] page:
  Future<List<FakeEmailPreview>?> getFakeEmailsForAddress(String emailAddress, { int? page, }) async {
    final response = await getFakeEmailsForAddressWithHttpInfo(emailAddress,  page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FakeEmailPreview>') as List)
        .cast<FakeEmailPreview>()
        .toList();

    }
    return null;
  }

  /// Lookup a BIMI record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LookupBimiDomainOptions] lookupBimiDomainOptions (required):
  Future<Response> lookupBimiDomainWithHttpInfo(LookupBimiDomainOptions lookupBimiDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/lookup-bimi-domain';

    // ignore: prefer_final_locals
    Object? postBody = lookupBimiDomainOptions;

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

  /// Lookup a BIMI record policy
  ///
  /// Parameters:
  ///
  /// * [LookupBimiDomainOptions] lookupBimiDomainOptions (required):
  Future<LookupBimiDomainResults?> lookupBimiDomain(LookupBimiDomainOptions lookupBimiDomainOptions,) async {
    final response = await lookupBimiDomainWithHttpInfo(lookupBimiDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LookupBimiDomainResults',) as LookupBimiDomainResults;
    
    }
    return null;
  }

  /// Lookup a DMARC record policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LookupDmarcDomainOptions] lookupDmarcDomainOptions (required):
  Future<Response> lookupDmarcDomainWithHttpInfo(LookupDmarcDomainOptions lookupDmarcDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/lookup-dmarc-domain';

    // ignore: prefer_final_locals
    Object? postBody = lookupDmarcDomainOptions;

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

  /// Lookup a DMARC record policy
  ///
  /// Parameters:
  ///
  /// * [LookupDmarcDomainOptions] lookupDmarcDomainOptions (required):
  Future<LookupDmarcDomainResults?> lookupDmarcDomain(LookupDmarcDomainOptions lookupDmarcDomainOptions,) async {
    final response = await lookupDmarcDomainWithHttpInfo(lookupDmarcDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LookupDmarcDomainResults',) as LookupDmarcDomainResults;
    
    }
    return null;
  }

  /// Lookup a MTA-STS domain policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LookupMtaStsDomainOptions] lookupMtaStsDomainOptions (required):
  Future<Response> lookupMtaStsDomainWithHttpInfo(LookupMtaStsDomainOptions lookupMtaStsDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/lookup-mta-sts-domain';

    // ignore: prefer_final_locals
    Object? postBody = lookupMtaStsDomainOptions;

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

  /// Lookup a MTA-STS domain policy
  ///
  /// Parameters:
  ///
  /// * [LookupMtaStsDomainOptions] lookupMtaStsDomainOptions (required):
  Future<LookupMtaStsDomainResults?> lookupMtaStsDomain(LookupMtaStsDomainOptions lookupMtaStsDomainOptions,) async {
    final response = await lookupMtaStsDomainWithHttpInfo(lookupMtaStsDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LookupMtaStsDomainResults',) as LookupMtaStsDomainResults;
    
    }
    return null;
  }

  /// Lookup a MX records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LookupMxRecordsOptions] lookupMxRecordsOptions (required):
  Future<Response> lookupMxRecordWithHttpInfo(LookupMxRecordsOptions lookupMxRecordsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/lookup-mx-records';

    // ignore: prefer_final_locals
    Object? postBody = lookupMxRecordsOptions;

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

  /// Lookup a MX records for a domain
  ///
  /// Parameters:
  ///
  /// * [LookupMxRecordsOptions] lookupMxRecordsOptions (required):
  Future<LookupMxRecordsResults?> lookupMxRecord(LookupMxRecordsOptions lookupMxRecordsOptions,) async {
    final response = await lookupMxRecordWithHttpInfo(lookupMxRecordsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LookupMxRecordsResults',) as LookupMxRecordsResults;
    
    }
    return null;
  }

  /// Lookup a TLS reporting domain policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LookupTlsReportingDomainOptions] lookupTlsReportingDomainOptions (required):
  Future<Response> lookupTlsReportingDomainWithHttpInfo(LookupTlsReportingDomainOptions lookupTlsReportingDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/tools/lookup-tls-reporting-domain';

    // ignore: prefer_final_locals
    Object? postBody = lookupTlsReportingDomainOptions;

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

  /// Lookup a TLS reporting domain policy
  ///
  /// Parameters:
  ///
  /// * [LookupTlsReportingDomainOptions] lookupTlsReportingDomainOptions (required):
  Future<LookupTlsReportingDomainResults?> lookupTlsReportingDomain(LookupTlsReportingDomainOptions lookupTlsReportingDomainOptions,) async {
    final response = await lookupTlsReportingDomainWithHttpInfo(lookupTlsReportingDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LookupTlsReportingDomainResults',) as LookupTlsReportingDomainResults;
    
    }
    return null;
  }
}
