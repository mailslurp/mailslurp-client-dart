//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MailServerControllerApi {
  MailServerControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get DNS Mail Server records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DescribeDomainOptions] describeDomainOptions (required):
  Future<Response> describeMailServerDomainWithHttpInfo(DescribeDomainOptions describeDomainOptions) async {
    // Verify required params are set.
    if (describeDomainOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: describeDomainOptions');
    }

    final path = r'/mail-server/describe/domain';

    Object postBody = describeDomainOptions;

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

  /// Get DNS Mail Server records for a domain
  ///
  /// Parameters:
  ///
  /// * [DescribeDomainOptions] describeDomainOptions (required):
  Future<DescribeMailServerDomainResult> describeMailServerDomain(DescribeDomainOptions describeDomainOptions) async {
    final response = await describeMailServerDomainWithHttpInfo(describeDomainOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DescribeMailServerDomainResult',) as DescribeMailServerDomainResult;
        }
    return Future<DescribeMailServerDomainResult>.value(null);
  }

  /// Lookup DNS records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DNSLookupOptions] dNSLookupOptions (required):
  Future<Response> getDnsLookupWithHttpInfo(DNSLookupOptions dNSLookupOptions) async {
    // Verify required params are set.
    if (dNSLookupOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dNSLookupOptions');
    }

    final path = r'/mail-server/describe/dns-lookup';

    Object postBody = dNSLookupOptions;

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

  /// Lookup DNS records for a domain
  ///
  /// Parameters:
  ///
  /// * [DNSLookupOptions] dNSLookupOptions (required):
  Future<DNSLookupResults> getDnsLookup(DNSLookupOptions dNSLookupOptions) async {
    final response = await getDnsLookupWithHttpInfo(dNSLookupOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DNSLookupResults',) as DNSLookupResults;
        }
    return Future<DNSLookupResults>.value(null);
  }

  /// Get IP address for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getIpAddressWithHttpInfo(String name) async {
    // Verify required params are set.
    if (name == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: name');
    }

    final path = r'/mail-server/describe/ip-address';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get IP address for a domain
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<IPAddressResult> getIpAddress(String name) async {
    final response = await getIpAddressWithHttpInfo(name);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IPAddressResult',) as IPAddressResult;
        }
    return Future<IPAddressResult>.value(null);
  }

  /// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyEmailAddressOptions (required):
  Future<Response> verifyEmailAddressWithHttpInfo(VerifyEmailAddressOptions verifyEmailAddressOptions) async {
    // Verify required params are set.
    if (verifyEmailAddressOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: verifyEmailAddressOptions');
    }

    final path = r'/mail-server/verify/email-address';

    Object postBody = verifyEmailAddressOptions;

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

  /// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyEmailAddressOptions (required):
  Future<EmailVerificationResult> verifyEmailAddress(VerifyEmailAddressOptions verifyEmailAddressOptions) async {
    final response = await verifyEmailAddressWithHttpInfo(verifyEmailAddressOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailVerificationResult',) as EmailVerificationResult;
        }
    return Future<EmailVerificationResult>.value(null);
  }
}
