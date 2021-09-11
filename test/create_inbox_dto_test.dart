//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateInboxDto
void main() {
  final instance = CreateInboxDto();

  group('test CreateInboxDto', () {
    // DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
    // bool allowTeamAccess
    test('to test the property `allowTeamAccess`', () async {
      // TODO
    });

    // Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    // String emailAddress
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Number of milliseconds that inbox should exist for
    // int expiresIn
    test('to test the property `expiresIn`', () async {
      // TODO
    });

    // Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
    // bool favourite
    test('to test the property `favourite`', () async {
      // TODO
    });

    // HTTP (default) or SMTP inbox type. HTTP inboxes are best for testing while SMTP inboxes are more reliable for public inbound email consumption. When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
    // String inboxType
    test('to test the property `inboxType`', () async {
      // TODO
    });

    // Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    // List<String> tags (default value: const [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
    // bool useDomainPool
    test('to test the property `useDomainPool`', () async {
      // TODO
    });


  });

}
