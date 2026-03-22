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
    // Acquire phone pool lease
    //
    // Acquire an available phone number from the pool and mark it leased
    //
    //Future<PhonePoolLeaseDto> acquirePhonePoolLease(String poolId, AcquirePhonePoolLeaseOptions acquirePhonePoolLeaseOptions) async
    test('test acquirePhonePoolLease', () async {
      // TODO
    });

    // Add all phone numbers to phone pool
    //
    // Add all active owned phone numbers to a pool
    //
    //Future<PhonePoolDetailDto> addAllPhoneNumbersToPhonePool(String poolId) async
    test('test addAllPhoneNumbersToPhonePool', () async {
      // TODO
    });

    // Add phone numbers to phone pool
    //
    // Add one or more owned phone numbers to a pool
    //
    //Future<PhonePoolDetailDto> addPhoneNumbersToPhonePool(String poolId, AddPhonePoolNumbersOptions addPhonePoolNumbersOptions) async
    test('test addPhoneNumbersToPhonePool', () async {
      // TODO
    });

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

    // Create phone pool
    //
    // Create a reusable pool of phone numbers for coordinated leasing
    //
    //Future<PhonePoolDetailDto> createPhonePool(CreatePhonePoolOptions createPhonePoolOptions) async
    test('test createPhonePool', () async {
      // TODO
    });

    // Create a phone provisioning job
    //
    // Create an advanced phone provisioning job from shortlisted numbers
    //
    //Future<PhoneProvisioningJobDto> createPhoneProvisioningJob(CreatePhoneProvisioningJobOptions createPhoneProvisioningJobOptions) async
    test('test createPhoneProvisioningJob', () async {
      // TODO
    });

    // Delete all phone numbers
    //
    // Remove all phone number from account
    //
    //Future deleteAllPhoneNumber() async
    test('test deleteAllPhoneNumber', () async {
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

    // Delete messages in a phone thread
    //
    // Delete all messages in an SMS thread
    //
    //Future<EmptyResponseDto> deletePhoneMessageThreadItems(String phoneNumberId, String otherNumber) async
    test('test deletePhoneMessageThreadItems', () async {
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

    // Delete phone pool
    //
    // Delete a phone pool and release any active leases from that pool
    //
    //Future deletePhonePool(String poolId) async
    test('test deletePhonePool', () async {
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

    // Get all phone number releases
    //
    // List released or deleted phone numbers
    //
    //Future<PagePhoneNumberReleaseProjection> getAllPhoneNumberReleases({ int page, int size, String sort }) async
    test('test getAllPhoneNumberReleases', () async {
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

    // Get or create phone pool
    //
    // Get a phone pool by name or create it if it does not exist
    //
    //Future<PhonePoolDetailDto> getOrCreatePhonePool(GetOrCreatePhonePoolOptions getOrCreatePhonePoolOptions) async
    test('test getOrCreatePhonePool', () async {
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
    //Future<PhoneNumberDto> getPhoneNumberByName(String name) async
    test('test getPhoneNumberByName', () async {
      // TODO
    });

    // Get a phone number by phone number
    //
    // Get a phone number by phone number
    //
    //Future<PhoneNumberDto> getPhoneNumberByPhoneNumber(String phoneNumber) async
    test('test getPhoneNumberByPhoneNumber', () async {
      // TODO
    });

    // Get line type intelligence for a phone number
    //
    // Lookup line type intelligence for a phone number
    //
    //Future<PhoneNumberLineTypeLookupDto> getPhoneNumberLineTypeIntelligence(ValidatePhoneNumberOptions validatePhoneNumberOptions) async
    test('test getPhoneNumberLineTypeIntelligence', () async {
      // TODO
    });

    // Get phone number release
    //
    // Get a released or deleted phone numbers
    //
    //Future<PhoneNumberReleaseProjection> getPhoneNumberRelease(String releaseId) async
    test('test getPhoneNumberRelease', () async {
      // TODO
    });

    // Get phone numbers
    //
    // List phone numbers for account
    //
    //Future<PagePhoneNumberProjection> getPhoneNumbers({ String phoneCountry, String lineType, String carrierName, String mobileCountryCode, String mobileNetworkCode, String providerLabel, int page, int size, String sort, DateTime since, DateTime before, String search, List<String> include, bool favourite }) async
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

    // Get phone pool
    //
    // Get phone pool details by ID
    //
    //Future<PhonePoolDetailDto> getPhonePool(String poolId) async
    test('test getPhonePool', () async {
      // TODO
    });

    // Get phone pool by name
    //
    // Get phone pool details by name
    //
    //Future<PhonePoolDetailDto> getPhonePoolByName(String name) async
    test('test getPhonePoolByName', () async {
      // TODO
    });

    // Get phone pools
    //
    // List phone pools for the authenticated user
    //
    //Future<List<PhonePoolDto>> getPhonePools() async
    test('test getPhonePools', () async {
      // TODO
    });

    // Get phone provisioning capabilities
    //
    // Get supported provider-country variant capabilities for advanced provisioning
    //
    //Future<PhoneProviderCapabilitiesResult> getPhoneProvisioningCapabilities(String phoneCountry, { String providerLabel }) async
    test('test getPhoneProvisioningCapabilities', () async {
      // TODO
    });

    // Get phone provisioning job
    //
    // Get advanced phone provisioning job status
    //
    //Future<PhoneProvisioningJobDto> getPhoneProvisioningJob(String jobId) async
    test('test getPhoneProvisioningJob', () async {
      // TODO
    });

    // Get SMS prepaid credit
    //
    // Get a specific SMS prepaid credit balance for the authenticated account
    //
    //Future<PhoneSmsPrepaidCreditDto> getPhoneSmsPrepaidCredit(String creditId) async
    test('test getPhoneSmsPrepaidCredit', () async {
      // TODO
    });

    // Get SMS prepaid credits
    //
    // List SMS prepaid credits for the authenticated account
    //
    //Future<PhoneSmsPrepaidCreditsDto> getPhoneSmsPrepaidCredits() async
    test('test getPhoneSmsPrepaidCredits', () async {
      // TODO
    });

    // Get phone summary
    //
    // Get overview of assigned phones
    //
    //Future<PhoneSummaryDto> getPhoneSummary() async
    test('test getPhoneSummary', () async {
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

    // Reassign phone number release
    //
    // Reassign phone number that was released or deleted
    //
    //Future<PhoneNumberDto> reassignPhoneNumberRelease(String releaseId) async
    test('test reassignPhoneNumberRelease', () async {
      // TODO
    });

    // Release phone pool lease
    //
    // Release an active phone pool lease
    //
    //Future releasePhonePoolLease(String poolId, String leaseId) async
    test('test releasePhonePoolLease', () async {
      // TODO
    });

    // Remove phone number from phone pool
    //
    // Remove a phone number from a pool. If the number is leased from this pool the lease is released.
    //
    //Future removePhoneNumberFromPhonePool(String poolId, String phoneNumberId) async
    test('test removePhoneNumberFromPhonePool', () async {
      // TODO
    });

    // Search available phone numbers
    //
    // Search available numbers for advanced provisioning
    //
    //Future<AvailablePhoneNumbersResult> searchAvailablePhoneNumbers(SearchAvailablePhoneNumbersOptions searchAvailablePhoneNumbersOptions) async
    test('test searchAvailablePhoneNumbers', () async {
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
    // Test a phone number by sending an SMS to it. NOTE this is only for internal use to check that a phone number is working. For end-to-end phone testing see https://docs.mailslurp.com/txt-sms/
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

    // Update phone pool
    //
    // Update phone pool metadata such as name or description
    //
    //Future<PhonePoolDetailDto> updatePhonePool(String poolId, UpdatePhonePoolOptions updatePhonePoolOptions) async
    test('test updatePhonePool', () async {
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
