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


/// tests for SmsControllerApi
void main() {
  // final instance = SmsControllerApi();

  group('tests for SmsControllerApi', () {
    // Delete sent SMS message.
    //
    // Delete a sent SMS message
    //
    //Future deleteSentSmsMessage(String sentSmsId) async
    test('test deleteSentSmsMessage', () async {
      // TODO
    });

    // Delete all sent SMS messages
    //
    // Delete all sent SMS messages or all messages for a given phone number
    //
    //Future deleteSentSmsMessages({ String phoneNumberId }) async
    test('test deleteSentSmsMessages', () async {
      // TODO
    });

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

    //Future<PageSmsProjection> getAllSmsMessages({ String phoneNumber, int page, int size, String sort, DateTime since, DateTime before, String search, bool favourite }) async
    test('test getAllSmsMessages', () async {
      // TODO
    });

    // Get reply for an SMS message
    //
    // Get reply for an SMS message.
    //
    //Future<ReplyForSms> getReplyForSmsMessage(String smsId) async
    test('test getReplyForSmsMessage', () async {
      // TODO
    });

    // Get sent SMS count
    //
    // Get number of sent SMS
    //
    //Future<CountDto> getSentSmsCount() async
    test('test getSentSmsCount', () async {
      // TODO
    });

    // Get sent SMS content including body. Expects sent SMS to exist by ID.
    //
    // Returns an SMS summary object with content.
    //
    //Future<SentSmsDto> getSentSmsMessage(String sentSmsId) async
    test('test getSentSmsMessage', () async {
      // TODO
    });

    // Get all SMS messages in all phone numbers in paginated form. .
    //
    // By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
    //
    //Future<PageSentSmsProjection> getSentSmsMessagesPaginated({ String phoneNumber, int page, int size, String sort, DateTime since, DateTime before, String search }) async
    test('test getSentSmsMessagesPaginated', () async {
      // TODO
    });

    // Get SMS count
    //
    // Get number of SMS
    //
    //Future<CountDto> getSmsCount() async
    test('test getSmsCount', () async {
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

    // Get unread SMS count
    //
    // Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
    //
    //Future<UnreadCount> getUnreadSmsCount() async
    test('test getUnreadSmsCount', () async {
      // TODO
    });

    // Send a reply to a received SMS message. Replies are sent from the receiving number.
    //
    // Reply to an SMS message.
    //
    //Future<SentSmsDto> replyToSmsMessage(String smsId, SmsReplyOptions smsReplyOptions) async
    test('test replyToSmsMessage', () async {
      // TODO
    });

    //Future<SentSmsDto> sendSms(SmsSendOptions smsSendOptions, { String fromPhoneNumber, String fromPhoneId }) async
    test('test sendSms', () async {
      // TODO
    });

    //Future<SmsDto> setSmsFavourited(String smsId, bool favourited) async
    test('test setSmsFavourited', () async {
      // TODO
    });

  });
}
