//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiEmailWarmupControllerApi {
  ApiEmailWarmupControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEmailWarmupProgramOptions] createEmailWarmupProgramOptions (required):
  Future<Response> createEmailWarmupProgramWithHttpInfo(CreateEmailWarmupProgramOptions createEmailWarmupProgramOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs';

    // ignore: prefer_final_locals
    Object? postBody = createEmailWarmupProgramOptions;

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

  /// Create an email warmup program
  ///
  /// Parameters:
  ///
  /// * [CreateEmailWarmupProgramOptions] createEmailWarmupProgramOptions (required):
  Future<EmailWarmupProgramDto?> createEmailWarmupProgram(CreateEmailWarmupProgramOptions createEmailWarmupProgramOptions,) async {
    final response = await createEmailWarmupProgramWithHttpInfo(createEmailWarmupProgramOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Delete an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> deleteEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Delete an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<void> deleteEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await deleteEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cancel purchased email warmup sender seats
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteEmailWarmupSenderSeatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/sender-seats';

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

  /// Cancel purchased email warmup sender seats
  Future<EmailWarmupUsageSummaryDto?> deleteEmailWarmupSenderSeats() async {
    final response = await deleteEmailWarmupSenderSeatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupUsageSummaryDto',) as EmailWarmupUsageSummaryDto;
    
    }
    return null;
  }

  /// Get operational email warmup activity and program progress
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] days:
  Future<Response> getEmailWarmupOverviewWithHttpInfo({ int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/overview';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get operational email warmup activity and program progress
  ///
  /// Parameters:
  ///
  /// * [int] days:
  Future<EmailWarmupOverviewDto?> getEmailWarmupOverview({ int? days, }) async {
    final response = await getEmailWarmupOverviewWithHttpInfo( days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupOverviewDto',) as EmailWarmupOverviewDto;
    
    }
    return null;
  }

  /// List Gmail and Outlook placement checks for an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<Response> getEmailWarmupPlacementChecksWithHttpInfo(String programId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/placement-checks'
      .replaceAll('{programId}', programId);

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

  /// List Gmail and Outlook placement checks for an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<List<EmailWarmupPlacementCheckDto>?> getEmailWarmupPlacementChecks(String programId,) async {
    final response = await getEmailWarmupPlacementChecksWithHttpInfo(programId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailWarmupPlacementCheckDto>') as List)
        .cast<EmailWarmupPlacementCheckDto>()
        .toList();

    }
    return null;
  }

  /// Get an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<Response> getEmailWarmupProgramWithHttpInfo(String programId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}'
      .replaceAll('{programId}', programId);

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

  /// Get an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<EmailWarmupProgramDto?> getEmailWarmupProgram(String programId,) async {
    final response = await getEmailWarmupProgramWithHttpInfo(programId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Get email warmup program progress and daily activity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [int] days:
  Future<Response> getEmailWarmupProgramAnalyticsWithHttpInfo(String programId, { int? days, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/analytics'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (days != null) {
      queryParams.addAll(_queryParams('', 'days', days));
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

  /// Get email warmup program progress and daily activity
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [int] days:
  Future<EmailWarmupProgramAnalyticsDto?> getEmailWarmupProgramAnalytics(String programId, { int? days, }) async {
    final response = await getEmailWarmupProgramAnalyticsWithHttpInfo(programId,  days: days, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramAnalyticsDto',) as EmailWarmupProgramAnalyticsDto;
    
    }
    return null;
  }

  /// List email warmup programs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> getEmailWarmupProgramsWithHttpInfo({ int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs';

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

  /// List email warmup programs
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<EmailWarmupProgramPageDto?> getEmailWarmupPrograms({ int? page, int? size, }) async {
    final response = await getEmailWarmupProgramsWithHttpInfo( page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramPageDto',) as EmailWarmupProgramPageDto;
    
    }
    return null;
  }

  /// Get warmup readiness, adaptive pacing, and sender-health signals
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<Response> getEmailWarmupReadinessWithHttpInfo(String programId,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/readiness'
      .replaceAll('{programId}', programId);

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

  /// Get warmup readiness, adaptive pacing, and sender-health signals
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  Future<EmailWarmupReadinessDto?> getEmailWarmupReadiness(String programId,) async {
    final response = await getEmailWarmupReadinessWithHttpInfo(programId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupReadinessDto',) as EmailWarmupReadinessDto;
    
    }
    return null;
  }

  /// List scheduled email warmup slots
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> getEmailWarmupSlotsWithHttpInfo(String programId, { int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/slots'
      .replaceAll('{programId}', programId);

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

  /// List scheduled email warmup slots
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<EmailWarmupSendSlotPageDto?> getEmailWarmupSlots(String programId, { int? page, int? size, }) async {
    final response = await getEmailWarmupSlotsWithHttpInfo(programId,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupSendSlotPageDto',) as EmailWarmupSendSlotPageDto;
    
    }
    return null;
  }

  /// Get email warmup sender capacity, included credits, and billable usage
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEmailWarmupUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/usage';

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

  /// Get email warmup sender capacity, included credits, and billable usage
  Future<EmailWarmupUsageSummaryDto?> getEmailWarmupUsage() async {
    final response = await getEmailWarmupUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupUsageSummaryDto',) as EmailWarmupUsageSummaryDto;
    
    }
    return null;
  }

  /// Pause an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> pauseEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/pause'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

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

  /// Pause an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<EmailWarmupProgramDto?> pauseEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await pauseEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Resume an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> resumeEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/resume'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

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

  /// Resume an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<EmailWarmupProgramDto?> resumeEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await resumeEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Retry a system-paused email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> retryEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/retry'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

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

  /// Retry a system-paused email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<EmailWarmupProgramDto?> retryEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await retryEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Start an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> startEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/start'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

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

  /// Start an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<EmailWarmupProgramDto?> startEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await startEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Stop an email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<Response> stopEmailWarmupProgramWithHttpInfo(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}/stop'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = emailWarmupProgramCommandOptions;

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

  /// Stop an email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [EmailWarmupProgramCommandOptions] emailWarmupProgramCommandOptions (required):
  Future<EmailWarmupProgramDto?> stopEmailWarmupProgram(String programId, EmailWarmupProgramCommandOptions emailWarmupProgramCommandOptions,) async {
    final response = await stopEmailWarmupProgramWithHttpInfo(programId, emailWarmupProgramCommandOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Update a draft email warmup program
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [UpdateEmailWarmupProgramOptions] updateEmailWarmupProgramOptions (required):
  Future<Response> updateEmailWarmupProgramWithHttpInfo(String programId, UpdateEmailWarmupProgramOptions updateEmailWarmupProgramOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/{programId}'
      .replaceAll('{programId}', programId);

    // ignore: prefer_final_locals
    Object? postBody = updateEmailWarmupProgramOptions;

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

  /// Update a draft email warmup program
  ///
  /// Parameters:
  ///
  /// * [String] programId (required):
  ///
  /// * [UpdateEmailWarmupProgramOptions] updateEmailWarmupProgramOptions (required):
  Future<EmailWarmupProgramDto?> updateEmailWarmupProgram(String programId, UpdateEmailWarmupProgramOptions updateEmailWarmupProgramOptions,) async {
    final response = await updateEmailWarmupProgramWithHttpInfo(programId, updateEmailWarmupProgramOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupProgramDto',) as EmailWarmupProgramDto;
    
    }
    return null;
  }

  /// Update purchased email warmup sender seats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateEmailWarmupSenderSeatsOptions] updateEmailWarmupSenderSeatsOptions (required):
  Future<Response> updateEmailWarmupSenderSeatsWithHttpInfo(UpdateEmailWarmupSenderSeatsOptions updateEmailWarmupSenderSeatsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/email-warmup/programs/sender-seats';

    // ignore: prefer_final_locals
    Object? postBody = updateEmailWarmupSenderSeatsOptions;

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

  /// Update purchased email warmup sender seats
  ///
  /// Parameters:
  ///
  /// * [UpdateEmailWarmupSenderSeatsOptions] updateEmailWarmupSenderSeatsOptions (required):
  Future<EmailWarmupUsageSummaryDto?> updateEmailWarmupSenderSeats(UpdateEmailWarmupSenderSeatsOptions updateEmailWarmupSenderSeatsOptions,) async {
    final response = await updateEmailWarmupSenderSeatsWithHttpInfo(updateEmailWarmupSenderSeatsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailWarmupUsageSummaryDto',) as EmailWarmupUsageSummaryDto;
    
    }
    return null;
  }
}
