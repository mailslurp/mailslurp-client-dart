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

    // Create a device preview folder
    //
    //Future<DevicePreviewFolderDto> createDevicePreviewFolder(CreateDevicePreviewFolderOptions createDevicePreviewFolderOptions) async
    test('test createDevicePreviewFolder', () async {
      // TODO
    });

    // Create a temporary email address for device preview import
    //
    //Future<DevicePreviewIngestAddressDto> createDevicePreviewImportAddress({ CreateDevicePreviewIngestAddressOptions createDevicePreviewIngestAddressOptions }) async
    test('test createDevicePreviewImportAddress', () async {
      // TODO
    });

    // Create a device preview profile
    //
    //Future<DevicePreviewProfileDto> createDevicePreviewProfile(CreateDevicePreviewProfileOptions createDevicePreviewProfileOptions) async
    test('test createDevicePreviewProfile', () async {
      // TODO
    });

    // Create a new device preview run for an email
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRun(String emailId, { CreateDevicePreviewOptions createDevicePreviewOptions }) async
    test('test createDevicePreviewRun', () async {
      // TODO
    });

    // Create a device preview run from an HTML, EML, or ZIP file
    //
    // Uploads an HTML or RFC822 EML file, or a ZIP archive containing exactly one HTML or EML file. ZIP uploads are bounded by entry count, expanded size, and compression ratio.
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRunFromFile(MultipartFile file, { String subject, String from, String to, String sourceAlias, String externalId, List<String> providers, bool allTargets, List<String> targets, bool emailAudit, bool domainMonitor, String senderDomain, String folderId }) async
    test('test createDevicePreviewRunFromFile', () async {
      // TODO
    });

    // Create a device preview run from HTML
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRunFromHtmlImport(CreateDevicePreviewHtmlImportOptions createDevicePreviewHtmlImportOptions) async
    test('test createDevicePreviewRunFromHtmlImport', () async {
      // TODO
    });

    // Create a device preview run from imported raw MIME
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRunFromImport(CreateDevicePreviewImportOptions createDevicePreviewImportOptions) async
    test('test createDevicePreviewRunFromImport', () async {
      // TODO
    });

    // Create a device preview run from multipart EML upload
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRunFromMultipartImport(MultipartFile file, { String sourceAlias, String externalId, bool allTargets, List<String> targets, String folderId }) async
    test('test createDevicePreviewRunFromMultipartImport', () async {
      // TODO
    });

    // Create a device preview run from raw MIME bytes
    //
    //Future<CreateDevicePreviewRunResult> createDevicePreviewRunFromRawImport({ String sourceAlias, String externalId, bool allTargets, List<String> targets, String folderId }) async
    test('test createDevicePreviewRunFromRawImport', () async {
      // TODO
    });

    // Create a share link for a device preview run
    //
    //Future<DevicePreviewShareLinkDto> createDevicePreviewShareLink(String runId, { CreateDevicePreviewShareLinkOptions createDevicePreviewShareLinkOptions }) async
    test('test createDevicePreviewShareLink', () async {
      // TODO
    });

    // Delete a folder, preserving renders and child folders
    //
    //Future<DeleteDevicePreviewFolderResult> deleteDevicePreviewFolder(String folderId) async
    test('test deleteDevicePreviewFolder', () async {
      // TODO
    });

    // Delete a device preview profile
    //
    //Future<DeleteDevicePreviewProfileResult> deleteDevicePreviewProfile(String profileId) async
    test('test deleteDevicePreviewProfile', () async {
      // TODO
    });

    // Delete local device preview run data
    //
    //Future<DeleteDevicePreviewRunResult> deleteDevicePreviewRun(String runId) async
    test('test deleteDevicePreviewRun', () async {
      // TODO
    });

    // Revoke a device preview share link
    //
    //Future<DeleteDevicePreviewShareLinkResult> deleteDevicePreviewShareLink(String shareLinkId) async
    test('test deleteDevicePreviewShareLink', () async {
      // TODO
    });

    // Download the original RFC822 email for a device preview submission
    //
    //Future<MultipartFile> downloadDevicePreviewEmailSubmissionSourceEmail(String submissionId) async
    test('test downloadDevicePreviewEmailSubmissionSourceEmail', () async {
      // TODO
    });

    // Download the original RFC822 email for a device preview run
    //
    //Future<MultipartFile> downloadDevicePreviewRunSourceEmail(String runId) async
    test('test downloadDevicePreviewRunSourceEmail', () async {
      // TODO
    });

    // Return active run for email or create one when none exists
    //
    //Future<CreateDevicePreviewRunResult> ensureDevicePreviewRun(String emailId, { CreateDevicePreviewOptions createDevicePreviewOptions }) async
    test('test ensureDevicePreviewRun', () async {
      // TODO
    });

    // Return account device preview email domain setup or create one
    //
    //Future<DevicePreviewAccountSettingsDto> getDevicePreviewEmailDomainOrCreate() async
    test('test getDevicePreviewEmailDomainOrCreate', () async {
      // TODO
    });

    // List device preview runs created from account email domains
    //
    //Future<List<DevicePreviewRunDto>> getDevicePreviewEmailRuns(DateTime since, { String emailDomainId, String profileId, String localPart, int limit, bool hydrateThumbnail }) async
    test('test getDevicePreviewEmailRuns', () async {
      // TODO
    });

    // Get the original email content for a device preview submission
    //
    //Future<DevicePreviewSourceEmailDto> getDevicePreviewEmailSubmissionSourceEmail(String submissionId) async
    test('test getDevicePreviewEmailSubmissionSourceEmail', () async {
      // TODO
    });

    // List received device preview email submissions
    //
    //Future<List<DevicePreviewEmailSubmissionDto>> getDevicePreviewEmailSubmissions(DateTime since, { String emailDomainId, String profileId, String localPart, int limit, String recipientEmailAddress }) async
    test('test getDevicePreviewEmailSubmissions', () async {
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

    // Get a device preview folder
    //
    //Future<DevicePreviewFolderDto> getDevicePreviewFolder(String folderId) async
    test('test getDevicePreviewFolder', () async {
      // TODO
    });

    // List device preview folders
    //
    //Future<List<DevicePreviewFolderDto>> getDevicePreviewFolders() async
    test('test getDevicePreviewFolders', () async {
      // TODO
    });

    // Get temporary device preview import address status
    //
    //Future<DevicePreviewIngestAddressDto> getDevicePreviewImportAddress(String sessionId) async
    test('test getDevicePreviewImportAddress', () async {
      // TODO
    });

    // Get native device preview target availability
    //
    // Returns live native device preview target availability for authenticated API clients, including worker health, queue, timeout, and status fields. Use `/device-preview-targets` when you need the stable catalog without transient availability data.
    //
    //Future<DevicePreviewNativeTargetAvailabilityListDto> getDevicePreviewNativeTargetAvailability() async
    test('test getDevicePreviewNativeTargetAvailability', () async {
      // TODO
    });

    // Get a device preview profile
    //
    //Future<DevicePreviewProfileDto> getDevicePreviewProfile(String profileId) async
    test('test getDevicePreviewProfile', () async {
      // TODO
    });

    // List device preview profiles
    //
    //Future<List<DevicePreviewProfileDto>> getDevicePreviewProfiles() async
    test('test getDevicePreviewProfiles', () async {
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

    // Get a device preview screenshot image
    //
    //Future<String> getDevicePreviewRunScreenshot(String runId, String screenshotId) async
    test('test getDevicePreviewRunScreenshot', () async {
      // TODO
    });

    // Get the original email content for a device preview run
    //
    //Future<DevicePreviewSourceEmailDto> getDevicePreviewRunSourceEmail(String runId) async
    test('test getDevicePreviewRunSourceEmail', () async {
      // TODO
    });

    // List previous device preview runs for an email
    //
    //Future<List<DevicePreviewRunDto>> getDevicePreviewRuns(String emailId, { int limit, bool hydrateThumbnail }) async
    test('test getDevicePreviewRuns', () async {
      // TODO
    });

    // List previous device preview runs for account
    //
    //Future<List<DevicePreviewRunDto>> getDevicePreviewRunsForAccount({ int limit, bool hydrateThumbnail }) async
    test('test getDevicePreviewRunsForAccount', () async {
      // TODO
    });

    // List previous device preview runs for account in paginated form
    //
    //Future<PageDevicePreviewRunProjection> getDevicePreviewRunsForAccountOffsetPaginated({ int page, int size, String sort, bool hydrateThumbnail, String folderId, bool unfiledOnly, String emailId }) async
    test('test getDevicePreviewRunsForAccountOffsetPaginated', () async {
      // TODO
    });

    // List previous device preview runs for an email in paginated form
    //
    //Future<PageDevicePreviewRunProjection> getDevicePreviewRunsOffsetPaginated(String emailId, { int page, int size, String sort, bool hydrateThumbnail }) async
    test('test getDevicePreviewRunsOffsetPaginated', () async {
      // TODO
    });

    // List share links for a device preview run
    //
    //Future<List<DevicePreviewShareLinkDto>> getDevicePreviewShareLinks(String runId) async
    test('test getDevicePreviewShareLinks', () async {
      // TODO
    });

    // Get a public shared device preview result
    //
    //Future<DevicePreviewSharedResultDto> getDevicePreviewSharedResult(String shareToken) async
    test('test getDevicePreviewSharedResult', () async {
      // TODO
    });

    // Get a public shared device preview screenshot image
    //
    //Future<String> getDevicePreviewSharedResultScreenshot(String shareToken, String screenshotId) async
    test('test getDevicePreviewSharedResultScreenshot', () async {
      // TODO
    });

    // List device preview targets
    //
    // Returns visible native device preview target metadata without worker availability, queue, or health fields.
    //
    //Future<DevicePreviewNativeTargetListDto> getDevicePreviewTargets() async
    test('test getDevicePreviewTargets', () async {
      // TODO
    });

    // Move device preview runs to a folder or Unfiled
    //
    //Future<MoveDevicePreviewRunsResult> moveDevicePreviewRuns(MoveDevicePreviewRunsOptions moveDevicePreviewRunsOptions) async
    test('test moveDevicePreviewRuns', () async {
      // TODO
    });

    // Rerun selected device preview targets in the same run
    //
    // Set failedOnly=false to rerun a successful target. Successful targets consume their configured credit cost again.
    //
    //Future<RerunDevicePreviewTargetsResult> rerunDevicePreviewTargets(String runId, RerunDevicePreviewTargetsOptions rerunDevicePreviewTargetsOptions) async
    test('test rerunDevicePreviewTargets', () async {
      // TODO
    });

    // Update account device preview email subdomain
    //
    //Future<DevicePreviewAccountSettingsDto> updateDevicePreviewEmailDomainSubdomain(UpdateDevicePreviewIngestDomainOptions updateDevicePreviewIngestDomainOptions) async
    test('test updateDevicePreviewEmailDomainSubdomain', () async {
      // TODO
    });

    // Update device preview feedback
    //
    //Future<DevicePreviewFeedbackDto> updateDevicePreviewFeedback(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions) async
    test('test updateDevicePreviewFeedback', () async {
      // TODO
    });

    // Rename or move a device preview folder
    //
    //Future<DevicePreviewFolderDto> updateDevicePreviewFolder(String folderId, UpdateDevicePreviewFolderOptions updateDevicePreviewFolderOptions) async
    test('test updateDevicePreviewFolder', () async {
      // TODO
    });

    // Update a device preview profile
    //
    //Future<DevicePreviewProfileDto> updateDevicePreviewProfile(String profileId, UpdateDevicePreviewProfileOptions updateDevicePreviewProfileOptions) async
    test('test updateDevicePreviewProfile', () async {
      // TODO
    });

    // Wait for device preview runs created from account email domains
    //
    //Future<DevicePreviewIngestRunWaitResult> waitForDevicePreviewEmailRuns(DateTime since, { String emailDomainId, String profileId, String localPart, int limit, int timeoutMillis, int pollIntervalMillis, bool hydrateThumbnail }) async
    test('test waitForDevicePreviewEmailRuns', () async {
      // TODO
    });

    // Wait for received device preview email submissions
    //
    //Future<DevicePreviewEmailSubmissionWaitResult> waitForDevicePreviewEmailSubmissions(DateTime since, { String emailDomainId, String profileId, String localPart, int limit, int timeoutMillis, int pollIntervalMillis, String recipientEmailAddress }) async
    test('test waitForDevicePreviewEmailSubmissions', () async {
      // TODO
    });

    // Wait for device preview run to complete
    //
    //Future<DevicePreviewRunWaitResult> waitForDevicePreviewRun(String runId, { int timeoutMillis, int pollIntervalMillis }) async
    test('test waitForDevicePreviewRun', () async {
      // TODO
    });

  });
}
