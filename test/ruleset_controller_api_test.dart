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


/// tests for RulesetControllerApi
void main() {
  // final instance = RulesetControllerApi();

  group('tests for RulesetControllerApi', () {
    // Create a ruleset
    //
    // Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving
    //
    //Future<RulesetDto> createNewRuleset(CreateRulesetOptions createRulesetOptions, { String inboxId, String phoneId }) async
    test('test createNewRuleset', () async {
      // TODO
    });

    // Delete a ruleset
    //
    // Delete ruleset
    //
    //Future deleteRuleset(String id) async
    test('test deleteRuleset', () async {
      // TODO
    });

    // Delete rulesets
    //
    // Delete rulesets. Accepts optional inboxId or phoneId filters.
    //
    //Future deleteRulesets({ String inboxId, String phoneId }) async
    test('test deleteRulesets', () async {
      // TODO
    });

    // Get a ruleset
    //
    // Get ruleset
    //
    //Future<RulesetDto> getRuleset(String id) async
    test('test getRuleset', () async {
      // TODO
    });

    // List rulesets block and allow lists
    //
    // List all rulesets attached to an inbox or phone or account
    //
    //Future<PageRulesetDto> getRulesets({ String inboxId, String phoneId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getRulesets', () async {
      // TODO
    });

    // Test inbox rulesets for inbox
    //
    // Test inbox rulesets for inbox
    //
    //Future<InboxRulesetTestResult> testInboxRulesetsForInbox(String inboxId, RulesetTestOptions rulesetTestOptions) async
    test('test testInboxRulesetsForInbox', () async {
      // TODO
    });

    // Test new ruleset
    //
    // Test new ruleset
    //
    //Future<InboxRulesetTestResult> testNewRuleset(TestNewInboxRulesetOptions testNewInboxRulesetOptions) async
    test('test testNewRuleset', () async {
      // TODO
    });

    // Test a ruleset
    //
    // Test an inbox or phone ruleset
    //
    //Future<InboxRulesetTestResult> testRuleset(String id, RulesetTestOptions rulesetTestOptions) async
    test('test testRuleset', () async {
      // TODO
    });

    // Test receiving with rulesets
    //
    // Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS
    //
    //Future<TestRulesetReceivingResult> testRulesetReceiving(TestRulesetReceivingOptions testRulesetReceivingOptions) async
    test('test testRulesetReceiving', () async {
      // TODO
    });

    // Test sending with rulesets
    //
    // Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS
    //
    //Future<TestRulesetSendingResult> testRulesetSending(TestInboxRulesetSendingOptions testInboxRulesetSendingOptions) async
    test('test testRulesetSending', () async {
      // TODO
    });

  });
}
