import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateWebhookOptions
void main() {
    var instance = new CreateWebhookOptions();

  group('test CreateWebhookOptions', () {
    // BasicAuthOptions basicAuth (default value: null)
    test('to test the property `basicAuth`', () async {
      // TODO
    });

    // Optional name for the webhook
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });


  });

}
