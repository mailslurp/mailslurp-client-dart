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

// tests for WaitForSmsConditions
void main() {
  // final instance = WaitForSmsConditions();

  group('test WaitForSmsConditions', () {
    // ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count.
    // String phoneNumberId
    test('to test the property `phoneNumberId`', () async {
      // TODO
    });

    // Limit results
    // int limit
    test('to test the property `limit`', () async {
      // TODO
    });

    // Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // Max time in milliseconds to wait between retries if a `timeout` is specified.
    // int delayTimeout
    test('to test the property `delayTimeout`', () async {
      // TODO
    });

    // Max time in milliseconds to retry the `waitFor` operation until conditions are met.
    // int timeout
    test('to test the property `timeout`', () async {
      // TODO
    });

    // Apply conditions only to **unread** SMS. All SMS messages begin with `read=false`. An SMS is marked `read=true` when an `SMS` has been returned to the user at least once. For example you have called `getSms` or `waitForSms` etc., or you have viewed the SMS in the dashboard.
    // bool unreadOnly
    test('to test the property `unreadOnly`', () async {
      // TODO
    });

    // How result size should be compared with the expected size. Exactly or at-least matching result?
    // String countType
    test('to test the property `countType`', () async {
      // TODO
    });

    // Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for.
    // List<SmsMatchOption> matches (default value: const [])
    test('to test the property `matches`', () async {
      // TODO
    });

    // Direction to sort matching SMSs by created time
    // String sortDirection
    test('to test the property `sortDirection`', () async {
      // TODO
    });

    // ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date
    // DateTime since
    test('to test the property `since`', () async {
      // TODO
    });

    // ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date
    // DateTime before
    test('to test the property `before`', () async {
      // TODO
    });


  });

}
