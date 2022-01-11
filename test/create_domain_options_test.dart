//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateDomainOptions
void main() {
  final instance = CreateDomainOptions();

  group('test CreateDomainOptions', () {
    // The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Optional description of the domain.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
    // bool createdCatchAllInbox
    test('to test the property `createdCatchAllInbox`', () async {
      // TODO
    });

    // Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
    // String domainType
    test('to test the property `domainType`', () async {
      // TODO
    });


  });

}
