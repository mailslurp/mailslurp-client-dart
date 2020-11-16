import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for CreateOwnedAliasOptions
void main() {
    var instance = new CreateOwnedAliasOptions();

  group('test CreateOwnedAliasOptions', () {
    // Email address to be hidden behind alias
    // String emailAddress (default value: null)
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Optional inbox ID to attach to alias. Emails received by this inbox will be forwarded to the alias email address
    // String inboxId (default value: null)
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Optional name for alias
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional proxied flag. When proxied is true alias will forward the incoming emails to the aliased email address via a proxy inbox. A new proxy is created for every new email thread. By replying to the proxy you can correspond with using your email alias without revealing your real email address.
    // bool proxied (default value: null)
    test('to test the property `proxied`', () async {
      // TODO
    });


  });

}
