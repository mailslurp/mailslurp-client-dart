//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailHeaderReceivedHop {
  /// Returns a new [EmailHeaderReceivedHop] instance.
  EmailHeaderReceivedHop({
    this.from,
    this.by,
    this.withValue,
    this.timestamp,
    this.delayMs,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? withValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delayMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailHeaderReceivedHop &&
     other.from == from &&
     other.by == by &&
     other.withValue == withValue &&
     other.timestamp == timestamp &&
     other.delayMs == delayMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (withValue == null ? 0 : withValue!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (delayMs == null ? 0 : delayMs!.hashCode);

  @override
  String toString() => 'EmailHeaderReceivedHop[from=$from, by=$by, withValue=$withValue, timestamp=$timestamp, delayMs=$delayMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.withValue != null) {
      json[r'withValue'] = this.withValue;
    } else {
      json[r'withValue'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.delayMs != null) {
      json[r'delayMs'] = this.delayMs;
    } else {
      json[r'delayMs'] = null;
    }
    return json;
  }

  /// Returns a new [EmailHeaderReceivedHop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailHeaderReceivedHop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailHeaderReceivedHop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailHeaderReceivedHop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailHeaderReceivedHop(
        from: mapValueOfType<String>(json, r'from'),
        by: mapValueOfType<String>(json, r'by'),
        withValue: mapValueOfType<String>(json, r'withValue'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        delayMs: mapValueOfType<int>(json, r'delayMs'),
      );
    }
    return null;
  }

  static List<EmailHeaderReceivedHop> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailHeaderReceivedHop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailHeaderReceivedHop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailHeaderReceivedHop> mapFromJson(dynamic json) {
    final map = <String, EmailHeaderReceivedHop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailHeaderReceivedHop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailHeaderReceivedHop-objects as value to a dart map
  static Map<String, List<EmailHeaderReceivedHop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailHeaderReceivedHop>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailHeaderReceivedHop.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

