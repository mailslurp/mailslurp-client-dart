import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for ContentMatchOptions
void main() {
    var instance = new ContentMatchOptions();

  group('test ContentMatchOptions', () {
    // Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns.
    // String pattern (default value: null)
    test('to test the property `pattern`', () async {
      // TODO
    });


  });

}
