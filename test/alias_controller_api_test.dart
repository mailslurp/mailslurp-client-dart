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


/// tests for AliasControllerApi
void main() {
  // final instance = AliasControllerApi();

  group('tests for AliasControllerApi', () {
    // Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
    //
    // Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
    //
    //Future<AliasDto> createAlias(CreateAliasOptions createAliasOptions) async
    test('test createAlias', () async {
      // TODO
    });

    // Delete an email alias
    //
    //Future deleteAlias(String aliasId) async
    test('test deleteAlias', () async {
      // TODO
    });

    // Get an email alias
    //
    // Get an email alias by ID
    //
    //Future<AliasDto> getAlias(String aliasId) async
    test('test getAlias', () async {
      // TODO
    });

    // Get emails for an alias
    //
    // Get paginated emails for an alias by ID
    //
    //Future<PageEmailProjection> getAliasEmails(String aliasId, { int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getAliasEmails', () async {
      // TODO
    });

    // Get threads created for an alias
    //
    // Returns threads created for an email alias in paginated form
    //
    //Future<PageAliasThreadProjection> getAliasThreads(String aliasId, { int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getAliasThreads', () async {
      // TODO
    });

    // Get all email aliases you have created
    //
    // Get all email aliases in paginated form
    //
    //Future<PageAlias> getAliases({ String search, int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getAliases', () async {
      // TODO
    });

    // Get a thread
    //
    // Return a thread associated with an alias
    //
    //Future<AliasThreadProjection> getThread(String threadId) async
    test('test getThread', () async {
      // TODO
    });

    // Get all threads
    //
    // Returns threads created for all aliases in paginated form
    //
    //Future<PageAliasThreadProjection> getThreadsPaginated({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getThreadsPaginated', () async {
      // TODO
    });

    // Reply to an email
    //
    // Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
    //
    //Future<SentEmailDto> replyToAliasEmail(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions) async
    test('test replyToAliasEmail', () async {
      // TODO
    });

    // Send an email from an alias inbox
    //
    // Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
    //
    //Future<SentEmailDto> sendAliasEmail(String aliasId, SendEmailOptions sendEmailOptions) async
    test('test sendAliasEmail', () async {
      // TODO
    });

    // Update an email alias
    //
    //Future<AliasDto> updateAlias(String aliasId, UpdateAliasOptions updateAliasOptions) async
    test('test updateAlias', () async {
      // TODO
    });

  });
}
