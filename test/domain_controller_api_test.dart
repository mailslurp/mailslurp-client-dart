import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for DomainControllerApi
void main() {
  var instance = DomainControllerApi();

  group('tests for DomainControllerApi', () {
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

  });
}
