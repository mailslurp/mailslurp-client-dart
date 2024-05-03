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

// tests for OrganizationInboxProjection
void main() {
  // final instance = OrganizationInboxProjection();

  group('test OrganizationInboxProjection', () {
    // ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // ID of custom domain used by the inbox if any
    // String domainId
    test('to test the property `domainId`', () async {
      // TODO
    });

    // When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: const [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
    // bool teamAccess
    test('to test the property `teamAccess`', () async {
      // TODO
    });

    // Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
    // String inboxType
    test('to test the property `inboxType`', () async {
      // TODO
    });

    // Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
    // bool virtualInbox
    test('to test the property `virtualInbox`', () async {
      // TODO
    });

    // Inbox function if used as a primitive for another system.
    // String functionsAs
    test('to test the property `functionsAs`', () async {
      // TODO
    });


  });

}
