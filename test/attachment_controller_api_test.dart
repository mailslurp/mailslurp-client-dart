import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentControllerApi
void main() {
  var instance = AttachmentControllerApi();

  group('tests for AttachmentControllerApi', () {
    // Upload an attachment for sending
    //
    // When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    //
    //Future<List<String>> uploadAttachment(UploadAttachmentOptions uploadOptions) async 
    test('test uploadAttachment', () async {
      // TODO
    });

    // Upload an attachment for sending using Multipart Form
    //
    // When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    //
    //Future<List<String>> uploadMultipartForm(MultipartFile file, { String contentType, String filename, String xFilename }) async 
    test('test uploadMultipartForm', () async {
      // TODO
    });

  });
}
