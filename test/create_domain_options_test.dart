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
    // Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
    // bool createdCatchAllInbox
    test('to test the property `createdCatchAllInbox`', () async {
      // TODO
    });

    // Optional description of the domain.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record. SMTP domains can only be used with SMTP inboxes. SMTP inboxes are more reliable for public inbound emails while HTTP inboxes are more suitable for testing.
    // String domainType
    test('to test the property `domainType`', () async {
      // TODO
    });


  });

}
