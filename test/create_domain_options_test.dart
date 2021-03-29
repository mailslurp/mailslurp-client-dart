import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateDomainOptions
void main() {
    var instance = new CreateDomainOptions();

  group('test CreateDomainOptions', () {
    // Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
    // bool createdCatchAllInbox (default value: null)
    test('to test the property `createdCatchAllInbox`', () async {
      // TODO
    });

    // Optional description of the domain.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
    // String domain (default value: null)
    test('to test the property `domain`', () async {
      // TODO
    });


  });

}
