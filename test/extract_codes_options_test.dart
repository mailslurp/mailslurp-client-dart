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

// tests for ExtractCodesOptions
void main() {
  // final instance = ExtractCodesOptions();

  group('test ExtractCodesOptions', () {
    // Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
    // String method
    test('to test the property `method`', () async {
      // TODO
    });

    // Allow fallback to deterministic pattern extraction when the selected method is unavailable.
    // bool allowFallback (default value: true)
    test('to test the property `allowFallback`', () async {
      // TODO
    });

    // Minimum code length to consider. Typical OTP values are between 4 and 8 characters.
    // int minLength (default value: 4)
    test('to test the property `minLength`', () async {
      // TODO
    });

    // Maximum code length to consider.
    // int maxLength (default value: 10)
    test('to test the property `maxLength`', () async {
      // TODO
    });

    // Maximum number of code candidates to return. Best candidate is also returned separately.
    // int maxCandidates (default value: 5)
    test('to test the property `maxCandidates`', () async {
      // TODO
    });

    // Optional custom regex patterns for code extraction. Each pattern should have either one capture group for the code or match the full code directly.
    // List<String> customPatterns (default value: const [])
    test('to test the property `customPatterns`', () async {
      // TODO
    });


  });

}
