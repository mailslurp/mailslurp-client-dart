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
  /// * [DescribeDomainOptions] describeOptions (required):
  ///   describeOptions
  Future<Response> describeMailServerDomainWithHttpInfo(DescribeDomainOptions describeOptions) async {
    // Verify required params are set.
    if (describeOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: describeOptions');
    }

    final path = r'/mail-server/describe/domain';

    Object postBody = describeOptions;

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
  /// * [DescribeDomainOptions] describeOptions (required):
  ///   describeOptions
  Future<DescribeMailServerDomainResult> describeMailServerDomain(DescribeDomainOptions describeOptions) async {
    final response = await describeMailServerDomainWithHttpInfo(describeOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DescribeMailServerDomainResult') as DescribeMailServerDomainResult;
        }
    return Future<DescribeMailServerDomainResult>.value(null);
  }

  /// Lookup DNS records for a domain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DNSLookupOptions] dnsLookupOptions (required):
  ///   dnsLookupOptions
  Future<Response> getDnsLookupWithHttpInfo(DNSLookupOptions dnsLookupOptions) async {
    // Verify required params are set.
    if (dnsLookupOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dnsLookupOptions');
    }

    final path = r'/mail-server/describe/dns-lookup';

    Object postBody = dnsLookupOptions;

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
  /// * [DNSLookupOptions] dnsLookupOptions (required):
  ///   dnsLookupOptions
  Future<DNSLookupResults> getDnsLookup(DNSLookupOptions dnsLookupOptions) async {
    final response = await getDnsLookupWithHttpInfo(dnsLookupOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DNSLookupResults') as DNSLookupResults;
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
  ///   name
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
  ///   name
  Future<IPAddressResult> getIpAddress(String name) async {
    final response = await getIpAddressWithHttpInfo(name);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IPAddressResult') as IPAddressResult;
        }
    return Future<IPAddressResult>.value(null);
  }

  /// Verify the existence of an email address at a given mail server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyOptions (required):
  ///   verifyOptions
  Future<Response> verifyEmailAddressWithHttpInfo(VerifyEmailAddressOptions verifyOptions) async {
    // Verify required params are set.
    if (verifyOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: verifyOptions');
    }

    final path = r'/mail-server/verify/email-address';

    Object postBody = verifyOptions;

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

  /// Verify the existence of an email address at a given mail server.
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddressOptions] verifyOptions (required):
  ///   verifyOptions
  Future<EmailVerificationResult> verifyEmailAddress(VerifyEmailAddressOptions verifyOptions) async {
    final response = await verifyEmailAddressWithHttpInfo(verifyOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EmailVerificationResult') as EmailVerificationResult;
        }
    return Future<EmailVerificationResult>.value(null);
  }
}
