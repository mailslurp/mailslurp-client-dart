//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateTotpDeviceBase32SecretKeyOptions {
  /// Returns a new [CreateTotpDeviceBase32SecretKeyOptions] instance.
  CreateTotpDeviceBase32SecretKeyOptions({
    required this.base32SecretKey,
    this.name,
    this.username,
    this.issuer,
    this.digits = 6,
    this.period = 30,
    this.algorithm,
  });

  /// Base32 secret key for TOTP device as alternative to OTP Auth URI or QR code.
  String base32SecretKey;

  /// Name for labeling the TOTP device
  String? name;

  /// Optional username for the TOTP device
  String? username;

  /// Optional issuer override for the TOTP device
  String? issuer;

  /// Optional number of digits in TOTP code
  ///
  /// Minimum value: 0
  /// Maximum value: 255
  int? digits;

  /// Optional period in seconds for TOTP code expiration
  int? period;

  /// Optional algorithm override
  String? algorithm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTotpDeviceBase32SecretKeyOptions &&
     other.base32SecretKey == base32SecretKey &&
     other.name == name &&
     other.username == username &&
     other.issuer == issuer &&
     other.digits == digits &&
     other.period == period &&
     other.algorithm == algorithm;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base32SecretKey.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode);

  @override
  String toString() => 'CreateTotpDeviceBase32SecretKeyOptions[base32SecretKey=$base32SecretKey, name=$name, username=$username, issuer=$issuer, digits=$digits, period=$period, algorithm=$algorithm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'base32SecretKey'] = this.base32SecretKey;
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

  /// Returns a new [CreateTotpDeviceBase32SecretKeyOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTotpDeviceBase32SecretKeyOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTotpDeviceBase32SecretKeyOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTotpDeviceBase32SecretKeyOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTotpDeviceBase32SecretKeyOptions(
        base32SecretKey: mapValueOfType<String>(json, r'base32SecretKey')!,
        name: mapValueOfType<String>(json, r'name'),
        username: mapValueOfType<String>(json, r'username'),
        issuer: mapValueOfType<String>(json, r'issuer'),
        digits: mapValueOfType<int>(json, r'digits') ?? 6,
        period: mapValueOfType<int>(json, r'period') ?? 30,
        algorithm: mapValueOfType<String>(json, r'algorithm'),
      );
    }
    return null;
  }

  static List<CreateTotpDeviceBase32SecretKeyOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTotpDeviceBase32SecretKeyOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTotpDeviceBase32SecretKeyOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTotpDeviceBase32SecretKeyOptions> mapFromJson(dynamic json) {
    final map = <String, CreateTotpDeviceBase32SecretKeyOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTotpDeviceBase32SecretKeyOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTotpDeviceBase32SecretKeyOptions-objects as value to a dart map
  static Map<String, List<CreateTotpDeviceBase32SecretKeyOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTotpDeviceBase32SecretKeyOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTotpDeviceBase32SecretKeyOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'base32SecretKey',
  };
}

