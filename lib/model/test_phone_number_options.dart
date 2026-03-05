//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestPhoneNumberOptions {
  /// Returns a new [TestPhoneNumberOptions] instance.
  TestPhoneNumberOptions({
    required this.message,
  });

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestPhoneNumberOptions &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode);

  @override
  String toString() => 'TestPhoneNumberOptions[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [TestPhoneNumberOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestPhoneNumberOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestPhoneNumberOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestPhoneNumberOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestPhoneNumberOptions(
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<TestPhoneNumberOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestPhoneNumberOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestPhoneNumberOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestPhoneNumberOptions> mapFromJson(dynamic json) {
    final map = <String, TestPhoneNumberOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestPhoneNumberOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestPhoneNumberOptions-objects as value to a dart map
  static Map<String, List<TestPhoneNumberOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestPhoneNumberOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestPhoneNumberOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
  };
}

