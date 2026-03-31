//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailSignatureParseResult {
  /// Returns a new [EmailSignatureParseResult] instance.
  EmailSignatureParseResult({
    required this.present,
    this.signature,
  });

  /// True when a signature block was detected
  bool present;

  EmailSignature? signature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailSignatureParseResult &&
     other.present == present &&
     other.signature == signature;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (present.hashCode) +
    (signature == null ? 0 : signature!.hashCode);

  @override
  String toString() => 'EmailSignatureParseResult[present=$present, signature=$signature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'present'] = this.present;
    if (this.signature != null) {
      json[r'signature'] = this.signature;
    } else {
      json[r'signature'] = null;
    }
    return json;
  }

  /// Returns a new [EmailSignatureParseResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailSignatureParseResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailSignatureParseResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailSignatureParseResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailSignatureParseResult(
        present: mapValueOfType<bool>(json, r'present')!,
        signature: EmailSignature.fromJson(json[r'signature']),
      );
    }
    return null;
  }

  static List<EmailSignatureParseResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailSignatureParseResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailSignatureParseResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailSignatureParseResult> mapFromJson(dynamic json) {
    final map = <String, EmailSignatureParseResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailSignatureParseResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailSignatureParseResult-objects as value to a dart map
  static Map<String, List<EmailSignatureParseResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailSignatureParseResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailSignatureParseResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'present',
  };
}

