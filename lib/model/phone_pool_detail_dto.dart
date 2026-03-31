//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhonePoolDetailDto {
  /// Returns a new [PhonePoolDetailDto] instance.
  PhonePoolDetailDto({
    required this.id,
    required this.userId,
    required this.name,
    this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.memberCount,
    required this.availableMemberCount,
    required this.leasedMemberCount,
    this.members = const [],
  });

  String id;

  String userId;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  DateTime createdAt;

  DateTime updatedAt;

  int memberCount;

  int availableMemberCount;

  int leasedMemberCount;

  List<PhonePoolMemberDto> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhonePoolDetailDto &&
     other.id == id &&
     other.userId == userId &&
     other.name == name &&
     other.description == description &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.memberCount == memberCount &&
     other.availableMemberCount == availableMemberCount &&
     other.leasedMemberCount == leasedMemberCount &&
     other.members == members;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (memberCount.hashCode) +
    (availableMemberCount.hashCode) +
    (leasedMemberCount.hashCode) +
    (members.hashCode);

  @override
  String toString() => 'PhonePoolDetailDto[id=$id, userId=$userId, name=$name, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, memberCount=$memberCount, availableMemberCount=$availableMemberCount, leasedMemberCount=$leasedMemberCount, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'memberCount'] = this.memberCount;
      json[r'availableMemberCount'] = this.availableMemberCount;
      json[r'leasedMemberCount'] = this.leasedMemberCount;
      json[r'members'] = this.members;
    return json;
  }

  /// Returns a new [PhonePoolDetailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhonePoolDetailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhonePoolDetailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhonePoolDetailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhonePoolDetailDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        memberCount: mapValueOfType<int>(json, r'memberCount')!,
        availableMemberCount: mapValueOfType<int>(json, r'availableMemberCount')!,
        leasedMemberCount: mapValueOfType<int>(json, r'leasedMemberCount')!,
        members: PhonePoolMemberDto.listFromJson(json[r'members']),
      );
    }
    return null;
  }

  static List<PhonePoolDetailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhonePoolDetailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhonePoolDetailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhonePoolDetailDto> mapFromJson(dynamic json) {
    final map = <String, PhonePoolDetailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhonePoolDetailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhonePoolDetailDto-objects as value to a dart map
  static Map<String, List<PhonePoolDetailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhonePoolDetailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhonePoolDetailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'name',
    'createdAt',
    'updatedAt',
    'memberCount',
    'availableMemberCount',
    'leasedMemberCount',
    'members',
  };
}

