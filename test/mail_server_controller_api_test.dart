import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for MailServerControllerApi
void main() {
  var instance = MailServerControllerApi();

  group('tests for MailServerControllerApi', () {
    // Get DNS Mail Server records for a domain
    //
    //Future<DescribeMailServerDomainResult> describeMailServerDomain(DescribeDomainOptions describeOptions) async 
    test('test describeMailServerDomain', () async {
      // TODO
    });

    // Lookup DNS records for a domain
    //
    //Future<DNSLookupResults> getDnsLookup(DNSLookupOptions dnsLookupOptions) async 
    test('test getDnsLookup', () async {
      // TODO
    });

    // Get IP address for a domain
    //
    //Future<IPAddressResult> getIpAddress(String name) async 
    test('test getIpAddress', () async {
      // TODO
    });

    // Verify the existence of an email address at a given mail server.
    //
    //Future<EmailVerificationResult> verifyEmailAddress(VerifyEmailAddressOptions verifyOptions) async 
    test('test verifyEmailAddress', () async {
      // TODO
    });

  });
}
