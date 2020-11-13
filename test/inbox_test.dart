import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Inbox
void main() {
    var instance = new Inbox();

  group('test Inbox', () {
    // When was the inbox created
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Optional description of an inbox for labelling purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // The inbox's email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints.
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. Timestamp passed as string.
    // String expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favourited
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // ID of the inbox
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Optional name of the inbox. Displayed in the dashboard for easier search
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with
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
