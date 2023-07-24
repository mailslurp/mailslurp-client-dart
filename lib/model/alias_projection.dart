//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AliasProjection {
  /// Returns a new [AliasProjection] instance.
  AliasProjection({
    this.name,
    required this.id,
    required this.userId,
    required this.emailAddress,
    required this.inboxId,
    required this.createdAt,
    required this.updatedAt,
    this.useThreads,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  String userId;

  String emailAddress;

  String inboxId;

  DateTime createdAt;

  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useThreads;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasProjection &&
     other.name == name &&
     other.id == id &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.useThreads == useThreads;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (emailAddress.hashCode) +
    (inboxId.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (useThreads == null ? 0 : useThreads!.hashCode);

  @override
  String toString() => 'AliasProjection[name=$name, id=$id, userId=$userId, emailAddress=$emailAddress, inboxId=$inboxId, createdAt=$createdAt, updatedAt=$updatedAt, useThreads=$useThreads]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'emailAddress'] = this.emailAddress;
      json[r'inboxId'] = this.inboxId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.useThreads != null) {
      json[r'useThreads'] = this.useThreads;
    } else {
      json[r'useThreads'] = null;
    }
    return json;
  }

  /// Returns a new [AliasProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AliasProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AliasProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AliasProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AliasProjection(
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        useThreads: mapValueOfType<bool>(json, r'useThreads'),
      );
    }
    return null;
  }

  static List<AliasProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AliasProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AliasProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AliasProjection> mapFromJson(dynamic json) {
    final map = <String, AliasProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AliasProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AliasProjection-objects as value to a dart map
  static Map<String, List<AliasProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AliasProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AliasProjection.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'emailAddress',
    'inboxId',
    'createdAt',
    'updatedAt',
  };
}

