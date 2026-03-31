//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureNames {
  /// Returns a new [EmailFeatureNames] instance.
  EmailFeatureNames({
    this.family = const [],
    this.platform = const [],
    this.category = const [],
  });

  List<EmailFeatureFamilyName> family;

  List<EmailFeaturePlatformName> platform;

  List<EmailFeatureCategoryName> category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureNames &&
     other.family == family &&
     other.platform == platform &&
     other.category == category;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (family.hashCode) +
    (platform.hashCode) +
    (category.hashCode);

  @override
  String toString() => 'EmailFeatureNames[family=$family, platform=$platform, category=$category]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'family'] = this.family;
      json[r'platform'] = this.platform;
      json[r'category'] = this.category;
    return json;
  }

  /// Returns a new [EmailFeatureNames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureNames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureNames[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureNames[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureNames(
        family: EmailFeatureFamilyName.listFromJson(json[r'family']),
        platform: EmailFeaturePlatformName.listFromJson(json[r'platform']),
        category: EmailFeatureCategoryName.listFromJson(json[r'category']),
      );
    }
    return null;
  }

  static List<EmailFeatureNames> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureNames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureNames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureNames> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureNames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureNames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureNames-objects as value to a dart map
  static Map<String, List<EmailFeatureNames>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureNames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureNames.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'family',
    'platform',
    'category',
  };
}

