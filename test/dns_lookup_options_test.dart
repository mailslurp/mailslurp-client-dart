import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for DNSLookupOptions
void main() {
    var instance = new DNSLookupOptions();

  group('test DNSLookupOptions', () {
    // List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
    // String hostname (default value: null)
    test('to test the property `hostname`', () async {
      // TODO
    });

    // Optionally control whether to omit the final dot in full DNS name values.
    // bool omitFinalDNSDot (default value: null)
    test('to test the property `omitFinalDNSDot`', () async {
      // TODO
    });

    // List of record types you wish to query such as MX, DNS, TXT, NS, A etc.
    // List<String> recordTypes (default value: [])
    test('to test the property `recordTypes`', () async {
      // TODO
    });


  });

}
