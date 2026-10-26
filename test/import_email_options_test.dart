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

// tests for ImportEmailOptions
void main() {
  // final instance = ImportEmailOptions();

  group('test ImportEmailOptions', () {
    // Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an `.eml` file.
    // String rawEmailBase64
    test('to test the property `rawEmailBase64`', () async {
      // TODO
    });

    // Optional external identifier for the imported email source. Useful for correlating imports back to another system.
    // String externalId
    test('to test the property `externalId`', () async {
      // TODO
    });

    // When true the normal inbound receive pipeline runs after persistence, including automations, webhooks, transformers, forwarders, repliers, and related fanout. When false the email is stored only.
    // bool runPipeline (default value: false)
    test('to test the property `runPipeline`', () async {
      // TODO
    });

    // When true MailSlurp rewrites the MIME `Message-ID` header before storing and parsing the email so imported messages do not collide with existing message identities.
    // bool overrideMessageId (default value: true)
    test('to test the property `overrideMessageId`', () async {
      // TODO
    });


  });

}
