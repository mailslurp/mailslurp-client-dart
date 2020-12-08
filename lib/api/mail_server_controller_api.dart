part of mailslurp.api;



class MailServerControllerApi {
  final ApiClient apiClient;

  MailServerControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get DNS Mail Server records for a domain with HTTP info returned
  ///
  /// 
  Future<Response> describeMailServerDomainWithHttpInfo(DescribeDomainOptions describeOptions) async {
    Object postBody = describeOptions;

    // verify required params are set
    if(describeOptions == null) {
     throw ApiException(400, "Missing required param: describeOptions");
    }

    // create path and map variables
    String path = "/mail-server/describe/domain".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get DNS Mail Server records for a domain
  ///
  /// 
  Future<DescribeMailServerDomainResult> describeMailServerDomain(DescribeDomainOptions describeOptions) async {
    Response response = await describeMailServerDomainWithHttpInfo(describeOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DescribeMailServerDomainResult') as DescribeMailServerDomainResult;
    } else {
      return null;
    }
  }

  /// Lookup DNS records for a domain with HTTP info returned
  ///
  /// 
  Future<Response> getDnsLookupWithHttpInfo(DNSLookupOptions dnsLookupOptions) async {
    Object postBody = dnsLookupOptions;

    // verify required params are set
    if(dnsLookupOptions == null) {
     throw ApiException(400, "Missing required param: dnsLookupOptions");
    }

    // create path and map variables
    String path = "/mail-server/describe/dns-lookup".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Lookup DNS records for a domain
  ///
  /// 
  Future<DNSLookupResults> getDnsLookup(DNSLookupOptions dnsLookupOptions) async {
    Response response = await getDnsLookupWithHttpInfo(dnsLookupOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DNSLookupResults') as DNSLookupResults;
    } else {
      return null;
    }
  }

  /// Get IP address for a domain with HTTP info returned
  ///
  /// 
  Future<Response> getIpAddressWithHttpInfo(String name) async {
    Object postBody;

    // verify required params are set
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/mail-server/describe/ip-address".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get IP address for a domain
  ///
  /// 
  Future<IPAddressResult> getIpAddress(String name) async {
    Response response = await getIpAddressWithHttpInfo(name);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IPAddressResult') as IPAddressResult;
    } else {
      return null;
    }
  }

  /// Verify the existence of an email address at a given mail server. with HTTP info returned
  ///
  /// 
  Future<Response> verifyEmailAddressWithHttpInfo(VerifyEmailAddressOptions verifyOptions) async {
    Object postBody = verifyOptions;

    // verify required params are set
    if(verifyOptions == null) {
     throw ApiException(400, "Missing required param: verifyOptions");
    }

    // create path and map variables
    String path = "/mail-server/verify/email-address".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Verify the existence of an email address at a given mail server.
  ///
  /// 
  Future<EmailVerificationResult> verifyEmailAddress(VerifyEmailAddressOptions verifyOptions) async {
    Response response = await verifyEmailAddressWithHttpInfo(verifyOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EmailVerificationResult') as EmailVerificationResult;
    } else {
      return null;
    }
  }

}
