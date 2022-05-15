//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for SendEmailOptions
void main() {
  final instance = SendEmailOptions();

  group('test SendEmailOptions', () {
    // Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
    // List<String> toContacts (default value: const [])
    test('to test the property `toContacts`', () async {
      // TODO
    });

    // Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
    // String toGroup
    test('to test the property `toGroup`', () async {
      // TODO
    });

    // List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing.
    // List<String> to (default value: const [])
    test('to test the property `to`', () async {
      // TODO
    });

    // Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. If you set `useInboxName` to `true` the from field will include the inbox name as a display name: `inbox_name <inbox@address.com>`. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used.
    // String from
    test('to test the property `from`', () async {
      // TODO
    });

    // Optional list of cc destination email addresses
    // List<String> cc (default value: const [])
    test('to test the property `cc`', () async {
      // TODO
    });

    // Optional list of bcc destination email addresses
    // List<String> bcc (default value: const [])
    test('to test the property `bcc`', () async {
      // TODO
    });

    // Optional email subject line
    // String subject
    test('to test the property `subject`', () async {
      // TODO
    });

    // Optional replyTo header
    // String replyTo
    test('to test the property `replyTo`', () async {
      // TODO
    });

    // Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // Optional HTML flag to indicate that contents is HTML. Set's a `content-type: text/html` for email. (Deprecated: use `isHTML` instead.)
    // bool html
    test('to test the property `html`', () async {
      // TODO
    });

    // Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
    // bool isHTML
    test('to test the property `isHTML`', () async {
      // TODO
    });

    // Optional charset
    // String charset
    test('to test the property `charset`', () async {
      // TODO
    });

    // Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support `multi-part form`, `base64 file encoding`, and octet stream binary uploads. See the `UploadController` for available methods. 
    // List<String> attachments (default value: const [])
    test('to test the property `attachments`', () async {
      // TODO
    });

    // Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
    // Map<String, Object> templateVariables (default value: const {})
    test('to test the property `templateVariables`', () async {
      // TODO
    });

    // Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
    // String template
    test('to test the property `template`', () async {
      // TODO
    });

    // How an email should be sent based on its recipients
    // String sendStrategy
    test('to test the property `sendStrategy`', () async {
      // TODO
    });

    // Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>` if the inbox has a name.
    // bool useInboxName
    test('to test the property `useInboxName`', () async {
      // TODO
    });

    // Add tracking pixel to email
    // bool addTrackingPixel
    test('to test the property `addTrackingPixel`', () async {
      // TODO
    });

    // Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
    // bool filterBouncedRecipients
    test('to test the property `filterBouncedRecipients`', () async {
      // TODO
    });

    // Validate recipient email addresses before sending
    // String validateEmailAddresses
    test('to test the property `validateEmailAddresses`', () async {
      // TODO
    });


  });

}
