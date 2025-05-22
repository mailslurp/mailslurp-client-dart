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

// tests for WebhookDto
void main() {
  // final instance = WebhookDto();

  group('test WebhookDto', () {
    // ID of the Webhook
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // User ID of the Webhook
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
    // bool basicAuth
    test('to test the property `basicAuth`', () async {
      // TODO
    });

    // Name of the webhook
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set
    // String phoneId
    test('to test the property `phoneId`', () async {
      // TODO
    });

    // The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set
    // String inboxId
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload.
    // String requestBodyTemplate
    test('to test the property `requestBodyTemplate`', () async {
      // TODO
    });

    // URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // HTTP method that your server endpoint must listen for
    // String method
    test('to test the property `method`', () async {
      // TODO
    });

    // Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method
    // String payloadJsonSchema
    test('to test the property `payloadJsonSchema`', () async {
      // TODO
    });

    // When the webhook was created
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Webhook trigger event name
    // String eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // WebhookHeaders requestHeaders
    test('to test the property `requestHeaders`', () async {
      // TODO
    });

    // Should notifier ignore insecure SSL certificates
    // bool ignoreInsecureSslCertificates
    test('to test the property `ignoreInsecureSslCertificates`', () async {
      // TODO
    });

    // Should notifier use static IP range when sending webhook payload
    // bool useStaticIpRange
    test('to test the property `useStaticIpRange`', () async {
      // TODO
    });

    // Webhook health
    // String healthStatus
    test('to test the property `healthStatus`', () async {
      // TODO
    });


  });

}
