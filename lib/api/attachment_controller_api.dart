part of mailslurp.api;



class AttachmentControllerApi {
  final ApiClient apiClient;

  AttachmentControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment. with HTTP info returned
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<Response> uploadAttachmentWithHttpInfo(UploadAttachmentOptions uploadOptions) async {
    Object postBody = uploadOptions;

    // verify required params are set
    if(uploadOptions == null) {
     throw ApiException(400, "Missing required param: uploadOptions");
    }

    // create path and map variables
    String path = "/attachments".replaceAll("{format}","json");

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

  /// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadOptions) async {
    Response response = await uploadAttachmentWithHttpInfo(uploadOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment. with HTTP info returned
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<Response> uploadAttachmentBytesWithHttpInfo({ String string, String filename, String byteArray }) async {
    Object postBody = byteArray;

    // verify required params are set

    // create path and map variables
    String path = "/attachments/bytes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(string != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "String", string));
    }
    if(filename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filename", filename));
    }

    List<String> contentTypes = ["application/octet-stream"];

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

  /// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<List<String>> uploadAttachmentBytes({ String string, String filename, String byteArray }) async {
    Response response = await uploadAttachmentBytesWithHttpInfo( string: string, filename: filename, byteArray: byteArray );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment. with HTTP info returned
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<Response> uploadMultipartFormWithHttpInfo(MultipartFile file, { String contentType, String filename, String xFilename }) async {
    Object postBody;

    // verify required params are set
    if(file == null) {
     throw ApiException(400, "Missing required param: file");
    }

    // create path and map variables
    String path = "/attachments/multipart".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(contentType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "contentType", contentType));
    }
    if(filename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filename", filename));
    }
    if(xFilename != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "x-filename", xFilename));
    }

    List<String> contentTypes = ["multipart/form-data"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
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

  /// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  ///
  /// Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
  Future<List<String>> uploadMultipartForm(MultipartFile file, { String contentType, String filename, String xFilename }) async {
    Response response = await uploadMultipartFormWithHttpInfo(file,  contentType: contentType, filename: filename, xFilename: xFilename );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }

}
