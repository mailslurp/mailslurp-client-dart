//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthV2BootstrapDto {
  /// Returns a new [AuthV2BootstrapDto] instance.
  AuthV2BootstrapDto({
    required this.bootstrap,
    required this.returnTo,
    required this.sessionExpiresAt,
  });

  AuthBootstrapDto bootstrap;

  String returnTo;

  DateTime sessionExpiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthV2BootstrapDto &&
     other.bootstrap == bootstrap &&
     other.returnTo == returnTo &&
     other.sessionExpiresAt == sessionExpiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bootstrap.hashCode) +
    (returnTo.hashCode) +
    (sessionExpiresAt.hashCode);

  @override
  String toString() => 'AuthV2BootstrapDto[bootstrap=$bootstrap, returnTo=$returnTo, sessionExpiresAt=$sessionExpiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bootstrap'] = this.bootstrap;
      json[r'returnTo'] = this.returnTo;
      json[r'sessionExpiresAt'] = this.sessionExpiresAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AuthV2BootstrapDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthV2BootstrapDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthV2BootstrapDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthV2BootstrapDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthV2BootstrapDto(
        bootstrap: AuthBootstrapDto.fromJson(json[r'bootstrap'])!,
        returnTo: mapValueOfType<String>(json, r'returnTo')!,
        sessionExpiresAt: mapDateTime(json, r'sessionExpiresAt', '')!,
      );
    }
    return null;
  }

  static List<AuthV2BootstrapDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthV2BootstrapDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthV2BootstrapDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthV2BootstrapDto> mapFromJson(dynamic json) {
    final map = <String, AuthV2BootstrapDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthV2BootstrapDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthV2BootstrapDto-objects as value to a dart map
  static Map<String, List<AuthV2BootstrapDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthV2BootstrapDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthV2BootstrapDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bootstrap',
    'returnTo',
    'sessionExpiresAt',
  };
}

