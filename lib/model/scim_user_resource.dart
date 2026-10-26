//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimUserResource {
  /// Returns a new [ScimUserResource] instance.
  ScimUserResource({
    this.schemas = const [],
    this.id,
    this.externalId,
    this.userName,
    this.name,
    this.displayName,
    this.emails = const [],
    this.active,
    this.meta,
  });

  List<String> schemas;

  String? id;

  String? externalId;

  String? userName;

  ScimName? name;

  String? displayName;

  List<ScimEmail>? emails;

  bool? active;

  ScimMeta? meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimUserResource &&
     other.schemas == schemas &&
     other.id == id &&
     other.externalId == externalId &&
     other.userName == userName &&
     other.name == name &&
     other.displayName == displayName &&
     other.emails == emails &&
     other.active == active &&
     other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemas.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (userName == null ? 0 : userName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (emails == null ? 0 : emails!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (meta == null ? 0 : meta!.hashCode);

  @override
  String toString() => 'ScimUserResource[schemas=$schemas, id=$id, externalId=$externalId, userName=$userName, name=$name, displayName=$displayName, emails=$emails, active=$active, meta=$meta]';

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
    if (this.userName != null) {
      json[r'userName'] = this.userName;
    } else {
      json[r'userName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.emails != null) {
      json[r'emails'] = this.emails;
    } else {
      json[r'emails'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.meta != null) {
      json[r'meta'] = this.meta;
    } else {
      json[r'meta'] = null;
    }
    return json;
  }

  /// Returns a new [ScimUserResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimUserResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimUserResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimUserResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimUserResource(
        schemas: json[r'schemas'] is List
            ? (json[r'schemas'] as List).cast<String>()
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        userName: mapValueOfType<String>(json, r'userName'),
        name: ScimName.fromJson(json[r'name']),
        displayName: mapValueOfType<String>(json, r'displayName'),
        emails: ScimEmail.listFromJson(json[r'emails']),
        active: mapValueOfType<bool>(json, r'active'),
        meta: ScimMeta.fromJson(json[r'meta']),
      );
    }
    return null;
  }

  static List<ScimUserResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimUserResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimUserResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimUserResource> mapFromJson(dynamic json) {
    final map = <String, ScimUserResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimUserResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimUserResource-objects as value to a dart map
  static Map<String, List<ScimUserResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimUserResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimUserResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schemas',
  };
}

