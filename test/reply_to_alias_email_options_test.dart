import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for ReplyToAliasEmailOptions
void main() {
    var instance = new ReplyToAliasEmailOptions();

  group('test ReplyToAliasEmailOptions', () {
    // List of uploaded attachments to send with the reply. Optional.
    // List<String> attachments (default value: [])
    test('to test the property `attachments`', () async {
      // TODO
    });

    // Body of the reply email you want to send
    // String body (default value: null)
    test('to test the property `body`', () async {
      // TODO
    });

    // The charset that your message should be sent with. Optional. Default is UTF-8
    // String charset (default value: null)
    test('to test the property `charset`', () async {
      // TODO
    });

    // Is the reply HTML
    // bool isHTML (default value: null)
    test('to test the property `isHTML`', () async {
      // TODO
    });

    // When to send the email. Typically immediately
    // String sendStrategy (default value: null)
    test('to test the property `sendStrategy`', () async {
      // TODO
    });

    // Template ID to use instead of body. Will use template variable map to fill defined variable slots.
    // String template (default value: null)
    test('to test the property `template`', () async {
      // TODO
    });

    // Template variables if using a template
    // Object templateVariables (default value: null)
    test('to test the property `templateVariables`', () async {
      // TODO
    });


  });

}
