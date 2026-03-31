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


/// tests for DevicePreviewsControllerApi
void main() {
  // final instance = DevicePreviewsControllerApi();

  group('tests for DevicePreviewsControllerApi', () {
    // Cancel a running device preview run
    //
    //Future<CancelDevicePreviewRunResult> cancelDevicePreviewRun(String runId, { CancelDevicePreviewRunOptions cancelDevicePreviewRunOptions }) async
    test('test cancelDevicePreviewRun', () async {
      // TODO
    });

    // Create device preview feedback
    //
    //Future<DevicePreviewFeedbackDto> createDevicePreviewFeedback(CreateDevicePreviewFeedbackOptions createDevicePreviewFeedbackOptions) async
    test('test createDevicePreviewFeedback', () async {
      // TODO
    });

    // Create a new device preview run for an email
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRun(String emailId, { CreateDevicePreviewOptions createDevicePreviewOptions }) async
    test('test createDevicePreviewRun', () async {
      // TODO
    });

    // Delete local device preview run data
    //
    //Future<DeleteDevicePreviewRunResult> deleteDevicePreviewRun(String runId) async
    test('test deleteDevicePreviewRun', () async {
      // TODO
    });

    // Return active run for email or create one when none exists
    //
    //Future<CreateDevicePreviewRunResult> ensureDevicePreviewRun(String emailId, { CreateDevicePreviewOptions createDevicePreviewOptions }) async
    test('test ensureDevicePreviewRun', () async {
      // TODO
    });

    // Get a single device preview feedback item
    //
    //Future<DevicePreviewFeedbackDto> getDevicePreviewFeedback(String feedbackId) async
    test('test getDevicePreviewFeedback', () async {
      // TODO
    });

    // List device preview feedback
    //
    //Future<DevicePreviewFeedbackListDto> getDevicePreviewFeedbackItems({ int page, int size, String source_, String runId, String status, String provider, String category, String search }) async
    test('test getDevicePreviewFeedbackItems', () async {
      // TODO
    });

    // Get device preview run status
    //
    //Future<DevicePreviewRunDto> getDevicePreviewRun(String runId) async
    test('test getDevicePreviewRun', () async {
      // TODO
    });

    // Get provider-level progress for a device preview run
    //
    //Future<DevicePreviewProviderProgressDto> getDevicePreviewRunProviderProgress(String runId, String provider) async
    test('test getDevicePreviewRunProviderProgress', () async {
      // TODO
    });

    // Get device preview run results
    //
    //Future<DevicePreviewRunResultsDto> getDevicePreviewRunResults(String runId) async
    test('test getDevicePreviewRunResults', () async {
      // TODO
    });

    // Get a seeded device preview screenshot image
    //
    //Future<String> getDevicePreviewRunScreenshot(String runId, String screenshotId) async
    test('test getDevicePreviewRunScreenshot', () async {
      // TODO
    });

    // List previous device preview runs for an email
    //
    //Future<List<DevicePreviewRunDto>> getDevicePreviewRuns(String emailId, { int limit }) async
    test('test getDevicePreviewRuns', () async {
      // TODO
    });

    // List previous device preview runs for account
    //
    //Future<List<DevicePreviewRunDto>> getDevicePreviewRunsForAccount({ int limit }) async
    test('test getDevicePreviewRunsForAccount', () async {
      // TODO
    });

    // List previous device preview runs for an email in paginated form
    //
    //Future<PageDevicePreviewRunProjection> getDevicePreviewRunsOffsetPaginated(String emailId, { int page, int size, String sort }) async
    test('test getDevicePreviewRunsOffsetPaginated', () async {
      // TODO
    });

    // Update device preview feedback
    //
    //Future<DevicePreviewFeedbackDto> updateDevicePreviewFeedback(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions) async
    test('test updateDevicePreviewFeedback', () async {
      // TODO
    });

  });
}
