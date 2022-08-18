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
    //Future<PageMissedEmailProjection> getAllMissedEmails({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, String inboxId }) async
    test('test getAllMissedEmails', () async {
      // TODO
    });

    // Get all unknown missed emails in paginated format
    //
    // Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
    //
    //Future<PageUnknownMissedEmailProjection> getAllUnknownMissedEmails({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, String inboxId }) async
    test('test getAllUnknownMissedEmails', () async {
      // TODO
    });

    // Get MissedEmail
    //
    // List emails that were missed due to plan limits.
    //
    //Future<MissedEmail> getMissedEmail(String missedEmailId) async
    test('test getMissedEmail', () async {
      // TODO
    });

    // Restore missed emails
    //
    // If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.
    //
    //Future restoreMissedEmails() async
    test('test restoreMissedEmails', () async {
      // TODO
    });

    // Wait for Nth missed email
    //
    // Wait for 0 based index missed email
    //
    //Future<MissedEmail> waitForNthMissedEmail(int index, { String inboxId, int timeout, DateTime since, DateTime before }) async
    test('test waitForNthMissedEmail', () async {
      // TODO
    });

  });
}
