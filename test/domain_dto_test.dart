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

    // DNS records for DKIM approval
    // List<String> dkimTokens (default value: [])
    test('to test the property `dkimTokens`', () async {
      // TODO
    });

    // Custom domain name
    // String domain (default value: null)
    test('to test the property `domain`', () async {
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

    // A TXT record that you must place in the DNS settings of the domain to complete domain verification
    // String verificationToken (default value: null)
    test('to test the property `verificationToken`', () async {
      // TODO
    });


  });

}
