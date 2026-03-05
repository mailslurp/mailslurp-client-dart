//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlusAddressDto {
  /// Returns a new [PlusAddressDto] instance.
  PlusAddressDto({
    required this.id,
    required this.plusAddress,
    required this.fullAddress,
    required this.userId,
    required this.inboxId,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String plusAddress;

  String fullAddress;

  String userId;

  String inboxId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlusAddressDto &&
     other.id == id &&
     other.plusAddress == plusAddress &&
     other.fullAddress == fullAddress &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (plusAddress.hashCode) +
    (fullAddress.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PlusAddressDto[id=$id, plusAddress=$plusAddress, fullAddress=$fullAddress, userId=$userId, inboxId=$inboxId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'plusAddress'] = this.plusAddress;
      json[r'fullAddress'] = this.fullAddress;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PlusAddressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlusAddressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlusAddressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlusAddressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlusAddressDto(
        id: mapValueOfType<String>(json, r'id')!,
        plusAddress: mapValueOfType<String>(json, r'plusAddress')!,
        fullAddress: mapValueOfType<String>(json, r'fullAddress')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<PlusAddressDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlusAddressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlusAddressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlusAddressDto> mapFromJson(dynamic json) {
    final map = <String, PlusAddressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlusAddressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlusAddressDto-objects as value to a dart map
  static Map<String, List<PlusAddressDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlusAddressDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlusAddressDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'plusAddress',
    'fullAddress',
    'userId',
    'inboxId',
    'createdAt',
    'updatedAt',
  };
}

