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
    //Future<ConnectorDto> createConnector(CreateConnectorOptions createConnectorOptions, { String inboxId }) async
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

    // Create an inbox connector sync settings
    //
    // Configure automatic pull or emails from external inboxes using an interval or schedule
    //
    //Future<ConnectorSyncSettingsDto> createConnectorSyncSettings(String id, CreateConnectorSyncSettingsOptions createConnectorSyncSettingsOptions) async
    test('test createConnectorSyncSettings', () async {
      // TODO
    });

    // Create an inbox connector with options
    //
    // Sync emails between external mailboxes and MailSlurp inboxes
    //
    //Future<ConnectorDto> createConnectorWithOptions(CreateConnectorWithOptions createConnectorWithOptions, { String inboxId }) async
    test('test createConnectorWithOptions', () async {
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

    // Create an inbox connector sync settings
    //
    // Configure automatic pull or emails from external inboxes using an interval or schedule
    //
    //Future deleteConnectorSyncSettings(String id) async
    test('test deleteConnectorSyncSettings', () async {
      // TODO
    });

    // Get all inbox connector events
    //
    //Future<PageConnectorEvents> getAllConnectorEvents({ String id, int page, int size, String sort, DateTime since, DateTime before, String eventType }) async
    test('test getAllConnectorEvents', () async {
      // TODO
    });

    // Get an inbox connector
    //
    //Future<ConnectorDto> getConnector(String id) async
    test('test getConnector', () async {
      // TODO
    });

    // Get connector by email address
    //
    // Find an inbox connector by email address
    //
    //Future<OptionalConnectorDto> getConnectorByEmailAddress(String emailAddress) async
    test('test getConnectorByEmailAddress', () async {
      // TODO
    });

    // Get connector by inbox ID
    //
    // Find an inbox connector by inbox ID
    //
    //Future<OptionalConnectorDto> getConnectorByInboxId(String inboxId) async
    test('test getConnectorByInboxId', () async {
      // TODO
    });

    // Get connector by name
    //
    // Find an inbox connector by name
    //
    //Future<OptionalConnectorDto> getConnectorByName(String name) async
    test('test getConnectorByName', () async {
      // TODO
    });

    // Get an inbox connector event
    //
    //Future<ConnectorEventDto> getConnectorEvent(String id) async
    test('test getConnectorEvent', () async {
      // TODO
    });

    // Get an inbox connector events
    //
    //Future<PageConnectorEvents> getConnectorEvents(String id, { int page, int size, String sort, DateTime since, DateTime before, String eventType }) async
    test('test getConnectorEvents', () async {
      // TODO
    });

    // Get an inbox connector IMAP connection
    //
    // Get IMAP connection for external inbox
    //
    //Future<OptionalConnectorImapConnectionDto> getConnectorImapConnection(String id) async
    test('test getConnectorImapConnection', () async {
      // TODO
    });

    // Get SMTP and IMAP connection settings for common mail providers
    //
    // Get common mail provider SMTP and IMAP connection settings
    //
    //Future<ConnectorProviderSettingsDto> getConnectorProviderSettings() async
    test('test getConnectorProviderSettings', () async {
      // TODO
    });

    // Get an inbox connector SMTP connection
    //
    // Get SMTP connection for external inbox
    //
    //Future<OptionalConnectorSmtpConnectionDto> getConnectorSmtpConnection(String id) async
    test('test getConnectorSmtpConnection', () async {
      // TODO
    });

    // Get an inbox connector sync settings
    //
    // Get sync settings for connection with external inbox
    //
    //Future<OptionalConnectorSyncSettingsDto> getConnectorSyncSettings(String id) async
    test('test getConnectorSyncSettings', () async {
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

    // Send from an inbox connector
    //
    //Future<SentEmailDto> sendEmailFromConnector(String id, SendEmailOptions sendEmailOptions, { bool useFallback }) async
    test('test sendEmailFromConnector', () async {
      // TODO
    });

    // Sync an inbox connector
    //
    //Future<ConnectorSyncRequestResult> syncConnector(String id, { DateTime since, String folder, bool logging }) async
    test('test syncConnector', () async {
      // TODO
    });

    // Test an inbox connector IMAP connection
    //
    // Test the IMAP connection for a connector
    //
    //Future<ConnectorImapConnectionTestResult> testConnectorImapConnection(String id, { CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions }) async
    test('test testConnectorImapConnection', () async {
      // TODO
    });

    // Test an inbox connector IMAP connection options
    //
    // Test the IMAP connection options for a connector
    //
    //Future<ConnectorImapConnectionTestResult> testConnectorImapConnectionOptions(CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions) async
    test('test testConnectorImapConnectionOptions', () async {
      // TODO
    });

    // Test an inbox connector SMTP connection
    //
    // Test the SMTP connection for a connector
    //
    //Future<ConnectorSmtpConnectionTestResult> testConnectorSmtpConnection(String id, { CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions }) async
    test('test testConnectorSmtpConnection', () async {
      // TODO
    });

    // Test an inbox connector SMTP connection options
    //
    // Test the SMTP connection options for a connector
    //
    //Future<ConnectorSmtpConnectionTestResult> testConnectorSmtpConnectionOptions(CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions) async
    test('test testConnectorSmtpConnectionOptions', () async {
      // TODO
    });

    // Update an inbox connector
    //
    //Future<ConnectorDto> updateConnector(String id, CreateConnectorOptions createConnectorOptions) async
    test('test updateConnector', () async {
      // TODO
    });

    // Update an inbox connector IMAP connection
    //
    // Update IMAP connection for external inbox
    //
    //Future<ConnectorImapConnectionDto> updateConnectorImapConnection(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions) async
    test('test updateConnectorImapConnection', () async {
      // TODO
    });

    // Update an inbox connector SMTP connection
    //
    // Update SMTP connection for external inbox
    //
    //Future<ConnectorSmtpConnectionDto> updateConnectorSmtpConnection(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions) async
    test('test updateConnectorSmtpConnection', () async {
      // TODO
    });

  });
}
