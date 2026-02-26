//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GuestPortalDto {
  /// Returns a new [GuestPortalDto] instance.
  GuestPortalDto({
    required this.id,
    this.domainId,
    required this.userId,
    this.name,
    this.description,
    this.linkHelp,
    required this.createdAt,
    required this.updatedAt,
    required this.loginUrl,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainId;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkHelp;

  DateTime createdAt;

  DateTime updatedAt;

  String loginUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GuestPortalDto &&
     other.id == id &&
     other.domainId == domainId &&
     other.userId == userId &&
     other.name == name &&
     other.description == description &&
     other.linkHelp == linkHelp &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.loginUrl == loginUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (userId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (linkHelp == null ? 0 : linkHelp!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (loginUrl.hashCode);

  @override
  String toString() => 'GuestPortalDto[id=$id, domainId=$domainId, userId=$userId, name=$name, description=$description, linkHelp=$linkHelp, createdAt=$createdAt, updatedAt=$updatedAt, loginUrl=$loginUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'userId'] = this.userId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.linkHelp != null) {
      json[r'linkHelp'] = this.linkHelp;
    } else {
      json[r'linkHelp'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'loginUrl'] = this.loginUrl;
    return json;
  }

  /// Returns a new [GuestPortalDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GuestPortalDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GuestPortalDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GuestPortalDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GuestPortalDto(
        id: mapValueOfType<String>(json, r'id')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        userId: mapValueOfType<String>(json, r'userId')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        linkHelp: mapValueOfType<String>(json, r'linkHelp'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        loginUrl: mapValueOfType<String>(json, r'loginUrl')!,
      );
    }
    return null;
  }

  static List<GuestPortalDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GuestPortalDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GuestPortalDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GuestPortalDto> mapFromJson(dynamic json) {
    final map = <String, GuestPortalDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GuestPortalDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GuestPortalDto-objects as value to a dart map
  static Map<String, List<GuestPortalDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GuestPortalDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GuestPortalDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'createdAt',
    'updatedAt',
    'loginUrl',
  };
}

