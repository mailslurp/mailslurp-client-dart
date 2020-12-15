import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateInboxDto
void main() {
    var instance = new CreateInboxDto();

  group('test CreateInboxDto', () {
    // Optional description of an inbox for labelling purposes
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Optionally specify an email address you want the inbox to have. When left blank an email address will be randomly assigned to the inbox usually ending in `@mailslurp.com`. Custom email addresses must include your own custom domain that you have configured in MailSlurp. So if your domain is `mysite.com` you can created any email address ending in `@mysite.com`. All email addresses are transformed to lowercase!
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. Timestamp passed as string.
    // DateTime expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access
    // bool favourite (default value: null)
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Optional name of the inbox. Displayed in the dashboard for easier search
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });


  });

}
