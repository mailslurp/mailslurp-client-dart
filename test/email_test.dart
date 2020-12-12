import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Email
void main() {
    var instance = new Email();

  group('test Email', () {
    // EmailAnalysis analysis (default value: null)
    test('to test the property `analysis`', () async {
      // TODO
    });

    // List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
    // List<String> attachments (default value: [])
    test('to test the property `attachments`', () async {
      // TODO
    });

    // List of `BCC` recipients email was addressed to
    // List<String> bcc (default value: [])
    test('to test the property `bcc`', () async {
      // TODO
    });

    // The body of the email message
    // String body (default value: null)
    test('to test the property `body`', () async {
      // TODO
    });

    // A hash signature of the email message
    // String bodyMD5Hash (default value: null)
    test('to test the property `bodyMD5Hash`', () async {
      // TODO
    });

    // List of `CC` recipients email was addressed to
    // List<String> cc (default value: [])
    test('to test the property `cc`', () async {
      // TODO
    });

    // Detected character set of the email body such as UTF-8
    // String charset (default value: null)
    test('to test the property `charset`', () async {
      // TODO
    });

    // When was the email received by MailSlurp
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Who the email was sent from
    // String from (default value: null)
    test('to test the property `from`', () async {
      // TODO
    });

    // Map<String, String> headers (default value: {})
    test('to test the property `headers`', () async {
      // TODO
    });

    // ID of the email
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // ID of the inbox that received the email
    // String inboxId (default value: null)
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Was HTML sent in the email body
    // bool isHTML (default value: null)
    test('to test the property `isHTML`', () async {
      // TODO
    });

    // Has the email been viewed ever
    // bool read (default value: null)
    test('to test the property `read`', () async {
      // TODO
    });

    // The replyTo field on the received email
    // String replyTo (default value: null)
    test('to test the property `replyTo`', () async {
      // TODO
    });

    // The subject line of the email message
    // String subject (default value: null)
    test('to test the property `subject`', () async {
      // TODO
    });

    // List of `To` recipients email was addressed to
    // List<String> to (default value: [])
    test('to test the property `to`', () async {
      // TODO
    });

    // When was the email last updated
    // DateTime updatedAt (default value: null)
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // ID of user that email belongs
    // String userId (default value: null)
    test('to test the property `userId`', () async {
      // TODO
    });


  });

}
