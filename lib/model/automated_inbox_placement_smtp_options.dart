//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementSmtpOptions {
  /// Returns a new [AutomatedInboxPlacementSmtpOptions] instance.
  AutomatedInboxPlacementSmtpOptions({
    required this.host,
    required this.port,
    required this.security,
    required this.username,
    required this.password,
  });

  String host;

  /// Minimum value: 1
  /// Maximum value: 65535
  int port;

  AutomatedInboxPlacementSmtpOptionsSecurityEnum security;

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementSmtpOptions &&
     other.host == host &&
     other.port == port &&
     other.security == security &&
     other.username == username &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (port.hashCode) +
    (security.hashCode) +
    (username.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementSmtpOptions[host=$host, port=$port, security=$security, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'port'] = this.port;
      json[r'security'] = this.security;
      json[r'username'] = this.username;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [AutomatedInboxPlacementSmtpOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementSmtpOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementSmtpOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementSmtpOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementSmtpOptions(
        host: mapValueOfType<String>(json, r'host')!,
        port: mapValueOfType<int>(json, r'port')!,
        security: AutomatedInboxPlacementSmtpOptionsSecurityEnum.fromJson(json[r'security'])!,
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementSmtpOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementSmtpOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementSmtpOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementSmtpOptions> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementSmtpOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementSmtpOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementSmtpOptions-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementSmtpOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementSmtpOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementSmtpOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'port',
    'security',
    'username',
    'password',
  };
}


class AutomatedInboxPlacementSmtpOptionsSecurityEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementSmtpOptionsSecurityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START_TLS = AutomatedInboxPlacementSmtpOptionsSecurityEnum._(r'START_TLS');
  static const TLS = AutomatedInboxPlacementSmtpOptionsSecurityEnum._(r'TLS');

  /// List of all possible values in this [enum][AutomatedInboxPlacementSmtpOptionsSecurityEnum].
  static const values = <AutomatedInboxPlacementSmtpOptionsSecurityEnum>[
    START_TLS,
    TLS,
  ];

  static AutomatedInboxPlacementSmtpOptionsSecurityEnum? fromJson(dynamic value) => AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementSmtpOptionsSecurityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementSmtpOptionsSecurityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementSmtpOptionsSecurityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementSmtpOptionsSecurityEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementSmtpOptionsSecurityEnum].
class AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer {
  factory AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer._();

  const AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementSmtpOptionsSecurityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementSmtpOptionsSecurityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementSmtpOptionsSecurityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'START_TLS': return AutomatedInboxPlacementSmtpOptionsSecurityEnum.START_TLS;
        case r'TLS': return AutomatedInboxPlacementSmtpOptionsSecurityEnum.TLS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer] instance.
  static AutomatedInboxPlacementSmtpOptionsSecurityEnumTypeTransformer? _instance;
}


