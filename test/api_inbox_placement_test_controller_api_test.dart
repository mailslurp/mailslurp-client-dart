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


/// tests for ApiInboxPlacementTestControllerApi
void main() {
  // final instance = ApiInboxPlacementTestControllerApi();

  group('tests for ApiInboxPlacementTestControllerApi', () {
    // Confirm an inbox placement test email has been sent
    //
    // Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.
    //
    //Future<InboxPlacementTestRunDto> confirmInboxPlacementTestSent(String id) async
    test('test confirmInboxPlacementTestSent', () async {
      // TODO
    });

    // Create a new direct-send inbox placement test
    //
    //Future<InboxPlacementTestRunDto> createInboxPlacementTest(CreateInboxPlacementTestOptions createInboxPlacementTestOptions) async
    test('test createInboxPlacementTest', () async {
      // TODO
    });

    // Download inbox placement seed addresses as an email-platform CSV
    //
    // Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.
    //
    //Future exportInboxPlacementSeedList(String id, { String provider }) async
    test('test exportInboxPlacementSeedList', () async {
      // TODO
    });

    // Export inbox placement test results as CSV
    //
    // Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.
    //
    //Future exportInboxPlacementTestResults(String id) async
    test('test exportInboxPlacementTestResults', () async {
      // TODO
    });

    // Get inbox placement analytics breakdowns
    //
    // Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.
    //
    //Future<InboxPlacementAnalyticsBreakdownDto> getInboxPlacementAnalyticsBreakdown({ DateTime since, DateTime before, String senderDomain, String fromEmail, int limit }) async
    test('test getInboxPlacementAnalyticsBreakdown', () async {
      // TODO
    });

    // Get inbox placement analytics time series
    //
    // Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.
    //
    //Future<InboxPlacementAnalyticsSeriesDto> getInboxPlacementAnalyticsSeries({ DateTime since, DateTime before, String bucket, String groupBy, String senderDomain, String fromEmail, int runLimit, int groupLimit }) async
    test('test getInboxPlacementAnalyticsSeries', () async {
      // TODO
    });

    // Get a public inbox placement share
    //
    //Future<InboxPlacementPublicShareDto> getInboxPlacementPublicShare(String shareToken) async
    test('test getInboxPlacementPublicShare', () async {
      // TODO
    });

    // Get public inbox placement share analysis
    //
    //Future<InboxPlacementAnalysisBundleDto> getInboxPlacementPublicShareAnalysis(String shareToken) async
    test('test getInboxPlacementPublicShareAnalysis', () async {
      // TODO
    });

    // Get inbox placement test run
    //
    //Future<InboxPlacementTestRunDto> getInboxPlacementTest(String id) async
    test('test getInboxPlacementTest', () async {
      // TODO
    });

    // Get inbox placement run analysis
    //
    //Future<InboxPlacementAnalysisBundleDto> getInboxPlacementTestAnalysis(String id) async
    test('test getInboxPlacementTestAnalysis', () async {
      // TODO
    });

    // Get inbox placement test results
    //
    //Future<InboxPlacementTestResultsDto> getInboxPlacementTestResults(String id) async
    test('test getInboxPlacementTestResults', () async {
      // TODO
    });

    // List inbox placement test runs
    //
    //Future<List<InboxPlacementTestRunDto>> getInboxPlacementTests({ int limit }) async
    test('test getInboxPlacementTests', () async {
      // TODO
    });

    // Prepare a direct-send inbox placement test without consuming allowance
    //
    // Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.
    //
    //Future<InboxPlacementTestRunDto> prepareInboxPlacementTest(CreateInboxPlacementTestOptions createInboxPlacementTestOptions) async
    test('test prepareInboxPlacementTest', () async {
      // TODO
    });

  });
}
