//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PlusAddressProjection {
  /// Returns a new [PlusAddressProjection] instance.
  PlusAddressProjection({
    required this.inboxId,
    required this.userId,
    required this.updatedAt,
    required this.createdAt,
    required this.plusAddress,
    required this.fullAddress,
    required this.id,
  });

  String inboxId;

  String userId;

  DateTime updatedAt;

  DateTime createdAt;

  String plusAddress;

  String fullAddress;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlusAddressProjection &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.plusAddress == plusAddress &&
     other.fullAddress == fullAddress &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId.hashCode) +
    (userId.hashCode) +
    (updatedAt.hashCode) +
    (createdAt.hashCode) +
    (plusAddress.hashCode) +
    (fullAddress.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'PlusAddressProjection[inboxId=$inboxId, userId=$userId, updatedAt=$updatedAt, createdAt=$createdAt, plusAddress=$plusAddress, fullAddress=$fullAddress, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = this.inboxId;
      json[r'userId'] = this.userId;
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'plusAddress'] = this.plusAddress;
      json[r'fullAddress'] = this.fullAddress;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [PlusAddressProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlusAddressProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlusAddressProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlusAddressProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlusAddressProjection(
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        plusAddress: mapValueOfType<String>(json, r'plusAddress')!,
        fullAddress: mapValueOfType<String>(json, r'fullAddress')!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<PlusAddressProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlusAddressProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlusAddressProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlusAddressProjection> mapFromJson(dynamic json) {
    final map = <String, PlusAddressProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlusAddressProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlusAddressProjection-objects as value to a dart map
  static Map<String, List<PlusAddressProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlusAddressProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlusAddressProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'userId',
    'updatedAt',
    'createdAt',
    'plusAddress',
    'fullAddress',
    'id',
  };
}

