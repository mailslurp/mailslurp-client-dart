//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberTagsOptions {
  /// Returns a new [PhoneNumberTagsOptions] instance.
  PhoneNumberTagsOptions({
    this.tags = const [],
  });

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneNumberTagsOptions &&
     other.tags == tags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tags.hashCode);

  @override
  String toString() => 'PhoneNumberTagsOptions[tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [PhoneNumberTagsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberTagsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneNumberTagsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneNumberTagsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberTagsOptions(
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<PhoneNumberTagsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneNumberTagsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberTagsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberTagsOptions> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberTagsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberTagsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberTagsOptions-objects as value to a dart map
  static Map<String, List<PhoneNumberTagsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneNumberTagsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberTagsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tags',
  };
}

