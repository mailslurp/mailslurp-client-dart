import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for UpdateInboxOptions
void main() {
    var instance = new UpdateInboxOptions();

  group('test UpdateInboxOptions', () {
    // Description of an inbox for labelling and searching purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    // DateTime expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Name of the inbox. Displayed in the dashboard for easier search
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });


  });

}
