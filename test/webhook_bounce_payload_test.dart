//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for WebhookBouncePayload
void main() {
  final instance = WebhookBouncePayload();

  group('test WebhookBouncePayload', () {
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

    // ID of the bounce email record. Use the ID with the bounce controller to view more information
    // String bounceId
    test('to test the property `bounceId`', () async {
      // TODO
    });

    // List<String> sentToRecipients (default value: const [])
    test('to test the property `sentToRecipients`', () async {
      // TODO
    });

    // String sender
    test('to test the property `sender`', () async {
      // TODO
    });

    // Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation.
    // List<String> bounceRecipients (default value: const [])
    test('to test the property `bounceRecipients`', () async {
      // TODO
    });


  });

}
