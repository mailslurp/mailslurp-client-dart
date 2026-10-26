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
    this.name,
    required this.id,
    required this.username,
    required this.userId,
    this.inboxId,
    required this.createdAt,
    required this.updatedAt,
    this.emailAddress,
    required this.portalId,
  });

  String? name;

  String id;

  String username;

  String userId;

  String? inboxId;

  DateTime createdAt;

  DateTime updatedAt;

  String? emailAddress;

  String portalId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestPortalUserProjection &&
     other.name == name &&
     other.id == id &&
     other.username == username &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.emailAddress == emailAddress &&
     other.portalId == portalId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (username.hashCode) +
    (userId.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (portalId.hashCode);

  @override
  String toString() => 'GuestPortalUserProjection[name=$name, id=$id, username=$username, userId=$userId, inboxId=$inboxId, createdAt=$createdAt, updatedAt=$updatedAt, emailAddress=$emailAddress, portalId=$portalId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
      json[r'username'] = this.username;
      json[r'userId'] = this.userId;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'portalId'] = this.portalId;
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
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        username: mapValueOfType<String>(json, r'username')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        portalId: mapValueOfType<String>(json, r'portalId')!,
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
    'id',
    'username',
    'userId',
    'createdAt',
    'updatedAt',
    'portalId',
  };
}

