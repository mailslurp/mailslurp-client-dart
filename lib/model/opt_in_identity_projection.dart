//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OptInIdentityProjection {
  /// Returns a new [OptInIdentityProjection] instance.
  OptInIdentityProjection({
    required this.id,
    required this.emailAddress,
    required this.updatedAt,
    required this.createdAt,
    this.verified,
  });

  String id;

  String emailAddress;

  DateTime updatedAt;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptInIdentityProjection &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.verified == verified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (updatedAt.hashCode) +
    (createdAt.hashCode) +
    (verified == null ? 0 : verified!.hashCode);

  @override
  String toString() => 'OptInIdentityProjection[id=$id, emailAddress=$emailAddress, updatedAt=$updatedAt, createdAt=$createdAt, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'emailAddress'] = this.emailAddress;
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    return json;
  }

  /// Returns a new [OptInIdentityProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptInIdentityProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptInIdentityProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptInIdentityProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptInIdentityProjection(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        verified: mapValueOfType<bool>(json, r'verified'),
      );
    }
    return null;
  }

  static List<OptInIdentityProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptInIdentityProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptInIdentityProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptInIdentityProjection> mapFromJson(dynamic json) {
    final map = <String, OptInIdentityProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptInIdentityProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptInIdentityProjection-objects as value to a dart map
  static Map<String, List<OptInIdentityProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptInIdentityProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptInIdentityProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'updatedAt',
    'createdAt',
  };
}

