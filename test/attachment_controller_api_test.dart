//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentControllerApi
void main() {
  final instance = AttachmentControllerApi();

  group('tests for AttachmentControllerApi', () {
    // Get email attachment as base64 encoded string (alternative to binary responses). To read the content decode the Base64 encoded contents.
    //
    // Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
    //
    //Future<DownloadAttachmentDto> downloadAttachmentAsBase64Encoded(String attachmentId) async
    test('test downloadAttachmentAsBase64Encoded', () async {
      // TODO
    });

    // Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
    //
    // Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    //
    //Future<String> downloadAttachmentAsBytes(String attachmentId) async
    test('test downloadAttachmentAsBytes', () async {
      // TODO
    });

    // Get email attachment metadata information
    //
    // Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
    //
    //Future<AttachmentMetaData> getAttachmentInfo(String attachmentId) async
    test('test getAttachmentInfo', () async {
      // TODO
    });

    // Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadOptions) async
    test('test uploadAttachment', () async {
      // TODO
    });

    // Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadAttachmentBytes({ String string, String filename, String byteArray }) async
    test('test uploadAttachmentBytes', () async {
      // TODO
    });

    // Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadMultipartForm(MultipartFile file, { String contentType, String filename, String xFilename }) async
    test('test uploadMultipartForm', () async {
      // TODO
    });

  });
}
