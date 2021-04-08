import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for ExpiredControllerApi
void main() {
  var instance = ExpiredControllerApi();

  group('tests for ExpiredControllerApi', () {
    // Get default expiration settings
    //
    // Return default times used for inbox expiration
    //
    //Future<ExpirationDefaults> getExpirationDefaults() async 
    test('test getExpirationDefaults', () async {
      // TODO
    });

    // Get expired inbox record for a previously existing inbox
    //
    // Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    //
    //Future<ExpiredInboxDto> getExpiredInboxByInboxId(String inboxId) async 
    test('test getExpiredInboxByInboxId', () async {
      // TODO
    });

    // Get an expired inbox record
    //
    // Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    //
    //Future<ExpiredInboxDto> getExpiredInboxRecord(String expiredId) async 
    test('test getExpiredInboxRecord', () async {
      // TODO
    });

    // List records of expired inboxes
    //
    // Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    //
    //Future<PageExpiredInboxRecordProjection> getExpiredInboxes({ int page, int size, String sort }) async 
    test('test getExpiredInboxes', () async {
      // TODO
    });

  });
}
