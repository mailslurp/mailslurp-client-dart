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


/// tests for CommonActionsControllerApi
void main() {
  // final instance = CommonActionsControllerApi();

  group('tests for CommonActionsControllerApi', () {
    // Create new random inbox
    //
    // Returns an Inbox with an `id` and an `emailAddress`
    //
    //Future<InboxDto> createNewEmailAddress({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox, bool useShortAddress, String domainName, String domainId, String prefix }) async
    test('test createNewEmailAddress', () async {
      // TODO
    });

    // Create new random inbox
    //
    // Returns an Inbox with an `id` and an `emailAddress`
    //
    //Future<InboxDto> createRandomInbox({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox, bool useShortAddress, String domainName, String domainId, String prefix }) async
    test('test createRandomInbox', () async {
      // TODO
    });

    // Delete inbox email address by inbox id
    //
    // Deletes inbox email address
    //
    //Future deleteEmailAddress(String inboxId) async
    test('test deleteEmailAddress', () async {
      // TODO
    });

    // Delete all emails in an inbox
    //
    // Deletes all emails
    //
    //Future emptyInbox(String inboxId) async
    test('test emptyInbox', () async {
      // TODO
    });

    // Send an email using query parameters
    //
    // If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
    //
    //Future sendEmailQuery(String to, { String senderId, String body, String subject }) async
    test('test sendEmailQuery', () async {
      // TODO
    });

    // Send an email
    //
    // If no senderId or inboxId provided a random email address will be used to send from.
    //
    //Future sendEmailSimple(SimpleSendEmailOptions simpleSendEmailOptions) async
    test('test sendEmailSimple', () async {
      // TODO
    });

  });
}
