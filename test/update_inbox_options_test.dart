import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for UpdateInboxOptions
void main() {
    var instance = new UpdateInboxOptions();

  group('test UpdateInboxOptions', () {
    // Optional description of an inbox for labelling purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. Timestamp passed as string.
    // DateTime expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Optional name of the inbox. Displayed in the dashboard for easier search
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
