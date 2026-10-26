//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailAuditControllerApi {
  EmailAuditControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Compare two email audits
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  ///
  /// * [String] otherAuditId (required):
  Future<Response> compareEmailAuditsWithHttpInfo(String auditId, String otherAuditId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-audits/{auditId}/compare/{otherAuditId}'
      .replaceAll('{auditId}', auditId)
      .replaceAll('{otherAuditId}', otherAuditId);

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

  /// Compare two email audits
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  ///
  /// * [String] otherAuditId (required):
  Future<EmailAuditComparisonDto?> compareEmailAudits(String auditId, String otherAuditId,) async {
    final response = await compareEmailAuditsWithHttpInfo(auditId, otherAuditId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailAuditComparisonDto',) as EmailAuditComparisonDto;
    
    }
    return null;
  }

  /// Create email audit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEmailAuditOptions] createEmailAuditOptions (required):
  Future<Response> createEmailAuditWithHttpInfo(CreateEmailAuditOptions createEmailAuditOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-audits';

    // ignore: prefer_final_locals
    Object? postBody = createEmailAuditOptions;

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

  /// Create email audit
  ///
  /// Parameters:
  ///
  /// * [CreateEmailAuditOptions] createEmailAuditOptions (required):
  Future<EmailAuditDto?> createEmailAudit(CreateEmailAuditOptions createEmailAuditOptions,) async {
    final response = await createEmailAuditWithHttpInfo(createEmailAuditOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailAuditDto',) as EmailAuditDto;
    
    }
    return null;
  }

  /// Delete email audit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  Future<Response> deleteEmailAuditWithHttpInfo(String auditId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-audits/{auditId}'
      .replaceAll('{auditId}', auditId);

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

  /// Delete email audit
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  Future<void> deleteEmailAudit(String auditId,) async {
    final response = await deleteEmailAuditWithHttpInfo(auditId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get email audit
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  Future<Response> getEmailAuditWithHttpInfo(String auditId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-audits/{auditId}'
      .replaceAll('{auditId}', auditId);

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

  /// Get email audit
  ///
  /// Parameters:
  ///
  /// * [String] auditId (required):
  Future<EmailAuditDto?> getEmailAudit(String auditId,) async {
    final response = await getEmailAuditWithHttpInfo(auditId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailAuditDto',) as EmailAuditDto;
    
    }
    return null;
  }

  /// List email audits
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [int] limit:
  Future<Response> getEmailAuditsWithHttpInfo({ String? emailId, DateTime? since, DateTime? before, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-audits';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (emailId != null) {
      queryParams.addAll(_queryParams('', 'emailId', emailId));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List email audits
  ///
  /// Parameters:
  ///
  /// * [String] emailId:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [int] limit:
  Future<List<EmailAuditDto>?> getEmailAudits({ String? emailId, DateTime? since, DateTime? before, int? limit, }) async {
    final response = await getEmailAuditsWithHttpInfo( emailId: emailId, since: since, before: before, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailAuditDto>') as List)
        .cast<EmailAuditDto>()
        .toList();

    }
    return null;
  }
}
