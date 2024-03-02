//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DomainControllerApi {
  DomainControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add catch all wild card inbox to domain
  ///
  /// Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> addDomainWildcardCatchAllWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/domains/{id}/wildcard'
      .replaceAll('{id}', id);

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

  /// Add catch all wild card inbox to domain
  ///
  /// Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<DomainDto?> addDomainWildcardCatchAll(String id,) async {
    final response = await addDomainWildcardCatchAllWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainDto',) as DomainDto;
    
    }
    return null;
  }

  /// Create Domain
  ///
  /// Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDomainOptions] createDomainOptions (required):
  Future<Response> createDomainWithHttpInfo(CreateDomainOptions createDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domains';

    // ignore: prefer_final_locals
    Object? postBody = createDomainOptions;

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

  /// Create Domain
  ///
  /// Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
  ///
  /// Parameters:
  ///
  /// * [CreateDomainOptions] createDomainOptions (required):
  Future<DomainDto?> createDomain(CreateDomainOptions createDomainOptions,) async {
    final response = await createDomainWithHttpInfo(createDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainDto',) as DomainDto;
    
    }
    return null;
  }

  /// Delete a domain
  ///
  /// Delete a domain. This will disable any existing inboxes that use this domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteDomainWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/domains/{id}'
      .replaceAll('{id}', id);

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

  /// Delete a domain
  ///
  /// Delete a domain. This will disable any existing inboxes that use this domain.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<List<String>?> deleteDomain(String id,) async {
    final response = await deleteDomainWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// Get a domain
  ///
  /// Returns domain verification status and tokens for a given domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [bool] checkForErrors:
  Future<Response> getDomainWithHttpInfo(String id, { bool? checkForErrors, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domains/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (checkForErrors != null) {
      queryParams.addAll(_queryParams('', 'checkForErrors', checkForErrors));
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

  /// Get a domain
  ///
  /// Returns domain verification status and tokens for a given domain
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [bool] checkForErrors:
  Future<DomainDto?> getDomain(String id, { bool? checkForErrors, }) async {
    final response = await getDomainWithHttpInfo(id,  checkForErrors: checkForErrors, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainDto',) as DomainDto;
    
    }
    return null;
  }

  /// Get domain issues
  ///
  /// List domain issues for domains you have created
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainIssuesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domains/issues';

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

  /// Get domain issues
  ///
  /// List domain issues for domains you have created
  Future<DomainIssuesDto?> getDomainIssues() async {
    final response = await getDomainIssuesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainIssuesDto',) as DomainIssuesDto;
    
    }
    return null;
  }

  /// Get catch all wild card inbox for domain
  ///
  /// Get the catch all inbox for a domain for missed emails
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getDomainWildcardCatchAllInboxWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/domains/{id}/wildcard'
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

  /// Get catch all wild card inbox for domain
  ///
  /// Get the catch all inbox for a domain for missed emails
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InboxDto?> getDomainWildcardCatchAllInbox(String id,) async {
    final response = await getDomainWildcardCatchAllInboxWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxDto',) as InboxDto;
    
    }
    return null;
  }

  /// Get domains
  ///
  /// List all custom domains you have created
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domains';

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

  /// Get domains
  ///
  /// List all custom domains you have created
  Future<List<DomainPreview>?> getDomains() async {
    final response = await getDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainPreview>') as List)
        .cast<DomainPreview>()
        .toList();

    }
    return null;
  }

  /// Update a domain
  ///
  /// Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateDomainOptions] updateDomainOptions (required):
  Future<Response> updateDomainWithHttpInfo(String id, UpdateDomainOptions updateDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domains/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateDomainOptions;

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

  /// Update a domain
  ///
  /// Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateDomainOptions] updateDomainOptions (required):
  Future<DomainDto?> updateDomain(String id, UpdateDomainOptions updateDomainOptions,) async {
    final response = await updateDomainWithHttpInfo(id, updateDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainDto',) as DomainDto;
    
    }
    return null;
  }
}
