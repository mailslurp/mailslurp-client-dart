//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for Inbox
void main() {
  final instance = Inbox();

  group('test Inbox', () {
    // When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Description of an inbox for labelling and searching purposes
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    // String expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great most cases. SMTP inboxes are receive only (cannot send) and are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages.
    // String inboxType
    test('to test the property `inboxType`', () async {
      // TODO
    });

    // Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
    // bool readOnly
    test('to test the property `readOnly`', () async {
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

    // ID of user that inbox belongs to
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });


  });

}
