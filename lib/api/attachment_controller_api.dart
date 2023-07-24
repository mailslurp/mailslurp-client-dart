//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AttachmentControllerApi {
  AttachmentControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete all attachments
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllAttachmentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/attachments';

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

  /// Delete all attachments
  Future<void> deleteAllAttachments() async {
    final response = await deleteAllAttachmentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an attachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> deleteAttachmentWithHttpInfo(String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/{attachmentId}'
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Delete an attachment
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<void> deleteAttachment(String attachmentId,) async {
    final response = await deleteAttachmentWithHttpInfo(attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> downloadAttachmentAsBase64EncodedWithHttpInfo(String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/{attachmentId}/base64'
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<DownloadAttachmentDto?> downloadAttachmentAsBase64Encoded(String attachmentId,) async {
    final response = await downloadAttachmentAsBase64EncodedWithHttpInfo(attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DownloadAttachmentDto',) as DownloadAttachmentDto;
    
    }
    return null;
  }

  /// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> downloadAttachmentAsBytesWithHttpInfo(String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/{attachmentId}/bytes'
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<String?> downloadAttachmentAsBytes(String attachmentId,) async {
    final response = await downloadAttachmentAsBytesWithHttpInfo(attachmentId,);
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

  /// Get an attachment entity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> getAttachmentWithHttpInfo(String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/{attachmentId}'
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get an attachment entity
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<AttachmentEntity?> getAttachment(String attachmentId,) async {
    final response = await getAttachmentWithHttpInfo(attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentEntity',) as AttachmentEntity;
    
    }
    return null;
  }

  /// Get email attachment metadata information
  ///
  /// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> getAttachmentInfoWithHttpInfo(String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/{attachmentId}/metadata'
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get email attachment metadata information
  ///
  /// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<AttachmentMetaData?> getAttachmentInfo(String attachmentId,) async {
    final response = await getAttachmentInfoWithHttpInfo(attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentMetaData',) as AttachmentMetaData;
    
    }
    return null;
  }

  /// Get email attachments
  ///
  /// Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index for list pagination
  ///
  /// * [int] size:
  ///   Optional page size for list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] fileNameFilter:
  ///   Optional file name and content type search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAttachmentsWithHttpInfo({ int? page, int? size, String? sort, String? fileNameFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments';

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
    if (fileNameFilter != null) {
      queryParams.addAll(_queryParams('', 'fileNameFilter', fileNameFilter));
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

  /// Get email attachments
  ///
  /// Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index for list pagination
  ///
  /// * [int] size:
  ///   Optional page size for list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] fileNameFilter:
  ///   Optional file name and content type search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageAttachmentEntity?> getAttachments({ int? page, int? size, String? sort, String? fileNameFilter, DateTime? since, DateTime? before, }) async {
    final response = await getAttachmentsWithHttpInfo( page: page, size: size, sort: sort, fileNameFilter: fileNameFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAttachmentEntity',) as PageAttachmentEntity;
    
    }
    return null;
  }

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentOptions] uploadAttachmentOptions (required):
  Future<Response> uploadAttachmentWithHttpInfo(UploadAttachmentOptions uploadAttachmentOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments';

    // ignore: prefer_final_locals
    Object? postBody = uploadAttachmentOptions;

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

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentOptions] uploadAttachmentOptions (required):
  Future<List<String>?> uploadAttachment(UploadAttachmentOptions uploadAttachmentOptions,) async {
    final response = await uploadAttachmentWithHttpInfo(uploadAttachmentOptions,);
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

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentBytesRequest] uploadAttachmentBytesRequest (required):
  ///
  /// * [String] contentType:
  ///   Optional contentType for file. For instance `application/pdf`
  ///
  /// * [String] filename:
  ///   Optional filename to save upload with
  Future<Response> uploadAttachmentBytesWithHttpInfo(UploadAttachmentBytesRequest uploadAttachmentBytesRequest, { String? contentType, String? filename, }) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/bytes';

    // ignore: prefer_final_locals
    Object? postBody = uploadAttachmentBytesRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filename != null) {
      queryParams.addAll(_queryParams('', 'filename', filename));
    }

    if (contentType != null) {
      headerParams[r'contentType'] = parameterToString(contentType);
    }

    const contentTypes = <String>['application/octet-stream'];


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

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentBytesRequest] uploadAttachmentBytesRequest (required):
  ///
  /// * [String] contentType:
  ///   Optional contentType for file. For instance `application/pdf`
  ///
  /// * [String] filename:
  ///   Optional filename to save upload with
  Future<List<String>?> uploadAttachmentBytes(UploadAttachmentBytesRequest uploadAttachmentBytesRequest, { String? contentType, String? filename, }) async {
    final response = await uploadAttachmentBytesWithHttpInfo(uploadAttachmentBytesRequest,  contentType: contentType, filename: filename, );
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

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///   Optional content type of attachment
  ///
  /// * [String] filename:
  ///   Optional name of file
  ///
  /// * [String] xFilename:
  ///   Optional content type header of attachment
  ///
  /// * [UploadMultipartFormRequest] uploadMultipartFormRequest:
  Future<Response> uploadMultipartFormWithHttpInfo({ String? contentType, String? filename, String? xFilename, UploadMultipartFormRequest? uploadMultipartFormRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/attachments/multipart';

    // ignore: prefer_final_locals
    Object? postBody = uploadMultipartFormRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      queryParams.addAll(_queryParams('', 'contentType', contentType));
    }
    if (filename != null) {
      queryParams.addAll(_queryParams('', 'filename', filename));
    }
    if (xFilename != null) {
      queryParams.addAll(_queryParams('', 'x-filename', xFilename));
    }

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

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Parameters:
  ///
  /// * [String] contentType:
  ///   Optional content type of attachment
  ///
  /// * [String] filename:
  ///   Optional name of file
  ///
  /// * [String] xFilename:
  ///   Optional content type header of attachment
  ///
  /// * [UploadMultipartFormRequest] uploadMultipartFormRequest:
  Future<List<String>?> uploadMultipartForm({ String? contentType, String? filename, String? xFilename, UploadMultipartFormRequest? uploadMultipartFormRequest, }) async {
    final response = await uploadMultipartFormWithHttpInfo( contentType: contentType, filename: filename, xFilename: xFilename, uploadMultipartFormRequest: uploadMultipartFormRequest, );
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
}
