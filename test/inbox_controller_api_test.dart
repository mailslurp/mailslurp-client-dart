import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for InboxControllerApi
void main() {
  var instance = InboxControllerApi();

  group('tests for InboxControllerApi', () {
    // Create an Inbox (email address)
    //
    // Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
    //
    //Future<Inbox> createInbox({ String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String name, List<String> tags, bool useDomainPool }) async 
    test('test createInbox', () async {
      // TODO
    });

    // Create an inbox with additional options
    //
    // Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
    //
    //Future<Inbox> createInboxWithOptions(CreateInboxDto createInboxDto) async 
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

    // List All Inboxes Paginated
    //
    // List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return(, and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
    //
    //Future<PageInboxProjection> getAllInboxes({ bool favourite, int page, String search, int size, String sort, String tag }) async 
    test('test getAllInboxes', () async {
      // TODO
    });

    // Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
    //
    // List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
    //
    //Future<List<EmailPreview>> getEmails(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, int size, String sort }) async 
    test('test getEmails', () async {
      // TODO
    });

    // Get an expired inbox record
    //
    // Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    //
    //Future<ExpiredInboxDto> getExpiredInboxRecordById(String expiredId) async 
    test('test getExpiredInboxRecordById', () async {
      // TODO
    });

    // Get expired inbox record for a previously existing inbox
    //
    // Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    //
    //Future<ExpiredInboxDto> getExpiredInboxRecordByInboxId(String inboxId) async 
    test('test getExpiredInboxRecordByInboxId', () async {
      // TODO
    });

    // List records of expired inboxes
    //
    // Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    //
    //Future<PageExpiredInboxRecordProjection> getExpiredInboxRecords({ int page, int size, String sort }) async 
    test('test getExpiredInboxRecords', () async {
      // TODO
    });

    // Get Inbox
    //
    // Returns an inbox's properties, including its email address and ID.
    //
    //Future<Inbox> getInbox(String inboxId) async 
    test('test getInbox', () async {
      // TODO
    });

    // Get inbox emails paginated
    //
    // Get a paginated list of emails in an inbox. Does not hold connections open.
    //
    //Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { int page, int size, String sort }) async 
    test('test getInboxEmailsPaginated', () async {
      // TODO
    });

    // Get Inbox Sent Emails
    //
    // Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
    //
    //Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { int page, int size, String sort }) async 
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

    // List Inboxes / Email Addresses
    //
    // List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended. You can provide a limit and sort parameter.
    //
    //Future<List<Inbox>> getInboxes({ int size, String sort }) async 
    test('test getInboxes', () async {
      // TODO
    });

    // Send Email
    //
    // Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
    //
    //Future sendEmail(String inboxId, { SendEmailOptions sendEmailOptions }) async 
    test('test sendEmail', () async {
      // TODO
    });

    // Send email and return sent confirmation
    //
    // Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with link the the sent object created for it.
    //
    //Future<SentEmailDto> sendEmailAndConfirm(String inboxId, { SendEmailOptions sendEmailOptions }) async 
    test('test sendEmailAndConfirm', () async {
      // TODO
    });

    // Set inbox favourited state
    //
    // Set and return new favourite state for an inbox
    //
    //Future<Inbox> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async 
    test('test setInboxFavourited', () async {
      // TODO
    });

    // Update Inbox
    //
    // Update editable fields on an inbox
    //
    //Future<Inbox> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async 
    test('test updateInbox', () async {
      // TODO
    });

  });
}
