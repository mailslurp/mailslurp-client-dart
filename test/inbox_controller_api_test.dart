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
    //Future<Inbox> createInbox({ String description, String emailAddress, DateTime expiresAt, bool favourite, String name, List<String> tags }) async 
    test('test createInbox', () async {
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
    // Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
    //
    //Future deleteInbox(String inboxId) async 
    test('test deleteInbox', () async {
      // TODO
    });

    // List Inboxes Paginated
    //
    // List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.
    //
    //Future<PageInboxProjection> getAllInboxes({ bool favourite, int page, String search, int size, String sort, String tag }) async 
    test('test getAllInboxes', () async {
      // TODO
    });

    // Get emails in an Inbox
    //
    // List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
    //
    //Future<List<EmailPreview>> getEmails(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, String sort }) async 
    test('test getEmails', () async {
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
    // List the inboxes you have created
    //
    //Future<List<Inbox>> getInboxes() async 
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
    //Future<SentEmail> sendEmailAndConfirm(String inboxId, { SendEmailOptions sendEmailOptions }) async 
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
