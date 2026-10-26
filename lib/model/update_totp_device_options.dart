//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateTotpDeviceOptions {
  /// Returns a new [UpdateTotpDeviceOptions] instance.
  UpdateTotpDeviceOptions({
    this.name,
    this.username,
    this.issuer,
    this.digits,
    this.period,
    this.algorithm,
  });

  /// Updated name for labeling the TOTP device
  String? name;

  /// Updated username for the TOTP device
  String? username;

  /// Updated issuer for the TOTP device
  String? issuer;

  /// Updated number of digits in TOTP code
  int? digits;

  /// Updated period in seconds for TOTP code expiration
  int? period;

  /// Updated algorithm for the TOTP device
  String? algorithm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTotpDeviceOptions &&
     other.name == name &&
     other.username == username &&
     other.issuer == issuer &&
     other.digits == digits &&
     other.period == period &&
     other.algorithm == algorithm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode);

  @override
  String toString() => 'UpdateTotpDeviceOptions[name=$name, username=$username, issuer=$issuer, digits=$digits, period=$period, algorithm=$algorithm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    if (this.digits != null) {
      json[r'digits'] = this.digits;
    } else {
      json[r'digits'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateTotpDeviceOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTotpDeviceOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateTotpDeviceOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateTotpDeviceOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateTotpDeviceOptions(
        name: mapValueOfType<String>(json, r'name'),
        username: mapValueOfType<String>(json, r'username'),
        issuer: mapValueOfType<String>(json, r'issuer'),
        digits: mapValueOfType<int>(json, r'digits'),
        period: mapValueOfType<int>(json, r'period'),
        algorithm: mapValueOfType<String>(json, r'algorithm'),
      );
    }
    return null;
  }

  static List<UpdateTotpDeviceOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTotpDeviceOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTotpDeviceOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTotpDeviceOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateTotpDeviceOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTotpDeviceOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTotpDeviceOptions-objects as value to a dart map
  static Map<String, List<UpdateTotpDeviceOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTotpDeviceOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTotpDeviceOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

