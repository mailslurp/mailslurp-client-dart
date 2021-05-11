//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AttachmentControllerApi {
  AttachmentControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an attachment
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> deleteAttachmentWithHttpInfo(String attachmentId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }

    final path = r'/attachments/{attachmentId}'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete an attachment
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<void> deleteAttachment(String attachmentId) async {
    final response = await deleteAttachmentWithHttpInfo(attachmentId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> downloadAttachmentAsBase64EncodedWithHttpInfo(String attachmentId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }

    final path = r'/attachments/{attachmentId}/base64'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString());

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

  /// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<DownloadAttachmentDto> downloadAttachmentAsBase64Encoded(String attachmentId) async {
    final response = await downloadAttachmentAsBase64EncodedWithHttpInfo(attachmentId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DownloadAttachmentDto') as DownloadAttachmentDto;
        }
    return Future<DownloadAttachmentDto>.value(null);
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
  Future<Response> downloadAttachmentAsBytesWithHttpInfo(String attachmentId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }

    final path = r'/attachments/{attachmentId}/bytes'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString());

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

  /// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<String> downloadAttachmentAsBytes(String attachmentId) async {
    final response = await downloadAttachmentAsBytesWithHttpInfo(attachmentId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
        }
    return Future<String>.value(null);
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
  Future<Response> getAttachmentInfoWithHttpInfo(String attachmentId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }

    final path = r'/attachments/{attachmentId}/metadata'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString());

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

  /// Get email attachment metadata information
  ///
  /// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<AttachmentMetaData> getAttachmentInfo(String attachmentId) async {
    final response = await getAttachmentInfoWithHttpInfo(attachmentId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AttachmentMetaData') as AttachmentMetaData;
        }
    return Future<AttachmentMetaData>.value(null);
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
  ///   Optional page index event list pagination
  ///
  /// * [int] size:
  ///   Optional page size event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAttachmentsWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/attachments';

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

  /// Get email attachments
  ///
  /// Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index event list pagination
  ///
  /// * [int] size:
  ///   Optional page size event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageAttachmentEntity> getAttachments({ int page, int size, String sort }) async {
    final response = await getAttachmentsWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageAttachmentEntity') as PageAttachmentEntity;
        }
    return Future<PageAttachmentEntity>.value(null);
  }

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentOptions] uploadOptions (required):
  ///   uploadOptions
  Future<Response> uploadAttachmentWithHttpInfo(UploadAttachmentOptions uploadOptions) async {
    // Verify required params are set.
    if (uploadOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uploadOptions');
    }

    final path = r'/attachments';

    Object postBody = uploadOptions;

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

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Parameters:
  ///
  /// * [UploadAttachmentOptions] uploadOptions (required):
  ///   uploadOptions
  Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadOptions) async {
    final response = await uploadAttachmentWithHttpInfo(uploadOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] string:
  ///   Optional contentType for file. For instance `application/pdf`
  ///
  /// * [String] filename:
  ///   Optional filename to save upload with
  ///
  /// * [String] byteArray:
  ///   Byte array request body
  Future<Response> uploadAttachmentBytesWithHttpInfo({ String string, String filename, String byteArray }) async {
    // Verify required params are set.

    final path = r'/attachments/bytes';

    Object postBody = byteArray;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (string != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'String', string));
    }
    if (filename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filename', filename));
    }

    final contentTypes = <String>['application/octet-stream'];
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

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Parameters:
  ///
  /// * [String] string:
  ///   Optional contentType for file. For instance `application/pdf`
  ///
  /// * [String] filename:
  ///   Optional filename to save upload with
  ///
  /// * [String] byteArray:
  ///   Byte array request body
  Future<List<String>> uploadAttachmentBytes({ String string, String filename, String byteArray }) async {
    final response = await uploadAttachmentBytesWithHttpInfo( string: string, filename: filename, byteArray: byteArray );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   file
  ///
  /// * [String] contentType:
  ///   Optional content type of attachment
  ///
  /// * [String] filename:
  ///   Optional name of file
  ///
  /// * [String] xFilename:
  ///   Optional content type header of attachment
  Future<Response> uploadMultipartFormWithHttpInfo(MultipartFile file, { String contentType, String filename, String xFilename }) async {
    // Verify required params are set.
    if (file == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: file');
    }

    final path = r'/attachments/multipart';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (contentType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'contentType', contentType));
    }
    if (filename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filename', filename));
    }
    if (xFilename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'x-filename', xFilename));
    }

    final contentTypes = <String>['multipart/form-data'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields[r'file'] = file.field;
        mp.files.add(file);
      }
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

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   file
  ///
  /// * [String] contentType:
  ///   Optional content type of attachment
  ///
  /// * [String] filename:
  ///   Optional name of file
  ///
  /// * [String] xFilename:
  ///   Optional content type header of attachment
  Future<List<String>> uploadMultipartForm(MultipartFile file, { String contentType, String filename, String xFilename }) async {
    final response = await uploadMultipartFormWithHttpInfo(file,  contentType: contentType, filename: filename, xFilename: xFilename );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }
}
