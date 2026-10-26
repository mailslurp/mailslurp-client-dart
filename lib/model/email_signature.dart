//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailSignature {
  /// Returns a new [EmailSignature] instance.
  EmailSignature({
    required this.body,
    required this.source_,
    this.marker,
    required this.detectionType,
  });

  /// Extracted signature text
  String body;

  /// Source used for extraction. Examples: RAW_TEXT_PART, RAW_HTML_SELECTOR
  String source_;

  /// Matched marker or selector that identified the signature
  String? marker;

  /// Detection strategy used. Examples: DELIMITER, MOBILE_FOOTER, VALEDICTION
  String detectionType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailSignature &&
     other.body == body &&
     other.source_ == source_ &&
     other.marker == marker &&
     other.detectionType == detectionType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (source_.hashCode) +
    (marker == null ? 0 : marker!.hashCode) +
    (detectionType.hashCode);

  @override
  String toString() => 'EmailSignature[body=$body, source_=$source_, marker=$marker, detectionType=$detectionType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'source'] = this.source_;
    if (this.marker != null) {
      json[r'marker'] = this.marker;
    } else {
      json[r'marker'] = null;
    }
      json[r'detectionType'] = this.detectionType;
    return json;
  }

  /// Returns a new [EmailSignature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailSignature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailSignature[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailSignature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailSignature(
        body: mapValueOfType<String>(json, r'body')!,
        source_: mapValueOfType<String>(json, r'source')!,
        marker: mapValueOfType<String>(json, r'marker'),
        detectionType: mapValueOfType<String>(json, r'detectionType')!,
      );
    }
    return null;
  }

  static List<EmailSignature> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailSignature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailSignature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailSignature> mapFromJson(dynamic json) {
    final map = <String, EmailSignature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailSignature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailSignature-objects as value to a dart map
  static Map<String, List<EmailSignature>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailSignature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailSignature.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'source',
    'detectionType',
  };
}

