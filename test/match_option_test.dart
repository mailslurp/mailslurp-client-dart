import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for MatchOption
void main() {
    var instance = new MatchOption();

  group('test MatchOption', () {
    // The email property to match on. One of SUBJECT, TO, BCC, CC or FROM
    // String field (default value: null)
    test('to test the property `field`', () async {
      // TODO
    });

    // What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines to fields and body content.
    // String should (default value: null)
    test('to test the property `should`', () async {
      // TODO
    });

    // The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed.
    // String value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
