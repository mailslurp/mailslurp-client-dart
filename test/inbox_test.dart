import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Inbox
void main() {
    var instance = new Inbox();

  group('test Inbox', () {
    // When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Description of an inbox for labelling and searching purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    // String expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Name of the inbox. Displayed in the dashboard for easier search
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Is the inbox readOnly for the caller. Read only means can not be deleted or modified.
    // bool readOnly (default value: null)
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it.
    // bool teamAccess (default value: null)
    test('to test the property `teamAccess`', () async {
      // TODO
    });

    // ID of user that inbox belongs to
    // String userId (default value: null)
    test('to test the property `userId`', () async {
      // TODO
    });


  });

}
