//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MailServerControllerApi {
  MailServerControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get DNS Mail Server records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DescribeDomainOptions] describeDomainOptions (required):
  Future<Response> describeMailServerDomainWithHttpInfo(DescribeDomainOptions describeDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mail-server/describe/domain';

    // ignore: prefer_final_locals
    Object? postBody = describeDomainOptions;

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

  /// Get DNS Mail Server records for a domain
  ///
  /// Parameters:
  ///
  /// * [DescribeDomainOptions] describeDomainOptions (required):
  Future<DescribeMailServerDomainResult?> describeMailServerDomain(DescribeDomainOptions describeDomainOptions,) async {
    final response = await describeMailServerDomainWithHttpInfo(describeDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DescribeMailServerDomainResult',) as DescribeMailServerDomainResult;
    
    }
    return null;
  }

  /// Lookup DNS records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DNSLookupOptions] dNSLookupOptions (required):
  Future<Response> getDnsLookupWithHttpInfo(DNSLookupOptions dNSLookupOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mail-server/describe/dns-lookup';

    // ignore: prefer_final_locals
    Object? postBody = dNSLookupOptions;

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

  /// Lookup DNS records for a domain
  ///
  /// Parameters:
  ///
  /// * [DNSLookupOptions] dNSLookupOptions (required):
  Future<DNSLookupResults?> getDnsLookup(DNSLookupOptions dNSLookupOptions,) async {
    final response = await getDnsLookupWithHttpInfo(dNSLookupOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DNSLookupResults',) as DNSLookupResults;
    
    }
    return null;
  }

  /// Get IP address for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getIpAddressWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/mail-server/describe/ip-address';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Get IP address for a domain
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<IPAddressResult?> getIpAddress(String name,) async {
    final response = await getIpAddressWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IPAddressResult',) as IPAddressResult;
    
    }
    return null;
  }

  /// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyEmailAddressOptions (required):
  Future<Response> verifyEmailAddressWithHttpInfo(VerifyEmailAddressOptions verifyEmailAddressOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/mail-server/verify/email-address';

    // ignore: prefer_final_locals
    Object? postBody = verifyEmailAddressOptions;

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

  /// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyEmailAddressOptions (required):
  Future<EmailVerificationResult?> verifyEmailAddress(VerifyEmailAddressOptions verifyEmailAddressOptions,) async {
    final response = await verifyEmailAddressWithHttpInfo(verifyEmailAddressOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailVerificationResult',) as EmailVerificationResult;
    
    }
    return null;
  }
}
