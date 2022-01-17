//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for InboxControllerApi
void main() {
  final instance = InboxControllerApi();

  group('tests for InboxControllerApi', () {
    // Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
    //
    // Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
    //
    //Future<InboxDto> createInbox({ String emailAddress, List<String> tags, String name, String description, bool useDomainPool, bool favourite, DateTime expiresAt, int expiresIn, bool allowTeamAccess, String inboxType }) async
    test('test createInbox', () async {
      // TODO
    });

    // Create an inbox ruleset
    //
    // Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    //
    //Future<InboxRulesetDto> createInboxRuleset(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions) async
    test('test createInboxRuleset', () async {
      // TODO
    });

    // Create an inbox with default options. Uses MailSlurp domain pool address and is private.
    //
    //Future<InboxDto> createInboxWithDefaults() async
    test('test createInboxWithDefaults', () async {
      // TODO
    });

    // Create an inbox with options. Extended options for inbox creation.
    //
    // Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
    //
    //Future<InboxDto> createInboxWithOptions(CreateInboxDto createInboxDto) async
    test('test createInboxWithOptions', () async {
      // TODO
    });

    // Delete all inboxes
    //
    // Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
    //
    //Future deleteAllInboxes() async
    test('test deleteAllInboxes', () async {
      // TODO
    });

    // Delete inbox
    //
    // Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
    //
    //Future deleteInbox(String inboxId) async
    test('test deleteInbox', () async {
      // TODO
    });

    // Does inbox exist
    //
    // Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
    //
    //Future<InboxExistsDto> doesInboxExist(String emailAddress) async
    test('test doesInboxExist', () async {
      // TODO
    });

    // Remove expired inboxes
    //
    // Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
    //
    //Future<FlushExpiredInboxesResult> flushExpired({ DateTime before }) async
    test('test flushExpired', () async {
      // TODO
    });

    // List All Inboxes Paginated
    //
    // List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
    //
    //Future<PageInboxProjection> getAllInboxes({ int page, int size, String sort, bool favourite, String search, String tag, bool teamAccess, DateTime since, DateTime before }) async
    test('test getAllInboxes', () async {
      // TODO
    });

    // Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
    //
    // List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
    //
    //Future<List<EmailPreview>> getEmails(String inboxId, { int size, int limit, String sort, int retryTimeout, int delayTimeout, int minCount, bool unreadOnly, DateTime before, DateTime since }) async
    test('test getEmails', () async {
      // TODO
    });

    // Get Inbox. Returns properties of an inbox.
    //
    // Returns an inbox's properties, including its email address and ID.
    //
    //Future<InboxDto> getInbox(String inboxId) async
    test('test getInbox', () async {
      // TODO
    });

    // Get total inbox count
    //
    //Future<CountDto> getInboxCount() async
    test('test getInboxCount', () async {
      // TODO
    });

    // Get email count in inbox
    //
    //Future<CountDto> getInboxEmailCount(String inboxId) async
    test('test getInboxEmailCount', () async {
      // TODO
    });

    // Get inbox emails paginated
    //
    // Get a paginated list of emails in an inbox. Does not hold connections open.
    //
    //Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getInboxEmailsPaginated', () async {
      // TODO
    });

    // Get all inbox IDs
    //
    // Get list of inbox IDs
    //
    //Future<InboxIdsResult> getInboxIds() async
    test('test getInboxIds', () async {
      // TODO
    });

    // Get Inbox Sent Emails
    //
    // Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
    //
    //Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getInboxSentEmails', () async {
      // TODO
    });

    // Get inbox tags
    //
    // Get all inbox tags
    //
    //Future<List<String>> getInboxTags() async
    test('test getInboxTags', () async {
      // TODO
    });

    // List Inboxes and email addresses
    //
    // List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
    //
    //Future<List<InboxDto>> getInboxes({ int size, String sort, DateTime since, DateTime before }) async
    test('test getInboxes', () async {
      // TODO
    });

    // List Organization Inboxes Paginated
    //
    // List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
    //
    //Future<PageOrganizationInboxProjection> getOrganizationInboxes({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getOrganizationInboxes', () async {
      // TODO
    });

    // List inbox rulesets
    //
    // List all rulesets attached to an inbox
    //
    //Future<PageInboxRulesetDto> listInboxRulesets(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test listInboxRulesets', () async {
      // TODO
    });

    // List inbox tracking pixels
    //
    // List all tracking pixels sent from an inbox
    //
    //Future<PageTrackingPixelProjection> listInboxTrackingPixels(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test listInboxTrackingPixels', () async {
      // TODO
    });

    // Send Email
    //
    // Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
    //
    //Future sendEmail(String inboxId, SendEmailOptions sendEmailOptions) async
    test('test sendEmail', () async {
      // TODO
    });

    // Send email and return sent confirmation
    //
    // Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
    //
    //Future<SentEmailDto> sendEmailAndConfirm(String inboxId, SendEmailOptions sendEmailOptions) async
    test('test sendEmailAndConfirm', () async {
      // TODO
    });

    // Send a test email to inbox
    //
    // Send an inbox a test email to test email receiving is working
    //
    //Future sendTestEmail(String inboxId) async
    test('test sendTestEmail', () async {
      // TODO
    });

    // Set inbox favourited state
    //
    // Set and return new favourite state for an inbox
    //
    //Future<InboxDto> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async
    test('test setInboxFavourited', () async {
      // TODO
    });

    // Update Inbox. Change name and description. Email address is not editable.
    //
    // Update editable fields on an inbox
    //
    //Future<InboxDto> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async
    test('test updateInbox', () async {
      // TODO
    });

  });
}
