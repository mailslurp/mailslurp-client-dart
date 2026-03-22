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

// tests for CreateDeliverabilityTestOptions
void main() {
  // final instance = CreateDeliverabilityTestOptions();

  group('test CreateDeliverabilityTestOptions', () {
    // Optional name for the test
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional description
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Entity scope to evaluate
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

    // UTC instant when the receive window starts. Defaults to now if omitted.
    // DateTime startAt
    test('to test the property `startAt`', () async {
      // TODO
    });

    // Optional timeout in seconds after startAt. If not all entities match before timeout the test transitions to FAILED.
    // int maxDurationSeconds
    test('to test the property `maxDurationSeconds`', () async {
      // TODO
    });

    // Optional acceptable success threshold percentage (0,100]. If set, a timed-out test can complete successfully when matchedEntities/totalEntities reaches this percentage.
    // double successThresholdPercent
    test('to test the property `successThresholdPercent`', () async {
      // TODO
    });

    // DeliverabilitySelectorOptions selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // One or more expectations to evaluate for each entity
    // List<DeliverabilityExpectation> expectations (default value: const [])
    test('to test the property `expectations`', () async {
      // TODO
    });


  });

}
