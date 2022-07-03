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
    // Delete all attachments
    //
    //Future deleteAllAttachments() async
    test('test deleteAllAttachments', () async {
      // TODO
    });

    // Delete an attachment
    //
    //Future deleteAttachment(String attachmentId) async
    test('test deleteAttachment', () async {
      // TODO
    });

    // Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
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

    // Get an attachment entity
    //
    //Future<AttachmentEntity> getAttachment(String attachmentId) async
    test('test getAttachment', () async {
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

    // Get email attachments
    //
    // Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
    //
    //Future<PageAttachmentEntity> getAttachments({ int page, int size, String sort, String fileNameFilter, DateTime since, DateTime before }) async
    test('test getAttachments', () async {
      // TODO
    });

    // Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
    //
    //Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadAttachmentOptions) async
    test('test uploadAttachment', () async {
      // TODO
    });

    // Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
    //
    //Future<List<String>> uploadAttachmentBytes(InlineObject1 inlineObject1, { String contentType, String filename }) async
    test('test uploadAttachmentBytes', () async {
      // TODO
    });

    // Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
    //
    //Future<List<String>> uploadMultipartForm({ String contentType, String filename, String xFilename, InlineObject inlineObject }) async
    test('test uploadMultipartForm', () async {
      // TODO
    });

  });
}
