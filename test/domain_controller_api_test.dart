//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for DomainControllerApi
void main() {
  final instance = DomainControllerApi();

  group('tests for DomainControllerApi', () {
    // Add catch all wild card inbox to domain
    //
    // Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
    //
    //Future<DomainDto> addDomainWildcardCatchAll(String id) async
    test('test addDomainWildcardCatchAll', () async {
      // TODO
    });

    // Create Domain
    //
    // Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
    //
    //Future<DomainDto> createDomain(CreateDomainOptions domainOptions) async
    test('test createDomain', () async {
      // TODO
    });

    // Delete a domain
    //
    // Delete a domain. This will disable any existing inboxes that use this domain.
    //
    //Future<List<String>> deleteDomain(String id) async
    test('test deleteDomain', () async {
      // TODO
    });

    // Get a domain
    //
    // Returns domain verification status and tokens for a given domain
    //
    //Future<DomainDto> getDomain(String id) async
    test('test getDomain', () async {
      // TODO
    });

    // Get domains
    //
    // List all custom domains you have created
    //
    //Future<List<DomainPreview>> getDomains() async
    test('test getDomains', () async {
      // TODO
    });

    // Update a domain
    //
    // Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
    //
    //Future<DomainDto> updateDomain(String id, UpdateDomainOptions updateDomainDto) async
    test('test updateDomain', () async {
      // TODO
    });

  });
}
