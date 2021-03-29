import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for SentEmailsControllerApi
void main() {
  var instance = SentEmailsControllerApi();

  group('tests for SentEmailsControllerApi', () {
    // Get sent email receipt
    //
    //Future<SentEmailDto> getSentEmail(String id) async 
    test('test getSentEmail', () async {
      // TODO
    });

    // Get all sent emails in paginated form
    //
    //Future<PageSentEmailProjection> getSentEmails({ String inboxId, int page, int size, String sort }) async 
    test('test getSentEmails', () async {
      // TODO
    });

    // Get all sent organization emails in paginated form
    //
    //Future<PageSentEmailProjection> getSentOrganizationEmails({ String inboxId, int page, int size, String sort }) async 
    test('test getSentOrganizationEmails', () async {
      // TODO
    });

  });
}
