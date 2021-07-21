//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BounceControllerApi {
  BounceControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced email to fetch
  Future<Response> getBouncedEmailWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/bounce/emails/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced email to fetch
  Future<void> getBouncedEmail(String id) async {
    final response = await getBouncedEmailWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced recipient
  Future<Response> getBouncedEmail1WithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/bounce/recipients/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced recipient
  Future<void> getBouncedEmail1(String id) async {
    final response = await getBouncedEmail1WithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get paginated list of bounced emails.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index 
  ///
  /// * [int] size:
  ///   Optional page size 
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getBouncedEmailsWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/bounce/emails';

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

  /// Get paginated list of bounced emails.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index 
  ///
  /// * [int] size:
  ///   Optional page size 
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<void> getBouncedEmails({ int page, int size, String sort }) async {
    final response = await getBouncedEmailsWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get paginated list of bounced recipients.
  ///
  /// Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index 
  ///
  /// * [int] size:
  ///   Optional page size 
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getBouncedRecipientsWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/bounce/recipients';

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

  /// Get paginated list of bounced recipients.
  ///
  /// Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index 
  ///
  /// * [int] size:
  ///   Optional page size 
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<void> getBouncedRecipients({ int page, int size, String sort }) async {
    final response = await getBouncedRecipientsWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
