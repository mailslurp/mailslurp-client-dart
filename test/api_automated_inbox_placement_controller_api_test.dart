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


/// tests for ApiAutomatedInboxPlacementControllerApi
void main() {
  // final instance = ApiAutomatedInboxPlacementControllerApi();

  group('tests for ApiAutomatedInboxPlacementControllerApi', () {
    // Create an encrypted sender connection
    //
    //Future<AutomatedInboxPlacementConnectionDto> createAutomatedInboxPlacementConnection(CreateAutomatedInboxPlacementConnectionOptions createAutomatedInboxPlacementConnectionOptions) async
    test('test createAutomatedInboxPlacementConnection', () async {
      // TODO
    });

    // Create an automated inbox placement schedule
    //
    //Future<AutomatedInboxPlacementScheduleDto> createAutomatedInboxPlacementSchedule(CreateAutomatedInboxPlacementScheduleOptions createAutomatedInboxPlacementScheduleOptions) async
    test('test createAutomatedInboxPlacementSchedule', () async {
      // TODO
    });

    // Disconnect a sender connection
    //
    //Future deleteAutomatedInboxPlacementConnection(String connectionId) async
    test('test deleteAutomatedInboxPlacementConnection', () async {
      // TODO
    });

    // Delete an automated inbox placement schedule
    //
    //Future deleteAutomatedInboxPlacementSchedule(String scheduleId) async
    test('test deleteAutomatedInboxPlacementSchedule', () async {
      // TODO
    });

    // Get a sender connection
    //
    //Future<AutomatedInboxPlacementConnectionDto> getAutomatedInboxPlacementConnection(String connectionId) async
    test('test getAutomatedInboxPlacementConnection', () async {
      // TODO
    });

    // List sender connections
    //
    //Future<List<AutomatedInboxPlacementConnectionDto>> getAutomatedInboxPlacementConnections() async
    test('test getAutomatedInboxPlacementConnections', () async {
      // TODO
    });

    // List non-secret execution events
    //
    //Future<List<AutomatedInboxPlacementEventDto>> getAutomatedInboxPlacementExecutionEvents(String scheduleId, String executionId) async
    test('test getAutomatedInboxPlacementExecutionEvents', () async {
      // TODO
    });

    // List schedule executions
    //
    //Future<List<AutomatedInboxPlacementExecutionDto>> getAutomatedInboxPlacementExecutions(String scheduleId, { int limit }) async
    test('test getAutomatedInboxPlacementExecutions', () async {
      // TODO
    });

    // List automated inbox placement sender providers
    //
    //Future<List<AutomatedInboxPlacementProviderDto>> getAutomatedInboxPlacementProviders() async
    test('test getAutomatedInboxPlacementProviders', () async {
      // TODO
    });

    // Get an automated inbox placement schedule
    //
    //Future<AutomatedInboxPlacementScheduleDto> getAutomatedInboxPlacementSchedule(String scheduleId) async
    test('test getAutomatedInboxPlacementSchedule', () async {
      // TODO
    });

    // Get automation inbox placement analytics over time
    //
    // Returns chart-ready metrics for billed placement runs created by this schedule only.
    //
    //Future<InboxPlacementAnalyticsSeriesDto> getAutomatedInboxPlacementScheduleAnalyticsSeries(String scheduleId, { DateTime since, DateTime before, String bucket, int runLimit }) async
    test('test getAutomatedInboxPlacementScheduleAnalyticsSeries', () async {
      // TODO
    });

    // List automated inbox placement schedules
    //
    //Future<List<AutomatedInboxPlacementScheduleDto>> getAutomatedInboxPlacementSchedules() async
    test('test getAutomatedInboxPlacementSchedules', () async {
      // TODO
    });

    // Rotate sender connection credentials
    //
    // Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.
    //
    //Future<AutomatedInboxPlacementConnectionDto> rotateAutomatedInboxPlacementConnectionCredentials(String connectionId, RotateAutomatedInboxPlacementConnectionCredentialsOptions rotateAutomatedInboxPlacementConnectionCredentialsOptions) async
    test('test rotateAutomatedInboxPlacementConnectionCredentials', () async {
      // TODO
    });

    // Run an automated inbox placement schedule now
    //
    //Future<AutomatedInboxPlacementExecutionDto> runAutomatedInboxPlacementSchedule(String scheduleId) async
    test('test runAutomatedInboxPlacementSchedule', () async {
      // TODO
    });

    // Update a sender connection
    //
    // Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.
    //
    //Future<AutomatedInboxPlacementConnectionDto> updateAutomatedInboxPlacementConnection(String connectionId, UpdateAutomatedInboxPlacementConnectionOptions updateAutomatedInboxPlacementConnectionOptions) async
    test('test updateAutomatedInboxPlacementConnection', () async {
      // TODO
    });

    // Update an automated inbox placement schedule
    //
    //Future<AutomatedInboxPlacementScheduleDto> updateAutomatedInboxPlacementSchedule(String scheduleId, UpdateAutomatedInboxPlacementScheduleOptions updateAutomatedInboxPlacementScheduleOptions) async
    test('test updateAutomatedInboxPlacementSchedule', () async {
      // TODO
    });

    // Verify a sender connection
    //
    //Future<AutomatedInboxPlacementConnectionDto> verifyAutomatedInboxPlacementConnection(String connectionId) async
    test('test verifyAutomatedInboxPlacementConnection', () async {
      // TODO
    });

  });
}
