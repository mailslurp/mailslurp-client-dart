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

// tests for DomainDto
void main() {
  // final instance = DomainDto();

  group('test DomainDto', () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Custom domain name
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Verification tokens
    // String verificationToken
    test('to test the property `verificationToken`', () async {
      // TODO
    });

    // Unique token DKIM tokens
    // List<String> dkimTokens (default value: const [])
    test('to test the property `dkimTokens`', () async {
      // TODO
    });

    // If the domain is duplicate records.
    // String duplicateRecordsMessage
    test('to test the property `duplicateRecordsMessage`', () async {
      // TODO
    });

    // Whether the domain has duplicated required records. If true then see the domain in the dashboard app.
    // bool hasDuplicateRecords
    test('to test the property `hasDuplicateRecords`', () async {
      // TODO
    });

    // If the domain is missing records then show which pairs are missing.
    // String missingRecordsMessage
    test('to test the property `missingRecordsMessage`', () async {
      // TODO
    });

    // Whether the domain has missing required records. If true then see the domain in the dashboard app.
    // bool hasMissingRecords
    test('to test the property `hasMissingRecords`', () async {
      // TODO
    });

    // Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
    // bool isVerified
    test('to test the property `isVerified`', () async {
      // TODO
    });

    // List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
    // List<DomainNameRecord> domainNameRecords (default value: const [])
    test('to test the property `domainNameRecords`', () async {
      // TODO
    });

    // The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
    // String catchAllInboxId
    test('to test the property `catchAllInboxId`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
    // String domainType
    test('to test the property `domainType`', () async {
      // TODO
    });


  });

}
