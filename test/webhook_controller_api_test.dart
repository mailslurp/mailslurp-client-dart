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

    // Get results for all webhooks
    //
    //Future<PageWebhookResult> getAllWebhookResults({ int page, String searchFilter, int size, String sort }) async
    test('test getAllWebhookResults', () async {
      // TODO
    });

    // List Webhooks Paginated
    //
    // List webhooks in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookProjection> getAllWebhooks({ int page, String searchFilter, int size, String sort }) async
    test('test getAllWebhooks', () async {
      // TODO
    });

    // Get paginated webhooks for an Inbox
    //
    //Future<PageWebhookProjection> getInboxWebhooksPaginated(String inboxId, { int page, String searchFilter, int size, String sort }) async
    test('test getInboxWebhooksPaginated', () async {
      // TODO
    });

    // Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
    //
    //Future<AbstractWebhookPayload> getTestWebhookPayload({ String eventName }) async
    test('test getTestWebhookPayload', () async {
      // TODO
    });

    // Get webhook test payload for new attachment event
    //
    //Future<WebhookNewAttachmentPayload> getTestWebhookPayloadNewAttachment() async
    test('test getTestWebhookPayloadNewAttachment', () async {
      // TODO
    });

    // Get webhook test payload for new contact event
    //
    //Future<WebhookNewContactPayload> getTestWebhookPayloadNewContact() async
    test('test getTestWebhookPayloadNewContact', () async {
      // TODO
    });

    // Get webhook test payload for new email event
    //
    //Future<WebhookNewEmailPayload> getTestWebhookPayloadNewEmail() async
    test('test getTestWebhookPayloadNewEmail', () async {
      // TODO
    });

    // Get a webhook for an Inbox
    //
    //Future<WebhookDto> getWebhook(String webhookId) async
    test('test getWebhook', () async {
      // TODO
    });

    // Get a webhook result for a webhook
    //
    //Future<WebhookResultEntity> getWebhookResult(String webhookResultId) async
    test('test getWebhookResult', () async {
      // TODO
    });

    // Get a webhook results for a webhook
    //
    //Future<PageWebhookResult> getWebhookResults(String webhookId, { int page, String searchFilter, int size, String sort }) async
    test('test getWebhookResults', () async {
      // TODO
    });

    // Get all webhooks for an Inbox
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
