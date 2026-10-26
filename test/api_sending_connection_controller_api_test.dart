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


/// tests for ApiSendingConnectionControllerApi
void main() {
  // final instance = ApiSendingConnectionControllerApi();

  group('tests for ApiSendingConnectionControllerApi', () {
    // Create a sending connection
    //
    //Future<SendingConnectionDto> createSendingConnection(CreateSendingConnectionOptions createSendingConnectionOptions) async
    test('test createSendingConnection', () async {
      // TODO
    });

    // Cancel purchased Delivery Sender seats
    //
    //Future<DeliverySenderCapacityDto> deleteDeliverySenderSeats() async
    test('test deleteDeliverySenderSeats', () async {
      // TODO
    });

    // Disconnect a sending connection
    //
    //Future deleteSendingConnection(String connectionId) async
    test('test deleteSendingConnection', () async {
      // TODO
    });

    // Disable Delivery Sender capacity
    //
    // Releases this connection's shared sender allocation while retaining its verified credentials.
    //
    //Future<SendingConnectionDto> disableSendingConnection(String connectionId) async
    test('test disableSendingConnection', () async {
      // TODO
    });

    // Enable a verified Delivery Sender
    //
    // Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.
    //
    //Future<SendingConnectionDto> enableSendingConnection(String connectionId) async
    test('test enableSendingConnection', () async {
      // TODO
    });

    // Get shared Delivery Sender capacity
    //
    //Future<DeliverySenderCapacityDto> getDeliverySenderCapacity() async
    test('test getDeliverySenderCapacity', () async {
      // TODO
    });

    // Get a sending connection
    //
    //Future<SendingConnectionDto> getSendingConnection(String connectionId) async
    test('test getSendingConnection', () async {
      // TODO
    });

    // List sending connection providers
    //
    //Future<List<SendingConnectionProviderDto>> getSendingConnectionProviders() async
    test('test getSendingConnectionProviders', () async {
      // TODO
    });

    // List sending connections
    //
    //Future<List<SendingConnectionDto>> getSendingConnections() async
    test('test getSendingConnections', () async {
      // TODO
    });

    // Send an unbilled delivery test to a temporary MailSlurp inbox
    //
    // Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.
    //
    //Future<SendingConnectionDeliveryProbeDto> probeSendingConnectionDelivery(String connectionId) async
    test('test probeSendingConnectionDelivery', () async {
      // TODO
    });

    // Rotate sending connection credentials
    //
    // Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.
    //
    //Future<SendingConnectionDto> rotateSendingConnectionCredentials(String connectionId, RotateSendingConnectionCredentialsOptions rotateSendingConnectionCredentialsOptions) async
    test('test rotateSendingConnectionCredentials', () async {
      // TODO
    });

    // Update purchased Delivery Sender seats
    //
    //Future<DeliverySenderCapacityDto> updateDeliverySenderSeats(UpdateDeliverySenderSeatsOptions updateDeliverySenderSeatsOptions) async
    test('test updateDeliverySenderSeats', () async {
      // TODO
    });

    // Update a sending connection
    //
    // Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.
    //
    //Future<SendingConnectionDto> updateSendingConnection(String connectionId, UpdateSendingConnectionOptions updateSendingConnectionOptions) async
    test('test updateSendingConnection', () async {
      // TODO
    });

    // Verify a sending connection
    //
    // Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.
    //
    //Future<SendingConnectionDto> verifySendingConnection(String connectionId) async
    test('test verifySendingConnection', () async {
      // TODO
    });

  });
}
