//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for WebhookControllerApi
void main() {
  final instance = WebhookControllerApi();

  group('tests for WebhookControllerApi', () {
    // Attach a WebHook URL to an inbox
    //
    // Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    //
    //Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions webhookOptions) async
    test('test createWebhook', () async {
      // TODO
    });

    // Delete and disable a Webhook for an Inbox
    //
    //Future deleteWebhook(String inboxId, String webhookId) async
    test('test deleteWebhook', () async {
      // TODO
    });

    // List Webhooks Paginated
    //
    // List webhooks in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort }) async
    test('test getAllWebhooks', () async {
      // TODO
    });

    // Get a webhook for an Inbox
    //
    //Future<WebhookDto> getWebhook(String webhookId) async
    test('test getWebhook', () async {
      // TODO
    });

    // Get all Webhooks for an Inbox
    //
    //Future<List<WebhookDto>> getWebhooks(String inboxId) async
    test('test getWebhooks', () async {
      // TODO
    });

    // Send webhook test data
    //
    //Future<WebhookTestResult> sendTestData(String webhookId) async
    test('test sendTestData', () async {
      // TODO
    });

  });
}
