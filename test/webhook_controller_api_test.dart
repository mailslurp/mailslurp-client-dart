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


/// tests for WebhookControllerApi
void main() {
  // final instance = WebhookControllerApi();

  group('tests for WebhookControllerApi', () {
    // Attach a WebHook URL to an inbox
    //
    // Get notified of account level events such as bounce and bounce recipient.
    //
    //Future<WebhookDto> createAccountWebhook(CreateWebhookOptions createWebhookOptions) async
    test('test createAccountWebhook', () async {
      // TODO
    });

    // Attach a WebHook URL to an inbox
    //
    // Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    //
    //Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions createWebhookOptions) async
    test('test createWebhook', () async {
      // TODO
    });

    // Attach a WebHook URL to a phone number
    //
    // Get notified whenever a phone number receives an SMS via a WebHook URL.
    //
    //Future<WebhookDto> createWebhookForPhoneNumber(String phoneNumberId, CreateWebhookOptions createWebhookOptions) async
    test('test createWebhookForPhoneNumber', () async {
      // TODO
    });

    // Delete all webhooks
    //
    //Future deleteAllWebhooks({ DateTime before }) async
    test('test deleteAllWebhooks', () async {
      // TODO
    });

    // Delete and disable a Webhook for an Inbox
    //
    //Future deleteWebhook(String inboxId, String webhookId) async
    test('test deleteWebhook', () async {
      // TODO
    });

    // Delete a webhook
    //
    //Future deleteWebhookById(String webhookId) async
    test('test deleteWebhookById', () async {
      // TODO
    });

    // List account webhooks Paginated
    //
    // List account webhooks in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookProjection> getAllAccountWebhooks({ int page, int size, String sort, DateTime since, DateTime before, String eventType, String health, String searchFilter }) async
    test('test getAllAccountWebhooks', () async {
      // TODO
    });

    // List Webhooks endpoints Paginated
    //
    // List webhooks URL in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookEndpointProjection> getAllWebhookEndpoints({ int page, int size, String sort, String searchFilter, DateTime since, String inboxId, String phoneId, DateTime before, String health, String eventType }) async
    test('test getAllWebhookEndpoints', () async {
      // TODO
    });

    // Get results for all webhooks
    //
    //Future<PageWebhookResult> getAllWebhookResults({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly, String resultType, String eventName, int minStatusCode, int maxStatusCode, String inboxId, String smsId, String attachmentId, String emailId, String phoneId }) async
    test('test getAllWebhookResults', () async {
      // TODO
    });

    // List Webhooks Paginated
    //
    // List webhooks in paginated form. Allows for page index, page size, and sort direction.
    //
    //Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort, String searchFilter, DateTime since, String inboxId, String phoneId, DateTime before, String health, String eventType, String url }) async
    test('test getAllWebhooks', () async {
      // TODO
    });

    // Get paginated webhooks for an Inbox
    //
    //Future<PageWebhookProjection> getInboxWebhooksPaginated(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before, String health, String eventType }) async
    test('test getInboxWebhooksPaginated', () async {
      // TODO
    });

    // Get JSON Schema definition for webhook payload by event
    //
    //Future<JSONSchemaDto> getJsonSchemaForWebhookEvent(String event) async
    test('test getJsonSchemaForWebhookEvent', () async {
      // TODO
    });

    // Get JSON Schema definition for webhook payload
    //
    //Future<JSONSchemaDto> getJsonSchemaForWebhookPayload(String webhookId) async
    test('test getJsonSchemaForWebhookPayload', () async {
      // TODO
    });

    // Get paginated webhooks for a phone number
    //
    //Future<PageWebhookProjection> getPhoneNumberWebhooksPaginated(String phoneId, { int page, int size, String sort, DateTime since, DateTime before, String eventType, String searchFilter, String health }) async
    test('test getPhoneNumberWebhooksPaginated', () async {
      // TODO
    });

    // Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
    //
    //Future<AbstractWebhookPayload> getTestWebhookPayload({ String eventName }) async
    test('test getTestWebhookPayload', () async {
      // TODO
    });

    // Get webhook test payload for bounce
    //
    //Future<WebhookBouncePayload> getTestWebhookPayloadBounce() async
    test('test getTestWebhookPayloadBounce', () async {
      // TODO
    });

    // Get webhook test payload for bounce recipient
    //
    //Future<WebhookBounceRecipientPayload> getTestWebhookPayloadBounceRecipient() async
    test('test getTestWebhookPayloadBounceRecipient', () async {
      // TODO
    });

    // Get webhook test payload for delivery status event
    //
    //Future<WebhookDeliveryStatusPayload> getTestWebhookPayloadDeliveryStatus() async
    test('test getTestWebhookPayloadDeliveryStatus', () async {
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

    // Get webhook test payload for new ai transform result event
    //
    //Future<WebhookNewAITransformResultPayload> getTestWebhookPayloadNewAITransformResult() async
    test('test getTestWebhookPayloadNewAITransformResult', () async {
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

    // Get webhook test payload for new sms event
    //
    //Future<WebhookNewSmsPayload> getTestWebhookPayloadNewSms() async
    test('test getTestWebhookPayloadNewSms', () async {
      // TODO
    });

    // Get a webhook
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
    //Future<PageWebhookResult> getWebhookResults(String webhookId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly, String resultType, String eventName, int minStatusCode, int maxStatusCode, String inboxId, String smsId, String attachmentId, String emailId, String phoneId }) async
    test('test getWebhookResults', () async {
      // TODO
    });

    // Get a webhook results count for a webhook
    //
    //Future<CountDto> getWebhookResultsCount(String webhookId) async
    test('test getWebhookResultsCount', () async {
      // TODO
    });

    // Get count of unseen webhook results with error status
    //
    //Future<UnseenErrorCountDto> getWebhookResultsUnseenErrorCount() async
    test('test getWebhookResultsUnseenErrorCount', () async {
      // TODO
    });

    // Get all webhooks for an Inbox
    //
    //Future<List<WebhookProjection>> getWebhooks(String inboxId, { int page, int size, String sort }) async
    test('test getWebhooks', () async {
      // TODO
    });

    // Redrive all webhook results that have failed status
    //
    // Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.
    //
    //Future<WebhookRedriveAllResult> redriveAllWebhookResults() async
    test('test redriveAllWebhookResults', () async {
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

    // Update a webhook
    //
    //Future<WebhookDto> updateWebhook(String webhookId, CreateWebhookOptions createWebhookOptions, { String inboxId, String phoneNumberId, bool overrideAuth }) async
    test('test updateWebhook', () async {
      // TODO
    });

    // Update a webhook request headers
    //
    //Future<WebhookDto> updateWebhookHeaders(String webhookId, WebhookHeaders webhookHeaders) async
    test('test updateWebhookHeaders', () async {
      // TODO
    });

    // Verify a webhook payload signature
    //
    // Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.
    //
    //Future<VerifyWebhookSignatureResults> verifyWebhookSignature(VerifyWebhookSignatureOptions verifyWebhookSignatureOptions) async
    test('test verifyWebhookSignature', () async {
      // TODO
    });

    // Wait for webhook results for a webhook
    //
    //Future<List<WebhookResultDto>> waitForWebhookResults(String webhookId, int expectedCount, int timeout) async
    test('test waitForWebhookResults', () async {
      // TODO
    });

  });
}
