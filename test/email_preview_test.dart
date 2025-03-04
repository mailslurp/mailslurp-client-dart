//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for EmailPreview
void main() {
  // final instance = EmailPreview();

  group('test EmailPreview', () {
    // ID of the email entity
    // String id
    test('to test the property `id`', () async {
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

    // MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields.
    // String threadId
    test('to test the property `threadId`', () async {
      // TODO
    });

    // RFC 5322 Message-ID header value without angle brackets.
    // String messageId
    test('to test the property `messageId`', () async {
      // TODO
    });

    // Parsed value of In-Reply-To header. A Message-ID in a thread.
    // String inReplyTo
    test('to test the property `inReplyTo`', () async {
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

    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // List<String> bodyPartContentTypes (default value: const [])
    test('to test the property `bodyPartContentTypes`', () async {
      // TODO
    });

    // String plusAddress
    test('to test the property `plusAddress`', () async {
      // TODO
    });


  });

}
