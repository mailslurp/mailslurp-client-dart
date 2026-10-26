//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExchangePostmasterCodeOptions {
  /// Returns a new [ExchangePostmasterCodeOptions] instance.
  ExchangePostmasterCodeOptions({
    required this.authorizationCode,
    required this.redirectUri,
    required this.state,
  });

  String authorizationCode;

  String redirectUri;

  String state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExchangePostmasterCodeOptions &&
     other.authorizationCode == authorizationCode &&
     other.redirectUri == redirectUri &&
     other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorizationCode.hashCode) +
    (redirectUri.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'ExchangePostmasterCodeOptions[authorizationCode=$authorizationCode, redirectUri=$redirectUri, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'authorizationCode'] = this.authorizationCode;
      json[r'redirectUri'] = this.redirectUri;
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [ExchangePostmasterCodeOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExchangePostmasterCodeOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExchangePostmasterCodeOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExchangePostmasterCodeOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExchangePostmasterCodeOptions(
        authorizationCode: mapValueOfType<String>(json, r'authorizationCode')!,
        redirectUri: mapValueOfType<String>(json, r'redirectUri')!,
        state: mapValueOfType<String>(json, r'state')!,
      );
    }
    return null;
  }

  static List<ExchangePostmasterCodeOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExchangePostmasterCodeOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExchangePostmasterCodeOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExchangePostmasterCodeOptions> mapFromJson(dynamic json) {
    final map = <String, ExchangePostmasterCodeOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExchangePostmasterCodeOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExchangePostmasterCodeOptions-objects as value to a dart map
  static Map<String, List<ExchangePostmasterCodeOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExchangePostmasterCodeOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExchangePostmasterCodeOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'authorizationCode',
    'redirectUri',
    'state',
  };
}

