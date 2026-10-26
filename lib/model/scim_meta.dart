//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimMeta {
  /// Returns a new [ScimMeta] instance.
  ScimMeta({
    required this.resourceType,
    this.created,
    this.lastModified,
    this.location,
  });

  String resourceType;

  DateTime? created;

  DateTime? lastModified;

  String? location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimMeta &&
     other.resourceType == resourceType &&
     other.created == created &&
     other.lastModified == lastModified &&
     other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceType.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (lastModified == null ? 0 : lastModified!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'ScimMeta[resourceType=$resourceType, created=$created, lastModified=$lastModified, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'resourceType'] = this.resourceType;
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.lastModified != null) {
      json[r'lastModified'] = this.lastModified!.toUtc().toIso8601String();
    } else {
      json[r'lastModified'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [ScimMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimMeta(
        resourceType: mapValueOfType<String>(json, r'resourceType')!,
        created: mapDateTime(json, r'created', ''),
        lastModified: mapDateTime(json, r'lastModified', ''),
        location: mapValueOfType<String>(json, r'location'),
      );
    }
    return null;
  }

  static List<ScimMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimMeta> mapFromJson(dynamic json) {
    final map = <String, ScimMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimMeta-objects as value to a dart map
  static Map<String, List<ScimMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'resourceType',
  };
}

