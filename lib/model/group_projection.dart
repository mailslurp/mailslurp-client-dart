//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupProjection {
  /// Returns a new [GroupProjection] instance.
  GroupProjection({
    required this.name,
    required this.id,
    this.description,
    required this.createdAt,
  });

  String name;

  String id;

  String? description;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupProjection &&
     other.name == name &&
     other.id == id &&
     other.description == description &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (id.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'GroupProjection[name=$name, id=$id, description=$description, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'id'] = this.id;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [GroupProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupProjection(
        name: mapValueOfType<String>(json, r'name')!,
        id: mapValueOfType<String>(json, r'id')!,
        description: mapValueOfType<String>(json, r'description'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<GroupProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupProjection> mapFromJson(dynamic json) {
    final map = <String, GroupProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupProjection-objects as value to a dart map
  static Map<String, List<GroupProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupProjection.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'id',
    'createdAt',
  };
}

