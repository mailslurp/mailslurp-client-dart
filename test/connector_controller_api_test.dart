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


/// tests for ConnectorControllerApi
void main() {
  // final instance = ConnectorControllerApi();

  group('tests for ConnectorControllerApi', () {
    // Create an inbox connector
    //
    // Sync emails between external mailboxes and MailSlurp inboxes
    //
    //Future<ConnectorDto> createConnector(CreateConnectorOptions createConnectorOptions) async
    test('test createConnector', () async {
      // TODO
    });

    // Create an inbox connector IMAP connection
    //
    // Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox
    //
    //Future<ConnectorImapConnectionDto> createConnectorImapConnection(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions) async
    test('test createConnectorImapConnection', () async {
      // TODO
    });

    // Create an inbox connector SMTP connection
    //
    // Allows sending via connector and email is routed to connected inbox and sent via SMTP
    //
    //Future<ConnectorSmtpConnectionDto> createConnectorSmtpConnection(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions) async
    test('test createConnectorSmtpConnection', () async {
      // TODO
    });

    // Delete all inbox connectors
    //
    //Future deleteAllConnector() async
    test('test deleteAllConnector', () async {
      // TODO
    });

    // Delete an inbox connector
    //
    //Future deleteConnector(String id) async
    test('test deleteConnector', () async {
      // TODO
    });

    // Delete an inbox connector IMAP connection
    //
    // Delete IMAP connection for external inbox
    //
    //Future deleteConnectorImapConnection(String id) async
    test('test deleteConnectorImapConnection', () async {
      // TODO
    });

    // Delete an inbox connector SMTP connection
    //
    // Delete SMTP connection for external inbox
    //
    //Future deleteConnectorSmtpConnection(String id) async
    test('test deleteConnectorSmtpConnection', () async {
      // TODO
    });

    // Get all inbox connector sync events
    //
    //Future<PageConnectorSyncEvents> getAllConnectorSyncEvents({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getAllConnectorSyncEvents', () async {
      // TODO
    });

    // Get an inbox connector
    //
    //Future<ConnectorDto> getConnector(String id) async
    test('test getConnector', () async {
      // TODO
    });

    // Get an inbox connector sync event
    //
    //Future<ConnectorSyncEventDto> getConnectorSyncEvent(String id) async
    test('test getConnectorSyncEvent', () async {
      // TODO
    });

    // Get an inbox connector sync events
    //
    //Future<PageConnectorSyncEvents> getConnectorSyncEvents(String id, { int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getConnectorSyncEvents', () async {
      // TODO
    });

    // Get inbox connectors
    //
    // List inbox connectors that sync external emails to MailSlurp inboxes
    //
    //Future<PageConnector> getConnectors({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getConnectors', () async {
      // TODO
    });

    // Sync an inbox connector
    //
    //Future<ConnectorSyncRequestResult> syncConnector(String id) async
    test('test syncConnector', () async {
      // TODO
    });

    // Update an inbox connector
    //
    //Future<ConnectorDto> updateConnector(String id, CreateConnectorOptions createConnectorOptions) async
    test('test updateConnector', () async {
      // TODO
    });

  });
}
