import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for AliasControllerApi
void main() {
  var instance = AliasControllerApi();

  group('tests for AliasControllerApi', () {
    // Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
    //
    // Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
    //
    //Future<Alias> createAlias(CreateAliasOptions createAliasOptions) async 
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

    // Get validation result from alias verification
    //
    // Verify an email alias email address with the verification token that was emailed to the address
    //
    //Future<AliasVerificationResult> getAliasVerification(String aliasId, String emailAddress, String verificationToken) async 
    test('test getAliasVerification', () async {
      // TODO
    });

    // Get all email aliases you have created
    //
    // Get all email aliases in paginated form
    //
    //Future<PageAlias> getAliases({ int page, int size, String sort }) async 
    test('test getAliases', () async {
      // TODO
    });

    // Update an email alias
    //
    //Future updateAlias(String aliasId, UpdateAliasOptions updateAliasOptions) async 
    test('test updateAlias', () async {
      // TODO
    });

  });
}
