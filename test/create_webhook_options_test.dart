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

// tests for CreateWebhookOptions
void main() {
  // final instance = CreateWebhookOptions();

  group('test CreateWebhookOptions', () {
    // Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // BasicAuthOptions basicAuth
    test('to test the property `basicAuth`', () async {
      // TODO
    });

    // Optional name for the webhook
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
    // String eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // WebhookHeaders includeHeaders
    test('to test the property `includeHeaders`', () async {
      // TODO
    });

    // Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style `{{variableName}}` templating to use parts of the standard webhook payload for the given event.
    // String requestBodyTemplate
    test('to test the property `requestBodyTemplate`', () async {
      // TODO
    });

    // Use static IP range when calling webhook endpoint
    // bool useStaticIpRange (default value: false)
    test('to test the property `useStaticIpRange`', () async {
      // TODO
    });

    // Ignore insecure SSL certificates when sending request. Useful for self-signed certs.
    // bool ignoreInsecureSslCertificates
    test('to test the property `ignoreInsecureSslCertificates`', () async {
      // TODO
    });


  });

}
