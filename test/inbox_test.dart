import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Inbox
void main() {
    var instance = new Inbox();

  group('test Inbox', () {
    // When was the inbox created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Optional description of an inbox for labelling purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // The inbox's email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. Timestamp passed as string.
    // String expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // ID of the inbox. The ID is a UUID-V4 string. See the emailAddress property for the email address.
    // String id (default value: null)
    test('to test the property `id`', () async {
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

    // ID of user that inbox belongs to
    // String userId (default value: null)
    test('to test the property `userId`', () async {
      // TODO
    });


  });

}
