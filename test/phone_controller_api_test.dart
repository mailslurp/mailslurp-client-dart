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


/// tests for PhoneControllerApi
void main() {
  // final instance = PhoneControllerApi();

  group('tests for PhoneControllerApi', () {
    // Create an emergency address
    //
    // Add an emergency address to a phone number
    //
    //Future<EmergencyAddress> createEmergencyAddress(CreateEmergencyAddressOptions createEmergencyAddressOptions) async
    test('test createEmergencyAddress', () async {
      // TODO
    });

    // Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
    //
    // Create new phone number
    //
    //Future<PhoneNumberDto> createPhoneNumber(CreatePhoneNumberOptions createPhoneNumberOptions) async
    test('test createPhoneNumber', () async {
      // TODO
    });

    // Delete an emergency address
    //
    // Delete an emergency address
    //
    //Future<EmptyResponseDto> deleteEmergencyAddress(String addressId) async
    test('test deleteEmergencyAddress', () async {
      // TODO
    });

    // Delete a phone number
    //
    // Remove phone number from account
    //
    //Future deletePhoneNumber(String phoneNumberId) async
    test('test deletePhoneNumber', () async {
      // TODO
    });

    // Get the latest messages for all phones
    //
    // List all message threads for all phones
    //
    //Future<PagePhoneMessageThreadProjection> getAllPhoneMessageThreads({ int page, int size }) async
    test('test getAllPhoneMessageThreads', () async {
      // TODO
    });

    // Get consent status
    //
    // Get the status of phone usage consent
    //
    //Future<ConsentStatusDto> getConsentStatus() async
    test('test getConsentStatus', () async {
      // TODO
    });

    // Get an emergency address
    //
    // Fetch an emergency address by ID
    //
    //Future<EmergencyAddress> getEmergencyAddress(String addressId) async
    test('test getEmergencyAddress', () async {
      // TODO
    });

    // Get emergency addresses
    //
    // List emergency addresses
    //
    //Future<List<EmergencyAddressDto>> getEmergencyAddresses() async
    test('test getEmergencyAddresses', () async {
      // TODO
    });

    // Get messages in a phone thread
    //
    // List message thread messages for a phone message thread
    //
    //Future<PagePhoneMessageThreadItemProjection> getPhoneMessageThreadItems(String phoneNumberId, String otherNumber, { int page, int size }) async
    test('test getPhoneMessageThreadItems', () async {
      // TODO
    });

    // Get the latest message preview for a thread
    //
    // List message threads for a phone
    //
    //Future<PagePhoneMessageThreadProjection> getPhoneMessageThreads(String phoneNumberId, { int page, int size }) async
    test('test getPhoneMessageThreads', () async {
      // TODO
    });

    // Get a phone number by ID
    //
    // Get a phone number by ID
    //
    //Future<PhoneNumberDto> getPhoneNumber(String phoneNumberId) async
    test('test getPhoneNumber', () async {
      // TODO
    });

    // Get a phone number by name
    //
    // Get a phone number by name
    //
    //Future<PhoneNumberDto> getPhoneNumberByName() async
    test('test getPhoneNumberByName', () async {
      // TODO
    });

    // Get a phone number by phone number
    //
    // Get a phone number by phone number
    //
    //Future<PhoneNumberDto> getPhoneNumberByPhoneNumber() async
    test('test getPhoneNumberByPhoneNumber', () async {
      // TODO
    });

    // Get phone numbers
    //
    // List phone numbers for account
    //
    //Future<PagePhoneNumberProjection> getPhoneNumbers({ String phoneCountry, int page, int size, String sort, DateTime since, DateTime before, String search, List<String> include, bool favourite }) async
    test('test getPhoneNumbers', () async {
      // TODO
    });

    // Get phone plans
    //
    // Get phone number plans
    //
    //Future<List<PhonePlanDto>> getPhonePlans() async
    test('test getPhonePlans', () async {
      // TODO
    });

    // Get phone plans availability
    //
    //Future<PhonePlanAvailability> getPhonePlansAvailability() async
    test('test getPhonePlansAvailability', () async {
      // TODO
    });

    // List sent TXT messages for a phone number
    //
    // Get sent SMS messages for a phone number
    //
    //Future<PageSentSmsProjection> getSentSmsByPhoneNumber(String phoneNumberId, { int page, int size, String sort, DateTime since, DateTime before, String search }) async
    test('test getSentSmsByPhoneNumber', () async {
      // TODO
    });

    // List SMS messages for a phone number
    //
    // Get SMS messages for a phone number
    //
    //Future<PageSmsProjection> getSmsByPhoneNumber(String phoneNumberId, { int page, int size, String sort, bool unreadOnly, DateTime since, DateTime before, String search, bool favourite }) async
    test('test getSmsByPhoneNumber', () async {
      // TODO
    });

    // Send TXT message from a phone number
    //
    // Send SMS from a phone number
    //
    //Future<SentSmsDto> sendSmsFromPhoneNumber(String phoneNumberId, SmsSendOptions smsSendOptions) async
    test('test sendSmsFromPhoneNumber', () async {
      // TODO
    });

    // Set consent status
    //
    // Give or revoke consent for phone usage
    //
    //Future<ConsentStatusDto> setConsentStatus(bool agree) async
    test('test setConsentStatus', () async {
      // TODO
    });

    // Set phone favourited state
    //
    // Set and return new favorite state for a phone
    //
    //Future<PhoneNumberDto> setPhoneFavourited(String phoneNumberId, SetPhoneFavouritedOptions setPhoneFavouritedOptions) async
    test('test setPhoneFavourited', () async {
      // TODO
    });

    // Test sending an SMS to a number
    //
    // Test a phone number by sending an SMS to it
    //
    //Future testPhoneNumberSendSms(String phoneNumberId, TestPhoneNumberOptions testPhoneNumberOptions, { String xTestId }) async
    test('test testPhoneNumberSendSms', () async {
      // TODO
    });

    // Update a phone number
    //
    // Set field for phone number
    //
    //Future<PhoneNumberDto> updatePhoneNumber(String phoneNumberId, UpdatePhoneNumberOptions updatePhoneNumberOptions) async
    test('test updatePhoneNumber', () async {
      // TODO
    });

    // Verify validity of a phone number
    //
    // Validate a phone number
    //
    //Future<PhoneNumberValidationDto> validatePhoneNumber(ValidatePhoneNumberOptions validatePhoneNumberOptions) async
    test('test validatePhoneNumber', () async {
      // TODO
    });

  });
}
