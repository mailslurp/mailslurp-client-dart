//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for SmsControllerApi
void main() {
  final instance = SmsControllerApi();

  group('tests for SmsControllerApi', () {
    // Delete SMS message.
    //
    // Delete an SMS message
    //
    //Future deleteSmsMessage(String smsId) async
    test('test deleteSmsMessage', () async {
      // TODO
    });

    // Delete all SMS messages
    //
    // Delete all SMS messages or all messages for a given phone number
    //
    //Future deleteSmsMessages({ String phoneNumberId }) async
    test('test deleteSmsMessages', () async {
      // TODO
    });

    // Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
    //
    // Returns a SMS summary object with content.
    //
    //Future<SmsDto> getSmsMessage(String smsId) async
    test('test getSmsMessage', () async {
      // TODO
    });

    // Get all SMS messages in all phone numbers in paginated form. .
    //
    // By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
    //
    //Future<PageSmsProjection> getSmsMessagesPaginated({ String phoneNumber, int page, int size, String sort, bool unreadOnly, DateTime since, DateTime before }) async
    test('test getSmsMessagesPaginated', () async {
      // TODO
    });

    // Get unread SMS count
    //
    // Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
    //
    //Future<UnreadCount> getUnreadSmsCount() async
    test('test getUnreadSmsCount', () async {
      // TODO
    });

  });
}
