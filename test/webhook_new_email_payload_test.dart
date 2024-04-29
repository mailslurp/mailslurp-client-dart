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

// tests for WebhookNewEmailPayload
void main() {
  // final instance = WebhookNewEmailPayload();

  group('test WebhookNewEmailPayload', () {
    // Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
    // String messageId
    test('to test the property `messageId`', () async {
      // TODO
    });

    // ID of webhook entity being triggered
    // String webhookId
    test('to test the property `webhookId`', () async {
      // TODO
    });

    // Name of the event type webhook is being triggered for.
    // String eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // Name of the webhook being triggered
    // String webhookName
    test('to test the property `webhookName`', () async {
      // TODO
    });

    // Id of the inbox
    // String inboxId
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Id of the domain that received an email
    // String domainId
    test('to test the property `domainId`', () async {
      // TODO
    });

    // ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
    // String emailId
    test('to test the property `emailId`', () async {
      // TODO
    });

    // Date time of event creation
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
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

    // The subject line of the email message as specified by SMTP subject header
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // List of attachment meta data objects if attachments present
    // List<AttachmentMetaData> attachmentMetaDatas (default value: const [])
    test('to test the property `attachmentMetaDatas`', () async {
      // TODO
    });


  });

}
