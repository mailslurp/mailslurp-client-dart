import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for EmailPreview
void main() {
    var instance = new EmailPreview();

  group('test EmailPreview', () {
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

    // List of `CC` recipients email was addressed to
    // List<String> cc (default value: [])
    test('to test the property `cc`', () async {
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

    // ID of the email
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Has the email been viewed ever
    // bool read (default value: null)
    test('to test the property `read`', () async {
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


  });

}
