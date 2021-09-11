//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for InboxRulesetControllerApi
void main() {
  final instance = InboxRulesetControllerApi();

  group('tests for InboxRulesetControllerApi', () {
    // Create an inbox ruleset
    //
    // Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    //
    //Future<InboxRulesetDto> createNewInboxRuleset(CreateInboxRulesetOptions createInboxRulesetOptions, { String inboxId }) async
    test('test createNewInboxRuleset', () async {
      // TODO
    });

    // Delete an inbox ruleset
    //
    // Delete inbox ruleset
    //
    //Future deleteInboxRuleset(String id) async
    test('test deleteInboxRuleset', () async {
      // TODO
    });

    // Delete inbox rulesets
    //
    // Delete inbox rulesets. Accepts optional inboxId filter.
    //
    //Future deleteInboxRulesets({ String inboxId }) async
    test('test deleteInboxRulesets', () async {
      // TODO
    });

    // Get an inbox ruleset
    //
    // Get inbox ruleset
    //
    //Future<InboxRulesetDto> getInboxRuleset(String id) async
    test('test getInboxRuleset', () async {
      // TODO
    });

    // List inbox rulesets
    //
    // List all rulesets attached to an inbox
    //
    //Future<PageInboxRulesetDto> getInboxRulesets({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async
    test('test getInboxRulesets', () async {
      // TODO
    });

    // Test an inbox ruleset
    //
    // Test an inbox ruleset
    //
    //Future<InboxRulesetTestResult> testInboxRuleset(String id, InboxRulesetTestOptions inboxRulesetTestOptions) async
    test('test testInboxRuleset', () async {
      // TODO
    });

    // Test inbox rulesets for inbox
    //
    // Test inbox rulesets for inbox
    //
    //Future<InboxRulesetTestResult> testInboxRulesetsForInbox(String inboxId, InboxRulesetTestOptions inboxRulesetTestOptions) async
    test('test testInboxRulesetsForInbox', () async {
      // TODO
    });

    // Test new inbox ruleset
    //
    // Test new inbox ruleset
    //
    //Future<InboxRulesetTestResult> testNewInboxRuleset(TestNewInboxRulesetOptions testNewInboxRulesetOptions) async
    test('test testNewInboxRuleset', () async {
      // TODO
    });

  });
}
