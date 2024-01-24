//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BounceControllerApi {
  BounceControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> filterBouncedRecipientWithHttpInfo(FilterBouncedRecipientsOptions filterBouncedRecipientsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/filter-recipients';

    // ignore: prefer_final_locals
    Object? postBody = filterBouncedRecipientsOptions;

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

  /// Filter a list of email recipients and remove those who have bounced
  ///
  /// Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
  ///
  /// Parameters:
  ///
  /// * [FilterBouncedRecipientsOptions] filterBouncedRecipientsOptions (required):
  Future<FilterBouncedRecipientsResult?> filterBouncedRecipient(FilterBouncedRecipientsOptions filterBouncedRecipientsOptions,) async {
    final response = await filterBouncedRecipientWithHttpInfo(filterBouncedRecipientsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterBouncedRecipientsResult',) as FilterBouncedRecipientsResult;
    
    }
    return null;
  }

  /// Can account send email
  ///
  /// Check if account block status prevents sending
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountBounceBlockStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/account-block';

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

  /// Can account send email
  ///
  /// Check if account block status prevents sending
  Future<AccountBounceBlockDto?> getAccountBounceBlockStatus() async {
    final response = await getAccountBounceBlockStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountBounceBlockDto',) as AccountBounceBlockDto;
    
    }
    return null;
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
  Future<Response> getBouncedEmailWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/emails/{id}'
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

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced email to fetch
  Future<BouncedEmailDto?> getBouncedEmail(String id,) async {
    final response = await getBouncedEmailWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BouncedEmailDto',) as BouncedEmailDto;
    
    }
    return null;
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
  Future<Response> getBouncedEmailsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/emails';

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
  Future<PageBouncedEmail?> getBouncedEmails({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getBouncedEmailsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageBouncedEmail',) as PageBouncedEmail;
    
    }
    return null;
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
  Future<Response> getBouncedRecipientWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/recipients/{id}'
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

  /// Get a bounced email.
  ///
  /// Bounced emails are email you have sent that were rejected by a recipient
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the bounced recipient
  Future<BouncedRecipientDto?> getBouncedRecipient(String id,) async {
    final response = await getBouncedRecipientWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BouncedRecipientDto',) as BouncedRecipientDto;
    
    }
    return null;
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
  Future<Response> getBouncedRecipientsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/recipients';

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
  Future<PageBouncedRecipients?> getBouncedRecipients({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getBouncedRecipientsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageBouncedRecipients',) as PageBouncedRecipients;
    
    }
    return null;
  }

  /// Get complaint
  ///
  /// Get complaint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the complaint
  Future<Response> getComplaintWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/complaints/{id}'
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

  /// Get complaint
  ///
  /// Get complaint
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the complaint
  Future<Complaint?> getComplaint(String id,) async {
    final response = await getComplaintWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Complaint',) as Complaint;
    
    }
    return null;
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
  Future<Response> getComplaintsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/complaints';

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
  Future<PageComplaint?> getComplaints({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getComplaintsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageComplaint',) as PageComplaint;
    
    }
    return null;
  }

  /// Get paginated list of unsubscribed recipients.
  ///
  /// Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
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
  /// * [String] domainId:
  ///   Filter by domainId
  Future<Response> getListUnsubscribeRecipientsWithHttpInfo({ int? page, int? size, String? sort, String? domainId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/bounce/list-unsubscribe-recipients';

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
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
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

  /// Get paginated list of unsubscribed recipients.
  ///
  /// Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
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
  /// * [String] domainId:
  ///   Filter by domainId
  Future<PageListUnsubscribeRecipients?> getListUnsubscribeRecipients({ int? page, int? size, String? sort, String? domainId, }) async {
    final response = await getListUnsubscribeRecipientsWithHttpInfo( page: page, size: size, sort: sort, domainId: domainId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageListUnsubscribeRecipients',) as PageListUnsubscribeRecipients;
    
    }
    return null;
  }
}
