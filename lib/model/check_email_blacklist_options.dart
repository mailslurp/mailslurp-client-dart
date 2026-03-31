//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailBlacklistOptions {
  /// Returns a new [CheckEmailBlacklistOptions] instance.
  CheckEmailBlacklistOptions({
    this.domain,
    this.ipAddress,
    this.mxHost,
    this.captchaToken,
  });

  /// Domain to expand into A and MX host IPv4 addresses
  String? domain;

  /// Specific IPv4 address to check directly
  String? ipAddress;

  /// Specific MX host to resolve and check directly
  String? mxHost;

  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailBlacklistOptions &&
     other.domain == domain &&
     other.ipAddress == ipAddress &&
     other.mxHost == mxHost &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (mxHost == null ? 0 : mxHost!.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CheckEmailBlacklistOptions[domain=$domain, ipAddress=$ipAddress, mxHost=$mxHost, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.mxHost != null) {
      json[r'mxHost'] = this.mxHost;
    } else {
      json[r'mxHost'] = null;
    }
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CheckEmailBlacklistOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailBlacklistOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailBlacklistOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailBlacklistOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailBlacklistOptions(
        domain: mapValueOfType<String>(json, r'domain'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        mxHost: mapValueOfType<String>(json, r'mxHost'),
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CheckEmailBlacklistOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBlacklistOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBlacklistOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailBlacklistOptions> mapFromJson(dynamic json) {
    final map = <String, CheckEmailBlacklistOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailBlacklistOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailBlacklistOptions-objects as value to a dart map
  static Map<String, List<CheckEmailBlacklistOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailBlacklistOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailBlacklistOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

