import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for WaitForControllerApi
void main() {
  var instance = WaitForControllerApi();

  group('tests for WaitForControllerApi', () {
    // Wait for conditions to be met
    //
    // Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    //
    //Future<List<EmailPreview>> waitFor({ WaitForConditions waitForConditions }) async 
    test('test waitFor', () async {
      // TODO
    });

    // Wait for and return count number of emails 
    //
    // If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    //
    //Future<List<EmailPreview>> waitForEmailCount({ int count, String inboxId, int timeout, bool unreadOnly }) async 
    test('test waitForEmailCount', () async {
      // TODO
    });

    // Fetch inbox's latest email or if empty wait for an email to arrive
    //
    // Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
    //
    //Future<Email> waitForLatestEmail({ String inboxId, int timeout, bool unreadOnly }) async 
    test('test waitForLatestEmail', () async {
      // TODO
    });

    // Wait or return list of emails that match simple matching patterns
    //
    // Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options.
    //
    //Future<List<EmailPreview>> waitForMatchingEmail(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async 
    test('test waitForMatchingEmail', () async {
      // TODO
    });

    // Wait for or fetch the email with a given index in the inbox specified
    //
    // If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    //
    //Future<Email> waitForNthEmail({ String inboxId, int index, int timeout, bool unreadOnly }) async 
    test('test waitForNthEmail', () async {
      // TODO
    });

  });
}
