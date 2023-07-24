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

// tests for CreateAliasOptions
void main() {
  // final instance = CreateAliasOptions();

  group('test CreateAliasOptions', () {
    // Email address to be hidden behind alias. Emails sent to the alias email address will be forwarded to this address. If you want to enable replies set useThreads true and the reply-to for the email will allow outbound communication via a thread. Some email addresses may require verification if they are not added as a contact first.
    // String emailAddress
    test('to test the property `emailAddress`', () async {
      // TODO
    });

    // Optional inbox ID to attach to alias. Null by default means an a new inbox will be created for the alias. Use a custom inbox to control what email address the alias uses. To use custom email addresses create a domain and an inbox, the use the inbox ID with this call. Emails received by this inbox will be forwarded to the alias email address
    // String inboxId
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Optional name for alias
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Enable threads options. If true emails will be sent with a unique reply-to thread address. This means you can reply to the forwarded email and it will be sent to the recipients via your alias address. That way a thread conversation is preserved.
    // bool useThreads
    test('to test the property `useThreads`', () async {
      // TODO
    });


  });

}
