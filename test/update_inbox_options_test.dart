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

// tests for UpdateInboxOptions
void main() {
  // final instance = UpdateInboxOptions();

  group('test UpdateInboxOptions', () {
    // Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Description of an inbox for labelling and searching purposes
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: const [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });


  });

}
