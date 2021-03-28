import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for WebhookDto
void main() {
    var instance = new WebhookDto();

  group('test WebhookDto', () {
    // Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
    // bool basicAuth (default value: null)
    test('to test the property `basicAuth`', () async {
      // TODO
    });

    // When the webhook was created
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // ID of the Webhook
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // The inbox that the Webhook will be triggered by
    // String inboxId (default value: null)
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // HTTP method that your server endpoint must listen for
    // String method (default value: null)
    test('to test the property `method`', () async {
      // TODO
    });

    // Name of the webhook
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // JSON Schema for the payload that will be sent to your URL via the HTTP method described.
    // String payloadJsonSchema (default value: null)
    test('to test the property `payloadJsonSchema`', () async {
      // TODO
    });

    // DateTime updatedAt (default value: null)
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
