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

    // Verify the existence of an email address at a given mail server.
    //
    //Future<EmailVerificationResult> verifyEmailAddress(VerifyEmailAddressOptions verifyOptions) async 
    test('test verifyEmailAddress', () async {
      // TODO
    });

  });
}
