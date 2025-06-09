//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTotpDeviceOtpAuthUrlOptions {
  /// Returns a new [CreateTotpDeviceOtpAuthUrlOptions] instance.
  CreateTotpDeviceOtpAuthUrlOptions({
    required this.otpAuthUrl,
    this.name,
    this.username,
    this.issuer,
    this.digits,
    this.period,
    this.algorithm,
  });

  String otpAuthUrl;

  String? name;

  String? username;

  String? issuer;

  int? digits;

  int? period;

  String? algorithm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTotpDeviceOtpAuthUrlOptions &&
     other.otpAuthUrl == otpAuthUrl &&
     other.name == name &&
     other.username == username &&
     other.issuer == issuer &&
     other.digits == digits &&
     other.period == period &&
     other.algorithm == algorithm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (otpAuthUrl.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode);

  @override
  String toString() => 'CreateTotpDeviceOtpAuthUrlOptions[otpAuthUrl=$otpAuthUrl, name=$name, username=$username, issuer=$issuer, digits=$digits, period=$period, algorithm=$algorithm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'otpAuthUrl'] = this.otpAuthUrl;
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

  /// Returns a new [CreateTotpDeviceOtpAuthUrlOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTotpDeviceOtpAuthUrlOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTotpDeviceOtpAuthUrlOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTotpDeviceOtpAuthUrlOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTotpDeviceOtpAuthUrlOptions(
        otpAuthUrl: mapValueOfType<String>(json, r'otpAuthUrl')!,
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

  static List<CreateTotpDeviceOtpAuthUrlOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTotpDeviceOtpAuthUrlOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTotpDeviceOtpAuthUrlOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTotpDeviceOtpAuthUrlOptions> mapFromJson(dynamic json) {
    final map = <String, CreateTotpDeviceOtpAuthUrlOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTotpDeviceOtpAuthUrlOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTotpDeviceOtpAuthUrlOptions-objects as value to a dart map
  static Map<String, List<CreateTotpDeviceOtpAuthUrlOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTotpDeviceOtpAuthUrlOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTotpDeviceOtpAuthUrlOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'otpAuthUrl',
  };
}

