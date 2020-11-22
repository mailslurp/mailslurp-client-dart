import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentControllerApi
void main() {
  var instance = AttachmentControllerApi();

  group('tests for AttachmentControllerApi', () {
    // Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment IDs. For legacy reasons the ID is returned in an array. Only a single ID is ever returned at one time. To send the attachments pass a list of attachment IDs with SendEmailOptions when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadOptions) async 
    test('test uploadAttachment', () async {
      // TODO
    });

    // Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment IDs. For legacy reasons the ID is returned in an array. Only a single ID is ever returned at one time. To send the attachments pass a list of attachment IDs with SendEmailOptions when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadAttachmentBytes({ String string, String filename, String byteArray }) async 
    test('test uploadAttachmentBytes', () async {
      // TODO
    });

    // Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
    //
    // When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment IDs. For legacy reasons the ID is returned in an array. Only a single ID is ever returned at one time. To send the attachments pass a list of attachment IDs with SendEmailOptions when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    //
    //Future<List<String>> uploadMultipartForm(MultipartFile file, { String contentType, String filename, String xFilename }) async 
    test('test uploadMultipartForm', () async {
      // TODO
    });

  });
}
