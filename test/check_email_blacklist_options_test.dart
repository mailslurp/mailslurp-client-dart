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

// tests for CheckEmailBlacklistOptions
void main() {
  // final instance = CheckEmailBlacklistOptions();

  group('test CheckEmailBlacklistOptions', () {
    // Domain to check against configured domain blocklists. Domain A and MX addresses are not treated as outbound sending IPs unless includeDomainInfrastructure is explicitly enabled.
    // String domain
    test('to test the property `domain`', () async {
      // TODO
    });

    // Specific observed or configured outbound IPv4 address to check directly
    // String ipAddress
    test('to test the property `ipAddress`', () async {
      // TODO
    });

    // Specific MX host to resolve and check as inbound infrastructure. MX results do not prove outbound sender reputation.
    // String mxHost
    test('to test the property `mxHost`', () async {
      // TODO
    });

    // Explicitly include the domain A address and discovered MX addresses as infrastructure diagnostics. Defaults to false because these addresses are normally not outbound sending IPs.
    // bool includeDomainInfrastructure
    test('to test the property `includeDomainInfrastructure`', () async {
      // TODO
    });

    // String captchaToken
    test('to test the property `captchaToken`', () async {
      // TODO
    });


  });

}
