//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DevicePreviewsControllerApi {
  DevicePreviewsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a running device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CancelDevicePreviewRunOptions] cancelDevicePreviewRunOptions:
  Future<Response> cancelDevicePreviewRunWithHttpInfo(String runId, { CancelDevicePreviewRunOptions? cancelDevicePreviewRunOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/cancel'
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody = cancelDevicePreviewRunOptions;

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

  /// Cancel a running device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CancelDevicePreviewRunOptions] cancelDevicePreviewRunOptions:
  Future<CancelDevicePreviewRunResult?> cancelDevicePreviewRun(String runId, { CancelDevicePreviewRunOptions? cancelDevicePreviewRunOptions, }) async {
    final response = await cancelDevicePreviewRunWithHttpInfo(runId,  cancelDevicePreviewRunOptions: cancelDevicePreviewRunOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CancelDevicePreviewRunResult',) as CancelDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFeedbackOptions] createDevicePreviewFeedbackOptions (required):
  Future<Response> createDevicePreviewFeedbackWithHttpInfo(CreateDevicePreviewFeedbackOptions createDevicePreviewFeedbackOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewFeedbackOptions;

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

  /// Create device preview feedback
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFeedbackOptions] createDevicePreviewFeedbackOptions (required):
  Future<DevicePreviewFeedbackDto?> createDevicePreviewFeedback(CreateDevicePreviewFeedbackOptions createDevicePreviewFeedbackOptions,) async {
    final response = await createDevicePreviewFeedbackWithHttpInfo(createDevicePreviewFeedbackOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }

  /// Create a device preview folder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFolderOptions] createDevicePreviewFolderOptions (required):
  Future<Response> createDevicePreviewFolderWithHttpInfo(CreateDevicePreviewFolderOptions createDevicePreviewFolderOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewFolderOptions;

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

  /// Create a device preview folder
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFolderOptions] createDevicePreviewFolderOptions (required):
  Future<DevicePreviewFolderDto?> createDevicePreviewFolder(CreateDevicePreviewFolderOptions createDevicePreviewFolderOptions,) async {
    final response = await createDevicePreviewFolderWithHttpInfo(createDevicePreviewFolderOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFolderDto',) as DevicePreviewFolderDto;
    
    }
    return null;
  }

  /// Create a temporary email address for device preview import
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewIngestAddressOptions] createDevicePreviewIngestAddressOptions:
  Future<Response> createDevicePreviewImportAddressWithHttpInfo({ CreateDevicePreviewIngestAddressOptions? createDevicePreviewIngestAddressOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import-addresses';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewIngestAddressOptions;

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

  /// Create a temporary email address for device preview import
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewIngestAddressOptions] createDevicePreviewIngestAddressOptions:
  Future<DevicePreviewIngestAddressDto?> createDevicePreviewImportAddress({ CreateDevicePreviewIngestAddressOptions? createDevicePreviewIngestAddressOptions, }) async {
    final response = await createDevicePreviewImportAddressWithHttpInfo( createDevicePreviewIngestAddressOptions: createDevicePreviewIngestAddressOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewIngestAddressDto',) as DevicePreviewIngestAddressDto;
    
    }
    return null;
  }

  /// Create a device preview profile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewProfileOptions] createDevicePreviewProfileOptions (required):
  Future<Response> createDevicePreviewProfileWithHttpInfo(CreateDevicePreviewProfileOptions createDevicePreviewProfileOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/profiles';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewProfileOptions;

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

  /// Create a device preview profile
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewProfileOptions] createDevicePreviewProfileOptions (required):
  Future<DevicePreviewProfileDto?> createDevicePreviewProfile(CreateDevicePreviewProfileOptions createDevicePreviewProfileOptions,) async {
    final response = await createDevicePreviewProfileWithHttpInfo(createDevicePreviewProfileOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewProfileDto',) as DevicePreviewProfileDto;
    
    }
    return null;
  }

  /// Create a new device preview run for an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<Response> createDevicePreviewRunWithHttpInfo(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewOptions;

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

  /// Create a new device preview run for an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRun(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    final response = await createDevicePreviewRunWithHttpInfo(emailId,  createDevicePreviewOptions: createDevicePreviewOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a device preview run from an HTML, EML, or ZIP file
  ///
  /// Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file.
  ///
  /// * [String] subject:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [List<String>] providers:
  ///   Legacy web-provider keys to render.
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [bool] emailAudit:
  ///
  /// * [bool] domainMonitor:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] folderId:
  Future<Response> createDevicePreviewRunFromFileWithHttpInfo(MultipartFile file, { String? subject, String? from, String? to, String? sourceAlias, String? externalId, List<String>? providers, bool? allTargets, List<String>? targets, bool? emailAudit, bool? domainMonitor, String? senderDomain, String? folderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import/file';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (sourceAlias != null) {
      queryParams.addAll(_queryParams('', 'sourceAlias', sourceAlias));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('multi', 'providers', providers));
    }
    if (allTargets != null) {
      queryParams.addAll(_queryParams('', 'allTargets', allTargets));
    }
    if (targets != null) {
      queryParams.addAll(_queryParams('multi', 'targets', targets));
    }
    if (emailAudit != null) {
      queryParams.addAll(_queryParams('', 'emailAudit', emailAudit));
    }
    if (domainMonitor != null) {
      queryParams.addAll(_queryParams('', 'domainMonitor', domainMonitor));
    }
    if (senderDomain != null) {
      queryParams.addAll(_queryParams('', 'senderDomain', senderDomain));
    }
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Create a device preview run from an HTML, EML, or ZIP file
  ///
  /// Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   An .html, .htm, or .eml file, or a .zip archive containing exactly one supported file.
  ///
  /// * [String] subject:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [List<String>] providers:
  ///   Legacy web-provider keys to render.
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [bool] emailAudit:
  ///
  /// * [bool] domainMonitor:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] folderId:
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRunFromFile(MultipartFile file, { String? subject, String? from, String? to, String? sourceAlias, String? externalId, List<String>? providers, bool? allTargets, List<String>? targets, bool? emailAudit, bool? domainMonitor, String? senderDomain, String? folderId, }) async {
    final response = await createDevicePreviewRunFromFileWithHttpInfo(file,  subject: subject, from: from, to: to, sourceAlias: sourceAlias, externalId: externalId, providers: providers, allTargets: allTargets, targets: targets, emailAudit: emailAudit, domainMonitor: domainMonitor, senderDomain: senderDomain, folderId: folderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a device preview run from HTML
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewHtmlImportOptions] createDevicePreviewHtmlImportOptions (required):
  Future<Response> createDevicePreviewRunFromHtmlImportWithHttpInfo(CreateDevicePreviewHtmlImportOptions createDevicePreviewHtmlImportOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import/html';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewHtmlImportOptions;

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

  /// Create a device preview run from HTML
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewHtmlImportOptions] createDevicePreviewHtmlImportOptions (required):
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRunFromHtmlImport(CreateDevicePreviewHtmlImportOptions createDevicePreviewHtmlImportOptions,) async {
    final response = await createDevicePreviewRunFromHtmlImportWithHttpInfo(createDevicePreviewHtmlImportOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a device preview run from imported raw MIME
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewImportOptions] createDevicePreviewImportOptions (required):
  Future<Response> createDevicePreviewRunFromImportWithHttpInfo(CreateDevicePreviewImportOptions createDevicePreviewImportOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewImportOptions;

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

  /// Create a device preview run from imported raw MIME
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewImportOptions] createDevicePreviewImportOptions (required):
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRunFromImport(CreateDevicePreviewImportOptions createDevicePreviewImportOptions,) async {
    final response = await createDevicePreviewRunFromImportWithHttpInfo(createDevicePreviewImportOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a device preview run from multipart EML upload
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [String] folderId:
  Future<Response> createDevicePreviewRunFromMultipartImportWithHttpInfo(MultipartFile file, { String? sourceAlias, String? externalId, bool? allTargets, List<String>? targets, String? folderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import/multipart';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourceAlias != null) {
      queryParams.addAll(_queryParams('', 'sourceAlias', sourceAlias));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (allTargets != null) {
      queryParams.addAll(_queryParams('', 'allTargets', allTargets));
    }
    if (targets != null) {
      queryParams.addAll(_queryParams('multi', 'targets', targets));
    }
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Create a device preview run from multipart EML upload
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [String] folderId:
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRunFromMultipartImport(MultipartFile file, { String? sourceAlias, String? externalId, bool? allTargets, List<String>? targets, String? folderId, }) async {
    final response = await createDevicePreviewRunFromMultipartImportWithHttpInfo(file,  sourceAlias: sourceAlias, externalId: externalId, allTargets: allTargets, targets: targets, folderId: folderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a device preview run from raw MIME bytes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [String] folderId:
  Future<Response> createDevicePreviewRunFromRawImportWithHttpInfo({ String? sourceAlias, String? externalId, bool? allTargets, List<String>? targets, String? folderId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import/raw';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourceAlias != null) {
      queryParams.addAll(_queryParams('', 'sourceAlias', sourceAlias));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (allTargets != null) {
      queryParams.addAll(_queryParams('', 'allTargets', allTargets));
    }
    if (targets != null) {
      queryParams.addAll(_queryParams('multi', 'targets', targets));
    }
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }

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

  /// Create a device preview run from raw MIME bytes
  ///
  /// Parameters:
  ///
  /// * [String] sourceAlias:
  ///
  /// * [String] externalId:
  ///
  /// * [bool] allTargets:
  ///   Render every currently configured target.
  ///
  /// * [List<String>] targets:
  ///   Device preview target keys to render.
  ///
  /// * [String] folderId:
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRunFromRawImport({ String? sourceAlias, String? externalId, bool? allTargets, List<String>? targets, String? folderId, }) async {
    final response = await createDevicePreviewRunFromRawImportWithHttpInfo( sourceAlias: sourceAlias, externalId: externalId, allTargets: allTargets, targets: targets, folderId: folderId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create a share link for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CreateDevicePreviewShareLinkOptions] createDevicePreviewShareLinkOptions:
  Future<Response> createDevicePreviewShareLinkWithHttpInfo(String runId, { CreateDevicePreviewShareLinkOptions? createDevicePreviewShareLinkOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/share-links'
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewShareLinkOptions;

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

  /// Create a share link for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CreateDevicePreviewShareLinkOptions] createDevicePreviewShareLinkOptions:
  Future<DevicePreviewShareLinkDto?> createDevicePreviewShareLink(String runId, { CreateDevicePreviewShareLinkOptions? createDevicePreviewShareLinkOptions, }) async {
    final response = await createDevicePreviewShareLinkWithHttpInfo(runId,  createDevicePreviewShareLinkOptions: createDevicePreviewShareLinkOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewShareLinkDto',) as DevicePreviewShareLinkDto;
    
    }
    return null;
  }

  /// Delete a folder, preserving renders and child folders
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<Response> deleteDevicePreviewFolderWithHttpInfo(String folderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders/{folderId}'
      .replaceAll('{folderId}', folderId);

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

  /// Delete a folder, preserving renders and child folders
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<DeleteDevicePreviewFolderResult?> deleteDevicePreviewFolder(String folderId,) async {
    final response = await deleteDevicePreviewFolderWithHttpInfo(folderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDevicePreviewFolderResult',) as DeleteDevicePreviewFolderResult;
    
    }
    return null;
  }

  /// Delete a device preview profile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  Future<Response> deleteDevicePreviewProfileWithHttpInfo(String profileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/profiles/{profileId}'
      .replaceAll('{profileId}', profileId);

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

  /// Delete a device preview profile
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  Future<DeleteDevicePreviewProfileResult?> deleteDevicePreviewProfile(String profileId,) async {
    final response = await deleteDevicePreviewProfileWithHttpInfo(profileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDevicePreviewProfileResult',) as DeleteDevicePreviewProfileResult;
    
    }
    return null;
  }

  /// Delete local device preview run data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> deleteDevicePreviewRunWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}'
      .replaceAll('{runId}', runId);

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

  /// Delete local device preview run data
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DeleteDevicePreviewRunResult?> deleteDevicePreviewRun(String runId,) async {
    final response = await deleteDevicePreviewRunWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDevicePreviewRunResult',) as DeleteDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Revoke a device preview share link
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] shareLinkId (required):
  Future<Response> deleteDevicePreviewShareLinkWithHttpInfo(String shareLinkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/share-links/{shareLinkId}'
      .replaceAll('{shareLinkId}', shareLinkId);

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

  /// Revoke a device preview share link
  ///
  /// Parameters:
  ///
  /// * [String] shareLinkId (required):
  Future<DeleteDevicePreviewShareLinkResult?> deleteDevicePreviewShareLink(String shareLinkId,) async {
    final response = await deleteDevicePreviewShareLinkWithHttpInfo(shareLinkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDevicePreviewShareLinkResult',) as DeleteDevicePreviewShareLinkResult;
    
    }
    return null;
  }

  /// Download the original RFC822 email for a device preview submission
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionId (required):
  Future<Response> downloadDevicePreviewEmailSubmissionSourceEmailWithHttpInfo(String submissionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-submissions/{submissionId}/source-email/raw'
      .replaceAll('{submissionId}', submissionId);

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

  /// Download the original RFC822 email for a device preview submission
  ///
  /// Parameters:
  ///
  /// * [String] submissionId (required):
  Future<MultipartFile?> downloadDevicePreviewEmailSubmissionSourceEmail(String submissionId,) async {
    final response = await downloadDevicePreviewEmailSubmissionSourceEmailWithHttpInfo(submissionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Download the original RFC822 email for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> downloadDevicePreviewRunSourceEmailWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/source-email/raw'
      .replaceAll('{runId}', runId);

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

  /// Download the original RFC822 email for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<MultipartFile?> downloadDevicePreviewRunSourceEmail(String runId,) async {
    final response = await downloadDevicePreviewRunSourceEmailWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Return active run for email or create one when none exists
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<Response> ensureDevicePreviewRunWithHttpInfo(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews/latest'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewOptions;

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

  /// Return active run for email or create one when none exists
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<CreateDevicePreviewRunResult?> ensureDevicePreviewRun(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    final response = await ensureDevicePreviewRunWithHttpInfo(emailId,  createDevicePreviewOptions: createDevicePreviewOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Return account device preview email domain setup or create one
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicePreviewEmailDomainOrCreateWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-domain';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Return account device preview email domain setup or create one
  Future<DevicePreviewAccountSettingsDto?> getDevicePreviewEmailDomainOrCreate() async {
    final response = await getDevicePreviewEmailDomainOrCreateWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewAccountSettingsDto',) as DevicePreviewAccountSettingsDto;
    
    }
    return null;
  }

  /// List device preview runs created from account email domains
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<Response> getDevicePreviewEmailRunsWithHttpInfo(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, bool? hydrateThumbnail, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-runs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'since', since));
    if (emailDomainId != null) {
      queryParams.addAll(_queryParams('', 'emailDomainId', emailDomainId));
    }
    if (profileId != null) {
      queryParams.addAll(_queryParams('', 'profileId', profileId));
    }
    if (localPart != null) {
      queryParams.addAll(_queryParams('', 'localPart', localPart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
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

  /// List device preview runs created from account email domains
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<List<DevicePreviewRunDto>?> getDevicePreviewEmailRuns(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, bool? hydrateThumbnail, }) async {
    final response = await getDevicePreviewEmailRunsWithHttpInfo(since,  emailDomainId: emailDomainId, profileId: profileId, localPart: localPart, limit: limit, hydrateThumbnail: hydrateThumbnail, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewRunDto>') as List)
        .cast<DevicePreviewRunDto>()
        .toList();

    }
    return null;
  }

  /// Get the original email content for a device preview submission
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] submissionId (required):
  Future<Response> getDevicePreviewEmailSubmissionSourceEmailWithHttpInfo(String submissionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-submissions/{submissionId}/source-email'
      .replaceAll('{submissionId}', submissionId);

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

  /// Get the original email content for a device preview submission
  ///
  /// Parameters:
  ///
  /// * [String] submissionId (required):
  Future<DevicePreviewSourceEmailDto?> getDevicePreviewEmailSubmissionSourceEmail(String submissionId,) async {
    final response = await getDevicePreviewEmailSubmissionSourceEmailWithHttpInfo(submissionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewSourceEmailDto',) as DevicePreviewSourceEmailDto;
    
    }
    return null;
  }

  /// List received device preview email submissions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [String] recipientEmailAddress:
  Future<Response> getDevicePreviewEmailSubmissionsWithHttpInfo(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, String? recipientEmailAddress, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-submissions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'since', since));
    if (emailDomainId != null) {
      queryParams.addAll(_queryParams('', 'emailDomainId', emailDomainId));
    }
    if (profileId != null) {
      queryParams.addAll(_queryParams('', 'profileId', profileId));
    }
    if (localPart != null) {
      queryParams.addAll(_queryParams('', 'localPart', localPart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (recipientEmailAddress != null) {
      queryParams.addAll(_queryParams('', 'recipientEmailAddress', recipientEmailAddress));
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

  /// List received device preview email submissions
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [String] recipientEmailAddress:
  Future<List<DevicePreviewEmailSubmissionDto>?> getDevicePreviewEmailSubmissions(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, String? recipientEmailAddress, }) async {
    final response = await getDevicePreviewEmailSubmissionsWithHttpInfo(since,  emailDomainId: emailDomainId, profileId: profileId, localPart: localPart, limit: limit, recipientEmailAddress: recipientEmailAddress, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewEmailSubmissionDto>') as List)
        .cast<DevicePreviewEmailSubmissionDto>()
        .toList();

    }
    return null;
  }

  /// Get a single device preview feedback item
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  Future<Response> getDevicePreviewFeedbackWithHttpInfo(String feedbackId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback/{feedbackId}'
      .replaceAll('{feedbackId}', feedbackId);

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

  /// Get a single device preview feedback item
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  Future<DevicePreviewFeedbackDto?> getDevicePreviewFeedback(String feedbackId,) async {
    final response = await getDevicePreviewFeedbackWithHttpInfo(feedbackId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }

  /// List device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] source_:
  ///
  /// * [String] runId:
  ///
  /// * [String] status:
  ///
  /// * [String] provider:
  ///
  /// * [String] category:
  ///
  /// * [String] search:
  Future<Response> getDevicePreviewFeedbackItemsWithHttpInfo({ int? page, int? size, String? source_, String? runId, String? status, String? provider, String? category, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback';

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
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (runId != null) {
      queryParams.addAll(_queryParams('', 'runId', runId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List device preview feedback
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] source_:
  ///
  /// * [String] runId:
  ///
  /// * [String] status:
  ///
  /// * [String] provider:
  ///
  /// * [String] category:
  ///
  /// * [String] search:
  Future<DevicePreviewFeedbackListDto?> getDevicePreviewFeedbackItems({ int? page, int? size, String? source_, String? runId, String? status, String? provider, String? category, String? search, }) async {
    final response = await getDevicePreviewFeedbackItemsWithHttpInfo( page: page, size: size, source_: source_, runId: runId, status: status, provider: provider, category: category, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackListDto',) as DevicePreviewFeedbackListDto;
    
    }
    return null;
  }

  /// Get a device preview folder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<Response> getDevicePreviewFolderWithHttpInfo(String folderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders/{folderId}'
      .replaceAll('{folderId}', folderId);

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

  /// Get a device preview folder
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  Future<DevicePreviewFolderDto?> getDevicePreviewFolder(String folderId,) async {
    final response = await getDevicePreviewFolderWithHttpInfo(folderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFolderDto',) as DevicePreviewFolderDto;
    
    }
    return null;
  }

  /// List device preview folders
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicePreviewFoldersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders';

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

  /// List device preview folders
  Future<List<DevicePreviewFolderDto>?> getDevicePreviewFolders() async {
    final response = await getDevicePreviewFoldersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewFolderDto>') as List)
        .cast<DevicePreviewFolderDto>()
        .toList();

    }
    return null;
  }

  /// Get temporary device preview import address status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<Response> getDevicePreviewImportAddressWithHttpInfo(String sessionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/import-addresses/{sessionId}'
      .replaceAll('{sessionId}', sessionId);

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

  /// Get temporary device preview import address status
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<DevicePreviewIngestAddressDto?> getDevicePreviewImportAddress(String sessionId,) async {
    final response = await getDevicePreviewImportAddressWithHttpInfo(sessionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewIngestAddressDto',) as DevicePreviewIngestAddressDto;
    
    }
    return null;
  }

  /// Get native device preview target availability
  ///
  /// Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicePreviewNativeTargetAvailabilityWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/native-targets/availability';

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

  /// Get native device preview target availability
  ///
  /// Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.
  Future<DevicePreviewNativeTargetAvailabilityListDto?> getDevicePreviewNativeTargetAvailability() async {
    final response = await getDevicePreviewNativeTargetAvailabilityWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewNativeTargetAvailabilityListDto',) as DevicePreviewNativeTargetAvailabilityListDto;
    
    }
    return null;
  }

  /// Get a device preview profile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  Future<Response> getDevicePreviewProfileWithHttpInfo(String profileId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/profiles/{profileId}'
      .replaceAll('{profileId}', profileId);

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

  /// Get a device preview profile
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  Future<DevicePreviewProfileDto?> getDevicePreviewProfile(String profileId,) async {
    final response = await getDevicePreviewProfileWithHttpInfo(profileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewProfileDto',) as DevicePreviewProfileDto;
    
    }
    return null;
  }

  /// List device preview profiles
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicePreviewProfilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/profiles';

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

  /// List device preview profiles
  Future<List<DevicePreviewProfileDto>?> getDevicePreviewProfiles() async {
    final response = await getDevicePreviewProfilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewProfileDto>') as List)
        .cast<DevicePreviewProfileDto>()
        .toList();

    }
    return null;
  }

  /// Get device preview run status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewRunWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}'
      .replaceAll('{runId}', runId);

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

  /// Get device preview run status
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DevicePreviewRunDto?> getDevicePreviewRun(String runId,) async {
    final response = await getDevicePreviewRunWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewRunDto',) as DevicePreviewRunDto;
    
    }
    return null;
  }

  /// Get provider-level progress for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] provider (required):
  Future<Response> getDevicePreviewRunProviderProgressWithHttpInfo(String runId, String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/providers/{provider}'
      .replaceAll('{runId}', runId)
      .replaceAll('{provider}', provider);

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

  /// Get provider-level progress for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] provider (required):
  Future<DevicePreviewProviderProgressDto?> getDevicePreviewRunProviderProgress(String runId, String provider,) async {
    final response = await getDevicePreviewRunProviderProgressWithHttpInfo(runId, provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewProviderProgressDto',) as DevicePreviewProviderProgressDto;
    
    }
    return null;
  }

  /// Get device preview run results
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewRunResultsWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/results'
      .replaceAll('{runId}', runId);

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

  /// Get device preview run results
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DevicePreviewRunResultsDto?> getDevicePreviewRunResults(String runId,) async {
    final response = await getDevicePreviewRunResultsWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewRunResultsDto',) as DevicePreviewRunResultsDto;
    
    }
    return null;
  }

  /// Get a device preview screenshot image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] screenshotId (required):
  Future<Response> getDevicePreviewRunScreenshotWithHttpInfo(String runId, String screenshotId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/screenshots/{screenshotId}/image'
      .replaceAll('{runId}', runId)
      .replaceAll('{screenshotId}', screenshotId);

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

  /// Get a device preview screenshot image
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] screenshotId (required):
  Future<String?> getDevicePreviewRunScreenshot(String runId, String screenshotId,) async {
    final response = await getDevicePreviewRunScreenshotWithHttpInfo(runId, screenshotId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get the original email content for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewRunSourceEmailWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/source-email'
      .replaceAll('{runId}', runId);

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

  /// Get the original email content for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DevicePreviewSourceEmailDto?> getDevicePreviewRunSourceEmail(String runId,) async {
    final response = await getDevicePreviewRunSourceEmailWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewSourceEmailDto',) as DevicePreviewSourceEmailDto;
    
    }
    return null;
  }

  /// List previous device preview runs for an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<Response> getDevicePreviewRunsWithHttpInfo(String emailId, { int? limit, bool? hydrateThumbnail, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
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

  /// List previous device preview runs for an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<List<DevicePreviewRunDto>?> getDevicePreviewRuns(String emailId, { int? limit, bool? hydrateThumbnail, }) async {
    final response = await getDevicePreviewRunsWithHttpInfo(emailId,  limit: limit, hydrateThumbnail: hydrateThumbnail, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewRunDto>') as List)
        .cast<DevicePreviewRunDto>()
        .toList();

    }
    return null;
  }

  /// List previous device preview runs for account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<Response> getDevicePreviewRunsForAccountWithHttpInfo({ int? limit, bool? hydrateThumbnail, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
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

  /// List previous device preview runs for account
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<List<DevicePreviewRunDto>?> getDevicePreviewRunsForAccount({ int? limit, bool? hydrateThumbnail, }) async {
    final response = await getDevicePreviewRunsForAccountWithHttpInfo( limit: limit, hydrateThumbnail: hydrateThumbnail, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewRunDto>') as List)
        .cast<DevicePreviewRunDto>()
        .toList();

    }
    return null;
  }

  /// List previous device preview runs for account in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  ///
  /// * [String] folderId:
  ///
  /// * [bool] unfiledOnly:
  ///
  /// * [String] emailId:
  Future<Response> getDevicePreviewRunsForAccountOffsetPaginatedWithHttpInfo({ int? page, int? size, String? sort, bool? hydrateThumbnail, String? folderId, bool? unfiledOnly, String? emailId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/offset-paginated';

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
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
    }
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }
    if (unfiledOnly != null) {
      queryParams.addAll(_queryParams('', 'unfiledOnly', unfiledOnly));
    }
    if (emailId != null) {
      queryParams.addAll(_queryParams('', 'emailId', emailId));
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

  /// List previous device preview runs for account in paginated form
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  ///
  /// * [String] folderId:
  ///
  /// * [bool] unfiledOnly:
  ///
  /// * [String] emailId:
  Future<PageDevicePreviewRunProjection?> getDevicePreviewRunsForAccountOffsetPaginated({ int? page, int? size, String? sort, bool? hydrateThumbnail, String? folderId, bool? unfiledOnly, String? emailId, }) async {
    final response = await getDevicePreviewRunsForAccountOffsetPaginatedWithHttpInfo( page: page, size: size, sort: sort, hydrateThumbnail: hydrateThumbnail, folderId: folderId, unfiledOnly: unfiledOnly, emailId: emailId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDevicePreviewRunProjection',) as PageDevicePreviewRunProjection;
    
    }
    return null;
  }

  /// List previous device preview runs for an email in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<Response> getDevicePreviewRunsOffsetPaginatedWithHttpInfo(String emailId, { int? page, int? size, String? sort, bool? hydrateThumbnail, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews/offset-paginated'
      .replaceAll('{emailId}', emailId);

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
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
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

  /// List previous device preview runs for an email in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<PageDevicePreviewRunProjection?> getDevicePreviewRunsOffsetPaginated(String emailId, { int? page, int? size, String? sort, bool? hydrateThumbnail, }) async {
    final response = await getDevicePreviewRunsOffsetPaginatedWithHttpInfo(emailId,  page: page, size: size, sort: sort, hydrateThumbnail: hydrateThumbnail, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDevicePreviewRunProjection',) as PageDevicePreviewRunProjection;
    
    }
    return null;
  }

  /// List share links for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewShareLinksWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/share-links'
      .replaceAll('{runId}', runId);

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

  /// List share links for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<List<DevicePreviewShareLinkDto>?> getDevicePreviewShareLinks(String runId,) async {
    final response = await getDevicePreviewShareLinksWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewShareLinkDto>') as List)
        .cast<DevicePreviewShareLinkDto>()
        .toList();

    }
    return null;
  }

  /// Get a public shared device preview result
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<Response> getDevicePreviewSharedResultWithHttpInfo(String shareToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/share/{shareToken}'
      .replaceAll('{shareToken}', shareToken);

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

  /// Get a public shared device preview result
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<DevicePreviewSharedResultDto?> getDevicePreviewSharedResult(String shareToken,) async {
    final response = await getDevicePreviewSharedResultWithHttpInfo(shareToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewSharedResultDto',) as DevicePreviewSharedResultDto;
    
    }
    return null;
  }

  /// Get a public shared device preview screenshot image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  ///
  /// * [String] screenshotId (required):
  Future<Response> getDevicePreviewSharedResultScreenshotWithHttpInfo(String shareToken, String screenshotId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/share/{shareToken}/screenshots/{screenshotId}/image'
      .replaceAll('{shareToken}', shareToken)
      .replaceAll('{screenshotId}', screenshotId);

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

  /// Get a public shared device preview screenshot image
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  ///
  /// * [String] screenshotId (required):
  Future<String?> getDevicePreviewSharedResultScreenshot(String shareToken, String screenshotId,) async {
    final response = await getDevicePreviewSharedResultScreenshotWithHttpInfo(shareToken, screenshotId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// List device preview targets
  ///
  /// Returns visible native device preview target metadata without worker availability, queue, or health fields.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicePreviewTargetsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/device-preview-targets';

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

  /// List device preview targets
  ///
  /// Returns visible native device preview target metadata without worker availability, queue, or health fields.
  Future<DevicePreviewNativeTargetListDto?> getDevicePreviewTargets() async {
    final response = await getDevicePreviewTargetsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewNativeTargetListDto',) as DevicePreviewNativeTargetListDto;
    
    }
    return null;
  }

  /// Move device preview runs to a folder or Unfiled
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MoveDevicePreviewRunsOptions] moveDevicePreviewRunsOptions (required):
  Future<Response> moveDevicePreviewRunsWithHttpInfo(MoveDevicePreviewRunsOptions moveDevicePreviewRunsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders/runs';

    // ignore: prefer_final_locals
    Object? postBody = moveDevicePreviewRunsOptions;

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

  /// Move device preview runs to a folder or Unfiled
  ///
  /// Parameters:
  ///
  /// * [MoveDevicePreviewRunsOptions] moveDevicePreviewRunsOptions (required):
  Future<MoveDevicePreviewRunsResult?> moveDevicePreviewRuns(MoveDevicePreviewRunsOptions moveDevicePreviewRunsOptions,) async {
    final response = await moveDevicePreviewRunsWithHttpInfo(moveDevicePreviewRunsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveDevicePreviewRunsResult',) as MoveDevicePreviewRunsResult;
    
    }
    return null;
  }

  /// Rerun selected device preview targets in the same run
  ///
  /// Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [RerunDevicePreviewTargetsOptions] rerunDevicePreviewTargetsOptions (required):
  Future<Response> rerunDevicePreviewTargetsWithHttpInfo(String runId, RerunDevicePreviewTargetsOptions rerunDevicePreviewTargetsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/targets/rerun'
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody = rerunDevicePreviewTargetsOptions;

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

  /// Rerun selected device preview targets in the same run
  ///
  /// Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [RerunDevicePreviewTargetsOptions] rerunDevicePreviewTargetsOptions (required):
  Future<RerunDevicePreviewTargetsResult?> rerunDevicePreviewTargets(String runId, RerunDevicePreviewTargetsOptions rerunDevicePreviewTargetsOptions,) async {
    final response = await rerunDevicePreviewTargetsWithHttpInfo(runId, rerunDevicePreviewTargetsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RerunDevicePreviewTargetsResult',) as RerunDevicePreviewTargetsResult;
    
    }
    return null;
  }

  /// Update account device preview email subdomain
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateDevicePreviewIngestDomainOptions] updateDevicePreviewIngestDomainOptions (required):
  Future<Response> updateDevicePreviewEmailDomainSubdomainWithHttpInfo(UpdateDevicePreviewIngestDomainOptions updateDevicePreviewIngestDomainOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-domain/subdomain';

    // ignore: prefer_final_locals
    Object? postBody = updateDevicePreviewIngestDomainOptions;

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

  /// Update account device preview email subdomain
  ///
  /// Parameters:
  ///
  /// * [UpdateDevicePreviewIngestDomainOptions] updateDevicePreviewIngestDomainOptions (required):
  Future<DevicePreviewAccountSettingsDto?> updateDevicePreviewEmailDomainSubdomain(UpdateDevicePreviewIngestDomainOptions updateDevicePreviewIngestDomainOptions,) async {
    final response = await updateDevicePreviewEmailDomainSubdomainWithHttpInfo(updateDevicePreviewIngestDomainOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewAccountSettingsDto',) as DevicePreviewAccountSettingsDto;
    
    }
    return null;
  }

  /// Update device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  ///
  /// * [UpdateDevicePreviewFeedbackOptions] updateDevicePreviewFeedbackOptions (required):
  Future<Response> updateDevicePreviewFeedbackWithHttpInfo(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback/{feedbackId}'
      .replaceAll('{feedbackId}', feedbackId);

    // ignore: prefer_final_locals
    Object? postBody = updateDevicePreviewFeedbackOptions;

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

  /// Update device preview feedback
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  ///
  /// * [UpdateDevicePreviewFeedbackOptions] updateDevicePreviewFeedbackOptions (required):
  Future<DevicePreviewFeedbackDto?> updateDevicePreviewFeedback(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions,) async {
    final response = await updateDevicePreviewFeedbackWithHttpInfo(feedbackId, updateDevicePreviewFeedbackOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }

  /// Rename or move a device preview folder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  ///
  /// * [UpdateDevicePreviewFolderOptions] updateDevicePreviewFolderOptions (required):
  Future<Response> updateDevicePreviewFolderWithHttpInfo(String folderId, UpdateDevicePreviewFolderOptions updateDevicePreviewFolderOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/folders/{folderId}'
      .replaceAll('{folderId}', folderId);

    // ignore: prefer_final_locals
    Object? postBody = updateDevicePreviewFolderOptions;

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

  /// Rename or move a device preview folder
  ///
  /// Parameters:
  ///
  /// * [String] folderId (required):
  ///
  /// * [UpdateDevicePreviewFolderOptions] updateDevicePreviewFolderOptions (required):
  Future<DevicePreviewFolderDto?> updateDevicePreviewFolder(String folderId, UpdateDevicePreviewFolderOptions updateDevicePreviewFolderOptions,) async {
    final response = await updateDevicePreviewFolderWithHttpInfo(folderId, updateDevicePreviewFolderOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFolderDto',) as DevicePreviewFolderDto;
    
    }
    return null;
  }

  /// Update a device preview profile
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  ///
  /// * [UpdateDevicePreviewProfileOptions] updateDevicePreviewProfileOptions (required):
  Future<Response> updateDevicePreviewProfileWithHttpInfo(String profileId, UpdateDevicePreviewProfileOptions updateDevicePreviewProfileOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/profiles/{profileId}'
      .replaceAll('{profileId}', profileId);

    // ignore: prefer_final_locals
    Object? postBody = updateDevicePreviewProfileOptions;

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

  /// Update a device preview profile
  ///
  /// Parameters:
  ///
  /// * [String] profileId (required):
  ///
  /// * [UpdateDevicePreviewProfileOptions] updateDevicePreviewProfileOptions (required):
  Future<DevicePreviewProfileDto?> updateDevicePreviewProfile(String profileId, UpdateDevicePreviewProfileOptions updateDevicePreviewProfileOptions,) async {
    final response = await updateDevicePreviewProfileWithHttpInfo(profileId, updateDevicePreviewProfileOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewProfileDto',) as DevicePreviewProfileDto;
    
    }
    return null;
  }

  /// Wait for device preview runs created from account email domains
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<Response> waitForDevicePreviewEmailRunsWithHttpInfo(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, int? timeoutMillis, int? pollIntervalMillis, bool? hydrateThumbnail, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-runs/wait';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'since', since));
    if (emailDomainId != null) {
      queryParams.addAll(_queryParams('', 'emailDomainId', emailDomainId));
    }
    if (profileId != null) {
      queryParams.addAll(_queryParams('', 'profileId', profileId));
    }
    if (localPart != null) {
      queryParams.addAll(_queryParams('', 'localPart', localPart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (timeoutMillis != null) {
      queryParams.addAll(_queryParams('', 'timeoutMillis', timeoutMillis));
    }
    if (pollIntervalMillis != null) {
      queryParams.addAll(_queryParams('', 'pollIntervalMillis', pollIntervalMillis));
    }
    if (hydrateThumbnail != null) {
      queryParams.addAll(_queryParams('', 'hydrateThumbnail', hydrateThumbnail));
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

  /// Wait for device preview runs created from account email domains
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  ///
  /// * [bool] hydrateThumbnail:
  ///   Hydrate each returned run with a nullable primary screenshot thumbnail URL.
  Future<DevicePreviewIngestRunWaitResult?> waitForDevicePreviewEmailRuns(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, int? timeoutMillis, int? pollIntervalMillis, bool? hydrateThumbnail, }) async {
    final response = await waitForDevicePreviewEmailRunsWithHttpInfo(since,  emailDomainId: emailDomainId, profileId: profileId, localPart: localPart, limit: limit, timeoutMillis: timeoutMillis, pollIntervalMillis: pollIntervalMillis, hydrateThumbnail: hydrateThumbnail, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewIngestRunWaitResult',) as DevicePreviewIngestRunWaitResult;
    
    }
    return null;
  }

  /// Wait for received device preview email submissions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  ///
  /// * [String] recipientEmailAddress:
  Future<Response> waitForDevicePreviewEmailSubmissionsWithHttpInfo(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, int? timeoutMillis, int? pollIntervalMillis, String? recipientEmailAddress, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/email-submissions/wait';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'since', since));
    if (emailDomainId != null) {
      queryParams.addAll(_queryParams('', 'emailDomainId', emailDomainId));
    }
    if (profileId != null) {
      queryParams.addAll(_queryParams('', 'profileId', profileId));
    }
    if (localPart != null) {
      queryParams.addAll(_queryParams('', 'localPart', localPart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (timeoutMillis != null) {
      queryParams.addAll(_queryParams('', 'timeoutMillis', timeoutMillis));
    }
    if (pollIntervalMillis != null) {
      queryParams.addAll(_queryParams('', 'pollIntervalMillis', pollIntervalMillis));
    }
    if (recipientEmailAddress != null) {
      queryParams.addAll(_queryParams('', 'recipientEmailAddress', recipientEmailAddress));
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

  /// Wait for received device preview email submissions
  ///
  /// Parameters:
  ///
  /// * [DateTime] since (required):
  ///
  /// * [String] emailDomainId:
  ///
  /// * [String] profileId:
  ///
  /// * [String] localPart:
  ///
  /// * [int] limit:
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  ///
  /// * [String] recipientEmailAddress:
  Future<DevicePreviewEmailSubmissionWaitResult?> waitForDevicePreviewEmailSubmissions(DateTime since, { String? emailDomainId, String? profileId, String? localPart, int? limit, int? timeoutMillis, int? pollIntervalMillis, String? recipientEmailAddress, }) async {
    final response = await waitForDevicePreviewEmailSubmissionsWithHttpInfo(since,  emailDomainId: emailDomainId, profileId: profileId, localPart: localPart, limit: limit, timeoutMillis: timeoutMillis, pollIntervalMillis: pollIntervalMillis, recipientEmailAddress: recipientEmailAddress, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewEmailSubmissionWaitResult',) as DevicePreviewEmailSubmissionWaitResult;
    
    }
    return null;
  }

  /// Wait for device preview run to complete
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  Future<Response> waitForDevicePreviewRunWithHttpInfo(String runId, { int? timeoutMillis, int? pollIntervalMillis, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/wait'
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (timeoutMillis != null) {
      queryParams.addAll(_queryParams('', 'timeoutMillis', timeoutMillis));
    }
    if (pollIntervalMillis != null) {
      queryParams.addAll(_queryParams('', 'pollIntervalMillis', pollIntervalMillis));
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

  /// Wait for device preview run to complete
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [int] timeoutMillis:
  ///
  /// * [int] pollIntervalMillis:
  Future<DevicePreviewRunWaitResult?> waitForDevicePreviewRun(String runId, { int? timeoutMillis, int? pollIntervalMillis, }) async {
    final response = await waitForDevicePreviewRunWithHttpInfo(runId,  timeoutMillis: timeoutMillis, pollIntervalMillis: pollIntervalMillis, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewRunWaitResult',) as DevicePreviewRunWaitResult;
    
    }
    return null;
  }
}
