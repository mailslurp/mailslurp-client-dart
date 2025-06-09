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


/// tests for MFAControllerApi
void main() {
  // final instance = MFAControllerApi();

  group('tests for MFAControllerApi', () {
    // Create a TOTP device from custom options
    //
    // Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.
    //
    //Future<TotpDeviceDto> createTotpDeviceForCustom(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions) async
    test('test createTotpDeviceForCustom', () async {
      // TODO
    });

    // Create a TOTP device from an OTP Auth URL
    //
    // Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.
    //
    //Future<TotpDeviceDto> createTotpDeviceForOtpAuthUrl(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions) async
    test('test createTotpDeviceForOtpAuthUrl', () async {
      // TODO
    });

    // Get a TOTP device by ID
    //
    // Get Time-Based One-Time Password (TOTP) device by its ID.
    //
    //Future<TotpDeviceDto> getTotpDevice(String id) async
    test('test getTotpDevice', () async {
      // TODO
    });

    // Get a TOTP device by username, issuer, or name. Returns empty if not found.
    //
    // Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.
    //
    //Future<TotpDeviceOptionalDto> getTotpDeviceBy({ String name, String issuer, String username }) async
    test('test getTotpDeviceBy', () async {
      // TODO
    });

    // Get a TOTP device code by device ID
    //
    // Get Time-Based One-Time Password for a device by its ID.
    //
    //Future<TotpDeviceCodeDto> getTotpDeviceCode(String id, { DateTime at }) async
    test('test getTotpDeviceCode', () async {
      // TODO
    });

  });
}
