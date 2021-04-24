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
