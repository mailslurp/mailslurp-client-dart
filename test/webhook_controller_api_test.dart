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
    //Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions createWebhookOptions) async
    test('test createWebhook', () async {
      // TODO
    });

    // Delete all webhooks
    //
    //Future deleteAllWebhooks() async
    test('test deleteAllWebhooks', () async {
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
    //Future<PageWebhookResult> getAllWebhookResults({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async
    test('test getAllWebhookResults', () async {
      // TODO
    });

    // List Webhooks Paginated
    //
    // List webhooks in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getAllWebhooks', () async {
      // TODO
    });

    // Get paginated webhooks for an Inbox
    //
    //Future<PageWebhookProjection> getInboxWebhooksPaginated(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getInboxWebhooksPaginated', () async {
      // TODO
    });

    // Get JSON Schema definition for webhook payload
    //
    //Future<JSONSchemaDto> getJsonSchemaForWebhookPayload(String webhookId) async
    test('test getJsonSchemaForWebhookPayload', () async {
      // TODO
    });

    // Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
    //
    //Future<AbstractWebhookPayload> getTestWebhookPayload({ String eventName }) async
    test('test getTestWebhookPayload', () async {
      // TODO
    });

    // Get webhook test payload for email opened event
    //
    //Future<WebhookEmailOpenedPayload> getTestWebhookPayloadEmailOpened() async
    test('test getTestWebhookPayloadEmailOpened', () async {
      // TODO
    });

    // Get webhook test payload for email opened event
    //
    //Future<WebhookEmailReadPayload> getTestWebhookPayloadEmailRead() async
    test('test getTestWebhookPayloadEmailRead', () async {
      // TODO
    });

    // Get example payload for webhook
    //
    //Future<AbstractWebhookPayload> getTestWebhookPayloadForWebhook(String webhookId) async
    test('test getTestWebhookPayloadForWebhook', () async {
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
    //Future<WebhookResultDto> getWebhookResult(String webhookResultId) async
    test('test getWebhookResult', () async {
      // TODO
    });

    // Get a webhook results for a webhook
    //
    //Future<PageWebhookResult> getWebhookResults(String webhookId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async
    test('test getWebhookResults', () async {
      // TODO
    });

    // Get count of unseen webhook results with error status
    //
    //Future<UnseenErrorCountDto> getWebhookResultsUnseenErrorCount(String inboxId) async
    test('test getWebhookResultsUnseenErrorCount', () async {
      // TODO
    });

    // Get all webhooks for an Inbox
    //
    //Future<List<WebhookDto>> getWebhooks(String inboxId) async
    test('test getWebhooks', () async {
      // TODO
    });

    // Get a webhook result and try to resend the original webhook payload
    //
    // Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
    //
    //Future<WebhookRedriveResult> redriveWebhookResult(String webhookResultId) async
    test('test redriveWebhookResult', () async {
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
