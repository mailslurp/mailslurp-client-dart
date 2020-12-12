import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for WaitForConditions
void main() {
    var instance = new WaitForConditions();

  group('test WaitForConditions', () {
    // Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
    // int count (default value: null)
    test('to test the property `count`', () async {
      // TODO
    });

    // How should the found count be compared to the expected count.
    // String countType (default value: null)
    test('to test the property `countType`', () async {
      // TODO
    });

    // ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count.
    // String inboxId (default value: null)
    test('to test the property `inboxId`', () async {
      // TODO
    });

    // Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for.
    // List<MatchOption> matches (default value: [])
    test('to test the property `matches`', () async {
      // TODO
    });

    // Direction to sort matching emails by created time
    // String sortDirection (default value: null)
    test('to test the property `sortDirection`', () async {
      // TODO
    });

    // Max time in milliseconds to retry the `waitFor` operation until conditions are met.
    // int timeout (default value: null)
    test('to test the property `timeout`', () async {
      // TODO
    });

    // Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard. 
    // bool unreadOnly (default value: null)
    test('to test the property `unreadOnly`', () async {
      // TODO
    });


  });

}
