import 'package:mailslurp/api.dart';
import 'package:test/test.dart';

// tests for EmailAnalysis
void main() {
    var instance = new EmailAnalysis();

  group('test EmailAnalysis', () {
    // Verdict of DomainKeys Identified Mail analysis
    // String dkimVerdict (default value: null)
    test('to test the property `dkimVerdict`', () async {
      // TODO
    });

    // Verdict of Domain-based Message Authentication Reporting and Conformance analysis
    // String dmarcVerdict (default value: null)
    test('to test the property `dmarcVerdict`', () async {
      // TODO
    });

    // Verdict of spam ranking analysis
    // String spamVerdict (default value: null)
    test('to test the property `spamVerdict`', () async {
      // TODO
    });

    // Verdict of Send Policy Framework record spoofing analysis
    // String spfVerdict (default value: null)
    test('to test the property `spfVerdict`', () async {
      // TODO
    });

    // Verdict of virus scan analysis
    // String virusVerdict (default value: null)
    test('to test the property `virusVerdict`', () async {
      // TODO
    });


  });

}
