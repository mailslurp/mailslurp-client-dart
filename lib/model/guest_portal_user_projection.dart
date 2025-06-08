//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuestPortalUserProjection {
  /// Returns a new [GuestPortalUserProjection] instance.
  GuestPortalUserProjection({
    required this.username,
    this.inboxId,
    required this.userId,
    this.emailAddress,
    required this.updatedAt,
    required this.createdAt,
    required this.portalId,
    this.name,
    required this.id,
  });

  String username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  DateTime updatedAt;

  DateTime createdAt;

  String portalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestPortalUserProjection &&
     other.username == username &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.portalId == portalId &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (userId.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (updatedAt.hashCode) +
    (createdAt.hashCode) +
    (portalId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'GuestPortalUserProjection[username=$username, inboxId=$inboxId, userId=$userId, emailAddress=$emailAddress, updatedAt=$updatedAt, createdAt=$createdAt, portalId=$portalId, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'userId'] = this.userId;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'portalId'] = this.portalId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [GuestPortalUserProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuestPortalUserProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuestPortalUserProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuestPortalUserProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuestPortalUserProjection(
        username: mapValueOfType<String>(json, r'username')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        userId: mapValueOfType<String>(json, r'userId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        portalId: mapValueOfType<String>(json, r'portalId')!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<GuestPortalUserProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuestPortalUserProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuestPortalUserProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuestPortalUserProjection> mapFromJson(dynamic json) {
    final map = <String, GuestPortalUserProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuestPortalUserProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuestPortalUserProjection-objects as value to a dart map
  static Map<String, List<GuestPortalUserProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuestPortalUserProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GuestPortalUserProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'userId',
    'updatedAt',
    'createdAt',
    'portalId',
    'id',
  };
}

