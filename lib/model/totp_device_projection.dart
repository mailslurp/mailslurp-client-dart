//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TotpDeviceProjection {
  /// Returns a new [TotpDeviceProjection] instance.
  TotpDeviceProjection({
    this.algorithm,
    this.period,
    this.name,
    required this.id,
    this.digits,
    this.username,
    required this.createdAt,
    required this.updatedAt,
    this.expiresAt,
    this.issuer,
  });

  String? algorithm;

  int? period;

  String? name;

  String id;

  int? digits;

  String? username;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? expiresAt;

  String? issuer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TotpDeviceProjection &&
     other.algorithm == algorithm &&
     other.period == period &&
     other.name == name &&
     other.id == id &&
     other.digits == digits &&
     other.username == username &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.expiresAt == expiresAt &&
     other.issuer == issuer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode);

  @override
  String toString() => 'TotpDeviceProjection[algorithm=$algorithm, period=$period, name=$name, id=$id, digits=$digits, username=$username, createdAt=$createdAt, updatedAt=$updatedAt, expiresAt=$expiresAt, issuer=$issuer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    if (this.digits != null) {
      json[r'digits'] = this.digits;
    } else {
      json[r'digits'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    return json;
  }

  /// Returns a new [TotpDeviceProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TotpDeviceProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TotpDeviceProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TotpDeviceProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TotpDeviceProjection(
        algorithm: mapValueOfType<String>(json, r'algorithm'),
        period: mapValueOfType<int>(json, r'period'),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        digits: mapValueOfType<int>(json, r'digits'),
        username: mapValueOfType<String>(json, r'username'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        issuer: mapValueOfType<String>(json, r'issuer'),
      );
    }
    return null;
  }

  static List<TotpDeviceProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TotpDeviceProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TotpDeviceProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TotpDeviceProjection> mapFromJson(dynamic json) {
    final map = <String, TotpDeviceProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TotpDeviceProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TotpDeviceProjection-objects as value to a dart map
  static Map<String, List<TotpDeviceProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TotpDeviceProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TotpDeviceProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'createdAt',
    'updatedAt',
  };
}

