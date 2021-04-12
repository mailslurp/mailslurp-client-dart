import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for CommonActionsControllerApi
void main() {
  var instance = CommonActionsControllerApi();

  group('tests for CommonActionsControllerApi', () {
    // Create new random inbox
    //
    // Returns an Inbox with an `id` and an `emailAddress`
    //
    //Future<Inbox> createNewEmailAddress({ bool allowTeamAccess, DateTime expiresAt, int expiresIn, bool useDomainPool }) async 
    test('test createNewEmailAddress', () async {
      // TODO
    });

    // Create new random inbox
    //
    // Returns an Inbox with an `id` and an `emailAddress`
    //
    //Future<Inbox> createNewEmailAddress1({ bool allowTeamAccess, DateTime expiresAt, int expiresIn, bool useDomainPool }) async 
    test('test createNewEmailAddress1', () async {
      // TODO
    });

    // Delete all emails in an inbox
    //
    // Deletes all emails
    //
    //Future emptyInbox(String inboxId) async 
    test('test emptyInbox', () async {
      // TODO
    });

    // Send an email
    //
    // If no senderId or inboxId provided a random email address will be used to send from.
    //
    //Future sendEmailSimple(SimpleSendEmailOptions emailOptions) async 
    test('test sendEmailSimple', () async {
      // TODO
    });

  });
}
