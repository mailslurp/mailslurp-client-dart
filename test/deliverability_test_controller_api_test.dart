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


/// tests for DeliverabilityTestControllerApi
void main() {
  // final instance = DeliverabilityTestControllerApi();

  group('tests for DeliverabilityTestControllerApi', () {
    // Cancel deliverability simulation job
    //
    // Cancel a running or paused simulation job.
    //
    //Future<DeliverabilitySimulationJobDto> cancelDeliverabilitySimulationJob(String testId, String jobId) async
    test('test cancelDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Create deliverability simulation job
    //
    // Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.
    //
    //Future<DeliverabilitySimulationJobDto> createDeliverabilitySimulationJob(String testId, CreateDeliverabilitySimulationJobOptions createDeliverabilitySimulationJobOptions) async
    test('test createDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Create deliverability/load test
    //
    // Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.
    //
    //Future<DeliverabilityTestDto> createDeliverabilityTest(CreateDeliverabilityTestOptions createDeliverabilityTestOptions) async
    test('test createDeliverabilityTest', () async {
      // TODO
    });

    // Delete deliverability/load test
    //
    // Delete test and all persisted entity-level results.
    //
    //Future<DeleteResult> deleteDeliverabilityTest(String testId) async
    test('test deleteDeliverabilityTest', () async {
      // TODO
    });

    // Duplicate deliverability/load test
    //
    // Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.
    //
    //Future<DeliverabilityTestDto> duplicateDeliverabilityTest(String testId) async
    test('test duplicateDeliverabilityTest', () async {
      // TODO
    });

    // Export deliverability/load test report as PDF
    //
    // Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.
    //
    //Future exportDeliverabilityTestReport(String testId) async
    test('test exportDeliverabilityTestReport', () async {
      // TODO
    });

    // Export deliverability/load test entity results as CSV
    //
    // Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.
    //
    //Future exportDeliverabilityTestResults(String testId, { bool matched }) async
    test('test exportDeliverabilityTestResults', () async {
      // TODO
    });

    // Get deliverability analytics time series
    //
    // Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.
    //
    //Future<DeliverabilityAnalyticsSeriesDto> getDeliverabilityAnalyticsSeries({ DateTime since, DateTime before, String scope, String bucket, int runLimit }) async
    test('test getDeliverabilityAnalyticsSeries', () async {
      // TODO
    });

    // Get deliverability failure hotspots
    //
    // Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.
    //
    //Future<DeliverabilityFailureHotspotsDto> getDeliverabilityFailureHotspots({ DateTime since, DateTime before, String scope, int limit }) async
    test('test getDeliverabilityFailureHotspots', () async {
      // TODO
    });

    // Get deliverability simulation job
    //
    // Get simulation job status and progress counters.
    //
    //Future<DeliverabilitySimulationJobDto> getDeliverabilitySimulationJob(String testId, String jobId) async
    test('test getDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Get deliverability simulation job events
    //
    // Get paged simulation events including send successes and failures.
    //
    //Future<DeliverabilitySimulationJobEventPageDto> getDeliverabilitySimulationJobEvents(String testId, String jobId, { int page, int size, String sort }) async
    test('test getDeliverabilitySimulationJobEvents', () async {
      // TODO
    });

    // Get deliverability/load test
    //
    // Get deliverability test configuration and latest progress counters.
    //
    //Future<DeliverabilityTestDto> getDeliverabilityTest(String testId) async
    test('test getDeliverabilityTest', () async {
      // TODO
    });

    // Get deliverability/load test entity results
    //
    // Get paged per-entity expectation results with optional matched/unmatched filtering.
    //
    //Future<DeliverabilityEntityResultPageDto> getDeliverabilityTestResults(String testId, { bool matched, int page, int size, String sort }) async
    test('test getDeliverabilityTestResults', () async {
      // TODO
    });

    // List deliverability/load tests
    //
    // List deliverability tests for the authenticated account.
    //
    //Future<DeliverabilityTestPageDto> getDeliverabilityTests({ int page, int size, String sort }) async
    test('test getDeliverabilityTests', () async {
      // TODO
    });

    // Get latest deliverability simulation job
    //
    // Get the most recent simulation job for a deliverability test.
    //
    //Future<DeliverabilitySimulationJobDto> getLatestDeliverabilitySimulationJob(String testId) async
    test('test getLatestDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Pause deliverability simulation job
    //
    // Pause a running simulation job.
    //
    //Future<DeliverabilitySimulationJobDto> pauseDeliverabilitySimulationJob(String testId, String jobId) async
    test('test pauseDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Pause deliverability/load test
    //
    // Pause a RUNNING or SCHEDULED deliverability test.
    //
    //Future<DeliverabilityTestDto> pauseDeliverabilityTest(String testId) async
    test('test pauseDeliverabilityTest', () async {
      // TODO
    });

    // Poll deliverability/load test status
    //
    // Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.
    //
    //Future<DeliverabilityPollStatusResultDto> pollDeliverabilityTestStatus(String testId) async
    test('test pollDeliverabilityTestStatus', () async {
      // TODO
    });

    // Resume deliverability simulation job
    //
    // Resume a paused simulation job.
    //
    //Future<DeliverabilitySimulationJobDto> resumeDeliverabilitySimulationJob(String testId, String jobId) async
    test('test resumeDeliverabilitySimulationJob', () async {
      // TODO
    });

    // Start or resume deliverability/load test
    //
    // Start a CREATED test or resume a PAUSED/SCHEDULED test.
    //
    //Future<DeliverabilityTestDto> startDeliverabilityTest(String testId) async
    test('test startDeliverabilityTest', () async {
      // TODO
    });

    // Stop deliverability/load test
    //
    // Stop a deliverability test and mark it terminal.
    //
    //Future<DeliverabilityTestDto> stopDeliverabilityTest(String testId) async
    test('test stopDeliverabilityTest', () async {
      // TODO
    });

    // Update deliverability/load test
    //
    // Update metadata, timeout, and expectations for a non-running non-terminal test.
    //
    //Future<DeliverabilityTestDto> updateDeliverabilityTest(String testId, UpdateDeliverabilityTestOptions updateDeliverabilityTestOptions) async
    test('test updateDeliverabilityTest', () async {
      // TODO
    });

  });
}
