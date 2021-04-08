import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for OrganizationInboxProjection
void main() {
    var instance = new OrganizationInboxProjection();

  group('test OrganizationInboxProjection', () {
    // When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
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


  });

}
