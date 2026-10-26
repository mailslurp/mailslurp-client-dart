//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureVersionStatistics {
  /// Returns a new [EmailFeatureVersionStatistics] instance.
  EmailFeatureVersionStatistics({
    required this.version,
    required this.supportFlags,
  });

  String version;

  EmailFeatureSupportFlags supportFlags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureVersionStatistics &&
     other.version == version &&
     other.supportFlags == supportFlags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version.hashCode) +
    (supportFlags.hashCode);

  @override
  String toString() => 'EmailFeatureVersionStatistics[version=$version, supportFlags=$supportFlags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = this.version;
      json[r'supportFlags'] = this.supportFlags;
    return json;
  }

  /// Returns a new [EmailFeatureVersionStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureVersionStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureVersionStatistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureVersionStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureVersionStatistics(
        version: mapValueOfType<String>(json, r'version')!,
        supportFlags: EmailFeatureSupportFlags.fromJson(json[r'supportFlags'])!,
      );
    }
    return null;
  }

  static List<EmailFeatureVersionStatistics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureVersionStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureVersionStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureVersionStatistics> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureVersionStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureVersionStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureVersionStatistics-objects as value to a dart map
  static Map<String, List<EmailFeatureVersionStatistics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureVersionStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureVersionStatistics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'version',
    'supportFlags',
  };
}

