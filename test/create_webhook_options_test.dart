//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateWebhookOptions
void main() {
  final instance = CreateWebhookOptions();

  group('test CreateWebhookOptions', () {
    // BasicAuthOptions basicAuth
    test('to test the property `basicAuth`', () async {
      // TODO
    });

    // Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. The other events are `NEW_EMAIL`, `NEW_CONTACT`, and `NEW_ATTACHMENT` and `EMAIL_OPENED`. `EMAIL_OPENED` requires the use of tracking pixels when sending. See the email tracking guide for more information.
    // String eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // Optional name for the webhook
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. The default `EMAIL_RECEIVED` payload is described by `https://api.mailslurp.com/schemas/webhook-payload`. The other events, `NEW_EMAIL`, `NEW_CONTACT`, and `NEW_ATTACHMENT` are described by `https://api.mailslurp.com/schemas/webhook-new-email-payload`, `https://api.mailslurp.com/schemas/webhook-new-contact-payload`,`https://api.mailslurp.com/schemas/webhook-new-attachment-payload` respectively.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
