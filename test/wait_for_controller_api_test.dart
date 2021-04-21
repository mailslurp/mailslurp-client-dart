//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for WaitForControllerApi
void main() {
  final instance = WaitForControllerApi();

  group('tests for WaitForControllerApi', () {
    // Wait for conditions to be met
    //
    // Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    //
    //Future<List<EmailPreview>> waitFor({ WaitForConditions waitForConditions }) async
    test('test waitFor', () async {
      // TODO
    });

    // Wait for and return count number of emails 
    //
    // If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    //
    //Future<List<EmailPreview>> waitForEmailCount({ int count, String inboxId, int timeout, bool unreadOnly }) async
    test('test waitForEmailCount', () async {
      // TODO
    });

    // Fetch inbox's latest email or if empty wait for an email to arrive
    //
    // Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
    //
    //Future<Email> waitForLatestEmail({ String inboxId, int timeout, bool unreadOnly }) async
    test('test waitForLatestEmail', () async {
      // TODO
    });

    // Wait or return list of emails that match simple matching patterns
    //
    // Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    //
    //Future<List<EmailPreview>> waitForMatchingEmail(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async
    test('test waitForMatchingEmail', () async {
      // TODO
    });

    // Wait for or return the first email that matches proved MatchOptions array
    //
    // Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    //
    //Future<Email> waitForMatchingFirstEmail(MatchOptions matchOptions, { String inboxId, int timeout, bool unreadOnly }) async
    test('test waitForMatchingFirstEmail', () async {
      // TODO
    });

    // Wait for or fetch the email with a given index in the inbox specified
    //
    // If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    //
    //Future<Email> waitForNthEmail({ String inboxId, int index, int timeout, bool unreadOnly }) async
    test('test waitForNthEmail', () async {
      // TODO
    });

  });
}
