//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for EmailPreview
void main() {
  final instance = EmailPreview();

  group('test EmailPreview', () {
    // ID of the email entity
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The subject line of the email message as specified by SMTP subject header
    // String subject
    test('to test the property `subject`', () async {
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

    // List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    // List<String> bcc (default value: const [])
    test('to test the property `bcc`', () async {
      // TODO
    });

    // List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    // List<String> cc (default value: const [])
    test('to test the property `cc`', () async {
      // TODO
    });

    // When was the email received by MailSlurp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
    // bool read
    test('to test the property `read`', () async {
      // TODO
    });

    // List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
    // List<String> attachments (default value: const [])
    test('to test the property `attachments`', () async {
      // TODO
    });


  });

}
