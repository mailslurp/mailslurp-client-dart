//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuestPortalUserDto {
  /// Returns a new [GuestPortalUserDto] instance.
  GuestPortalUserDto({
    required this.id,
    required this.userId,
    required this.portalId,
    this.name,
    required this.username,
    this.emailAddress,
    this.inboxId,
    required this.loginUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String portalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  String loginUrl;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestPortalUserDto &&
     other.id == id &&
     other.userId == userId &&
     other.portalId == portalId &&
     other.name == name &&
     other.username == username &&
     other.emailAddress == emailAddress &&
     other.inboxId == inboxId &&
     other.loginUrl == loginUrl &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (portalId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (username.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (loginUrl.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'GuestPortalUserDto[id=$id, userId=$userId, portalId=$portalId, name=$name, username=$username, emailAddress=$emailAddress, inboxId=$inboxId, loginUrl=$loginUrl, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'portalId'] = this.portalId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'username'] = this.username;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'loginUrl'] = this.loginUrl;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [GuestPortalUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuestPortalUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuestPortalUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuestPortalUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuestPortalUserDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        portalId: mapValueOfType<String>(json, r'portalId')!,
        name: mapValueOfType<String>(json, r'name'),
        username: mapValueOfType<String>(json, r'username')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        loginUrl: mapValueOfType<String>(json, r'loginUrl')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<GuestPortalUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuestPortalUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuestPortalUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuestPortalUserDto> mapFromJson(dynamic json) {
    final map = <String, GuestPortalUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuestPortalUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuestPortalUserDto-objects as value to a dart map
  static Map<String, List<GuestPortalUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuestPortalUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GuestPortalUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'portalId',
    'username',
    'loginUrl',
    'createdAt',
    'updatedAt',
  };
}

