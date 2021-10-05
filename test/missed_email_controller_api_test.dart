//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for MissedEmailControllerApi
void main() {
  final instance = MissedEmailControllerApi();

  group('tests for MissedEmailControllerApi', () {
    // Get all MissedEmails in paginated format
    //
    //Future<PageMissedEmailProjection> getAllMissedEmails({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async
    test('test getAllMissedEmails', () async {
      // TODO
    });

    // Get all unknown missed emails in paginated format
    //
    // Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
    //
    //Future<PageUnknownMissedEmailProjection> getAllUnknownMissedEmails({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async
    test('test getAllUnknownMissedEmails', () async {
      // TODO
    });

    // Get MissedEmail
    //
    //Future<MissedEmail> getMissedEmail(String missedEmailId) async
    test('test getMissedEmail', () async {
      // TODO
    });

    // Wait for Nth missed email
    //
    // Wait for 0 based index missed email
    //
    //Future<MissedEmail> waitForNthMissedEmail({ DateTime before, String inboxId, int index, DateTime since, int timeout }) async
    test('test waitForNthMissedEmail', () async {
      // TODO
    });

  });
}
