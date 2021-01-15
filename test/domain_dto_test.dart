import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for DomainDto
void main() {
    var instance = new DomainDto();

  group('test DomainDto', () {
    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Unique token DKIM tokens
    // List<String> dkimTokens (default value: [])
    test('to test the property `dkimTokens`', () async {
      // TODO
    });

    // Custom domain name
    // String domain (default value: null)
    test('to test the property `domain`', () async {
      // TODO
    });

    // List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
    // List<DomainNameRecord> domainNameRecords (default value: [])
    test('to test the property `domainNameRecords`', () async {
      // TODO
    });

    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
    // bool isVerified (default value: null)
    test('to test the property `isVerified`', () async {
      // TODO
    });

    // DateTime updatedAt (default value: null)
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // String userId (default value: null)
    test('to test the property `userId`', () async {
      // TODO
    });

    // Verification tokens
    // String verificationToken (default value: null)
    test('to test the property `verificationToken`', () async {
      // TODO
    });


  });

}
