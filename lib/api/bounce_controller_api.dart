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

  /// Filter a list of email recipients and remove those who have bounced
  ///
  /// Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterBouncedRecipientsOptions] filterBouncedRecipientsOptions (required):
  Future<Response> filterBouncedRecipientWithHttpInfo(FilterBouncedRecipientsOptions filterBouncedRecipientsOptions) async {
    // Verify required params are set.
    if (filterBouncedRecipientsOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filterBouncedRecipientsOptions');
    }

    final path = r'/bounce/filter-recipients';

    Object postBody = filterBouncedRecipientsOptions;

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

  /// Filter a list of email recipients and remove those who have bounced
  ///
  /// Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
  ///
  /// Parameters:
  ///
  /// * [FilterBouncedRecipientsOptions] filterBouncedRecipientsOptions (required):
  Future<FilterBouncedRecipientsResult> filterBouncedRecipient(FilterBouncedRecipientsOptions filterBouncedRecipientsOptions) async {
    final response = await filterBouncedRecipientWithHttpInfo(filterBouncedRecipientsOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterBouncedRecipientsResult',) as FilterBouncedRecipientsResult;
        }
    return Future<FilterBouncedRecipientsResult>.value(null);
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
  Future<BouncedEmailDto> getBouncedEmail(String id) async {
    final response = await getBouncedEmailWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BouncedEmailDto',) as BouncedEmailDto;
        }
    return Future<BouncedEmailDto>.value(null);
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getBouncedEmailsWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageBouncedEmail> getBouncedEmails({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getBouncedEmailsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageBouncedEmail',) as PageBouncedEmail;
        }
    return Future<PageBouncedEmail>.value(null);
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
  Future<Response> getBouncedRecipientWithHttpInfo(String id) async {
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
  Future<BouncedRecipientDto> getBouncedRecipient(String id) async {
    final response = await getBouncedRecipientWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BouncedRecipientDto',) as BouncedRecipientDto;
        }
    return Future<BouncedRecipientDto>.value(null);
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getBouncedRecipientsWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageBouncedRecipients> getBouncedRecipients({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getBouncedRecipientsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageBouncedRecipients',) as PageBouncedRecipients;
        }
    return Future<PageBouncedRecipients>.value(null);
  }

  /// Get paginated list of complaints.
  ///
  /// SMTP complaints made against your account
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getComplaintsWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/bounce/complaints';

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

  /// Get paginated list of complaints.
  ///
  /// SMTP complaints made against your account
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
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageComplaint> getComplaints({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getComplaintsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageComplaint',) as PageComplaint;
        }
    return Future<PageComplaint>.value(null);
  }
}
