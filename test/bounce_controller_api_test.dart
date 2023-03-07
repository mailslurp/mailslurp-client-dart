//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for BounceControllerApi
void main() {
  final instance = BounceControllerApi();

  group('tests for BounceControllerApi', () {
    // Filter a list of email recipients and remove those who have bounced
    //
    // Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
    //
    //Future<FilterBouncedRecipientsResult> filterBouncedRecipient(FilterBouncedRecipientsOptions filterBouncedRecipientsOptions) async
    test('test filterBouncedRecipient', () async {
      // TODO
    });

    // Get a bounced email.
    //
    // Bounced emails are email you have sent that were rejected by a recipient
    //
    //Future<BouncedEmailDto> getBouncedEmail(String id) async
    test('test getBouncedEmail', () async {
      // TODO
    });

    // Get paginated list of bounced emails.
    //
    // Bounced emails are email you have sent that were rejected by a recipient
    //
    //Future<PageBouncedEmail> getBouncedEmails({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getBouncedEmails', () async {
      // TODO
    });

    // Get a bounced email.
    //
    // Bounced emails are email you have sent that were rejected by a recipient
    //
    //Future<BouncedRecipientDto> getBouncedRecipient(String id) async
    test('test getBouncedRecipient', () async {
      // TODO
    });

    // Get paginated list of bounced recipients.
    //
    // Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
    //
    //Future<PageBouncedRecipients> getBouncedRecipients({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getBouncedRecipients', () async {
      // TODO
    });

    // Get paginated list of complaints.
    //
    // SMTP complaints made against your account
    //
    //Future<PageComplaint> getComplaints({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getComplaints', () async {
      // TODO
    });

    // Get paginated list of unsubscribed recipients.
    //
    // Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
    //
    //Future<PageListUnsubscribeRecipients> getListUnsubscribeRecipients({ int page, int size, String sort, String domainId }) async
    test('test getListUnsubscribeRecipients', () async {
      // TODO
    });

  });
}
