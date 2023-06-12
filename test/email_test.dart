//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Email
void main() {
  final instance = Email();

  group('test Email', () {
    // ID of the email entity
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // ID of user that email belongs to
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // ID of the inbox that received the email
    // String inboxId
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // ID of the domain that received the email
    // String domainId
    test('to test the property `domainId`', () async {
      // TODO
    });

    // List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
    // List<String> to (default value: const [])
    test('to test the property `to`', () async {
      // TODO
    });

    // Who the email was sent from. An email address - see fromName for the sender name.
    // String from
    test('to test the property `from`', () async {
      // TODO
    });

    // Sender sender
    test('to test the property `sender`', () async {
      // TODO
    });

    // EmailRecipients recipients
    test('to test the property `recipients`', () async {
      // TODO
    });

    // The `replyTo` field on the received email message
    // String replyTo
    test('to test the property `replyTo`', () async {
      // TODO
    });

    // List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    // List<String> cc (default value: const [])
    test('to test the property `cc`', () async {
      // TODO
    });

    // List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    // List<String> bcc (default value: const [])
    test('to test the property `bcc`', () async {
      // TODO
    });

    // Collection of SMTP headers attached to email
    // Map<String, String> headers (default value: const {})
    test('to test the property `headers`', () async {
      // TODO
    });

    // Multi-value map of SMTP headers attached to email
    // Map<String, List<String>> headersMap (default value: const {})
    test('to test the property `headersMap`', () async {
      // TODO
    });

    // List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
    // List<String> attachments (default value: const [])
    test('to test the property `attachments`', () async {
      // TODO
    });

    // The subject line of the email message as specified by SMTP subject header
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // An excerpt of the body of the email message for quick preview .
    // String bodyExcerpt
    test('to test the property `bodyExcerpt`', () async {
      // TODO
    });

    // A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.
    // String bodyMD5Hash
    test('to test the property `bodyMD5Hash`', () async {
      // TODO
    });

    // Is the email body content type HTML?
    // bool isHTML
    test('to test the property `isHTML`', () async {
      // TODO
    });

    // Detected character set of the email body such as UTF-8
    // String charset
    test('to test the property `charset`', () async {
      // TODO
    });

    // EmailAnalysis analysis
    test('to test the property `analysis`', () async {
      // TODO
    });

    // When was the email received by MailSlurp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // When was the email last updated
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
    // bool read
    test('to test the property `read`', () async {
      // TODO
    });

    // Can the email be accessed by organization team members
    // bool teamAccess
    test('to test the property `teamAccess`', () async {
      // TODO
    });

    // bool html
    test('to test the property `html`', () async {
      // TODO
    });


  });

}
