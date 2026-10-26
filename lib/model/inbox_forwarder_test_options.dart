//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderTestOptions {
  /// Returns a new [InboxForwarderTestOptions] instance.
  InboxForwarderTestOptions({
    this.testValue,
    this.emailId,
  });

  /// Simple value to test against the forwarder's simple field/match rule. Required when emailId is not provided.
  String? testValue;

  /// Optional email ID to evaluate the forwarder using full inbound email content (headers, recipients, and attachments).
  String? emailId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderTestOptions &&
     other.testValue == testValue &&
     other.emailId == emailId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (testValue == null ? 0 : testValue!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode);

  @override
  String toString() => 'InboxForwarderTestOptions[testValue=$testValue, emailId=$emailId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.testValue != null) {
      json[r'testValue'] = this.testValue;
    } else {
      json[r'testValue'] = null;
    }
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    return json;
  }

  /// Returns a new [InboxForwarderTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxForwarderTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxForwarderTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxForwarderTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxForwarderTestOptions(
        testValue: mapValueOfType<String>(json, r'testValue'),
        emailId: mapValueOfType<String>(json, r'emailId'),
      );
    }
    return null;
  }

  static List<InboxForwarderTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxForwarderTestOptions> mapFromJson(dynamic json) {
    final map = <String, InboxForwarderTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderTestOptions-objects as value to a dart map
  static Map<String, List<InboxForwarderTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxForwarderTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxForwarderTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

