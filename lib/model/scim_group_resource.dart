//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimGroupResource {
  /// Returns a new [ScimGroupResource] instance.
  ScimGroupResource({
    this.schemas = const [],
    this.id,
    this.externalId,
    this.displayName,
    this.members = const [],
    this.meta,
  });

  List<String> schemas;

  String? id;

  String? externalId;

  String? displayName;

  List<ScimMember>? members;

  ScimMeta? meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimGroupResource &&
     other.schemas == schemas &&
     other.id == id &&
     other.externalId == externalId &&
     other.displayName == displayName &&
     other.members == members &&
     other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemas.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (members == null ? 0 : members!.hashCode) +
    (meta == null ? 0 : meta!.hashCode);

  @override
  String toString() => 'ScimGroupResource[schemas=$schemas, id=$id, externalId=$externalId, displayName=$displayName, members=$members, meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'schemas'] = this.schemas;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.members != null) {
      json[r'members'] = this.members;
    } else {
      json[r'members'] = null;
    }
    if (this.meta != null) {
      json[r'meta'] = this.meta;
    } else {
      json[r'meta'] = null;
    }
    return json;
  }

  /// Returns a new [ScimGroupResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimGroupResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimGroupResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimGroupResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimGroupResource(
        schemas: json[r'schemas'] is List
            ? (json[r'schemas'] as List).cast<String>()
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        members: ScimMember.listFromJson(json[r'members']),
        meta: ScimMeta.fromJson(json[r'meta']),
      );
    }
    return null;
  }

  static List<ScimGroupResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimGroupResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimGroupResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimGroupResource> mapFromJson(dynamic json) {
    final map = <String, ScimGroupResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimGroupResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimGroupResource-objects as value to a dart map
  static Map<String, List<ScimGroupResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimGroupResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimGroupResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schemas',
  };
}

