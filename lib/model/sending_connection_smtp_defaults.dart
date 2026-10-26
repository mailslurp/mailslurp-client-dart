//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionSmtpDefaults {
  /// Returns a new [SendingConnectionSmtpDefaults] instance.
  SendingConnectionSmtpDefaults({
    this.host,
    this.hostOptions = const [],
    this.ports = const [],
    this.recommendedPort,
    this.recommendedSecurity,
    this.defaultUsername,
    this.usernameHint,
    this.passwordHint,
  });

  String? host;

  List<SendingConnectionSmtpHostOption> hostOptions;

  List<int> ports;

  int? recommendedPort;

  SendingConnectionSmtpDefaultsRecommendedSecurityEnum? recommendedSecurity;

  String? defaultUsername;

  String? usernameHint;

  String? passwordHint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionSmtpDefaults &&
     other.host == host &&
     other.hostOptions == hostOptions &&
     other.ports == ports &&
     other.recommendedPort == recommendedPort &&
     other.recommendedSecurity == recommendedSecurity &&
     other.defaultUsername == defaultUsername &&
     other.usernameHint == usernameHint &&
     other.passwordHint == passwordHint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (hostOptions.hashCode) +
    (ports.hashCode) +
    (recommendedPort == null ? 0 : recommendedPort!.hashCode) +
    (recommendedSecurity == null ? 0 : recommendedSecurity!.hashCode) +
    (defaultUsername == null ? 0 : defaultUsername!.hashCode) +
    (usernameHint == null ? 0 : usernameHint!.hashCode) +
    (passwordHint == null ? 0 : passwordHint!.hashCode);

  @override
  String toString() => 'SendingConnectionSmtpDefaults[host=$host, hostOptions=$hostOptions, ports=$ports, recommendedPort=$recommendedPort, recommendedSecurity=$recommendedSecurity, defaultUsername=$defaultUsername, usernameHint=$usernameHint, passwordHint=$passwordHint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
      json[r'hostOptions'] = this.hostOptions;
      json[r'ports'] = this.ports;
    if (this.recommendedPort != null) {
      json[r'recommendedPort'] = this.recommendedPort;
    } else {
      json[r'recommendedPort'] = null;
    }
    if (this.recommendedSecurity != null) {
      json[r'recommendedSecurity'] = this.recommendedSecurity;
    } else {
      json[r'recommendedSecurity'] = null;
    }
    if (this.defaultUsername != null) {
      json[r'defaultUsername'] = this.defaultUsername;
    } else {
      json[r'defaultUsername'] = null;
    }
    if (this.usernameHint != null) {
      json[r'usernameHint'] = this.usernameHint;
    } else {
      json[r'usernameHint'] = null;
    }
    if (this.passwordHint != null) {
      json[r'passwordHint'] = this.passwordHint;
    } else {
      json[r'passwordHint'] = null;
    }
    return json;
  }

  /// Returns a new [SendingConnectionSmtpDefaults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionSmtpDefaults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionSmtpDefaults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionSmtpDefaults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionSmtpDefaults(
        host: mapValueOfType<String>(json, r'host'),
        hostOptions: SendingConnectionSmtpHostOption.listFromJson(json[r'hostOptions']),
        ports: json[r'ports'] is List
            ? (json[r'ports'] as List).cast<int>()
            : const [],
        recommendedPort: mapValueOfType<int>(json, r'recommendedPort'),
        recommendedSecurity: SendingConnectionSmtpDefaultsRecommendedSecurityEnum.fromJson(json[r'recommendedSecurity']),
        defaultUsername: mapValueOfType<String>(json, r'defaultUsername'),
        usernameHint: mapValueOfType<String>(json, r'usernameHint'),
        passwordHint: mapValueOfType<String>(json, r'passwordHint'),
      );
    }
    return null;
  }

  static List<SendingConnectionSmtpDefaults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionSmtpDefaults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionSmtpDefaults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionSmtpDefaults> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionSmtpDefaults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionSmtpDefaults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionSmtpDefaults-objects as value to a dart map
  static Map<String, List<SendingConnectionSmtpDefaults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionSmtpDefaults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionSmtpDefaults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hostOptions',
    'ports',
  };
}


class SendingConnectionSmtpDefaultsRecommendedSecurityEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionSmtpDefaultsRecommendedSecurityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START_TLS = SendingConnectionSmtpDefaultsRecommendedSecurityEnum._(r'START_TLS');
  static const TLS = SendingConnectionSmtpDefaultsRecommendedSecurityEnum._(r'TLS');

  /// List of all possible values in this [enum][SendingConnectionSmtpDefaultsRecommendedSecurityEnum].
  static const values = <SendingConnectionSmtpDefaultsRecommendedSecurityEnum>[
    START_TLS,
    TLS,
  ];

  static SendingConnectionSmtpDefaultsRecommendedSecurityEnum? fromJson(dynamic value) => SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer().decode(value);

  static List<SendingConnectionSmtpDefaultsRecommendedSecurityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionSmtpDefaultsRecommendedSecurityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionSmtpDefaultsRecommendedSecurityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionSmtpDefaultsRecommendedSecurityEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionSmtpDefaultsRecommendedSecurityEnum].
class SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer {
  factory SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer() => _instance ??= const SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer._();

  const SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer._();

  String encode(SendingConnectionSmtpDefaultsRecommendedSecurityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionSmtpDefaultsRecommendedSecurityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionSmtpDefaultsRecommendedSecurityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'START_TLS': return SendingConnectionSmtpDefaultsRecommendedSecurityEnum.START_TLS;
        case r'TLS': return SendingConnectionSmtpDefaultsRecommendedSecurityEnum.TLS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer] instance.
  static SendingConnectionSmtpDefaultsRecommendedSecurityEnumTypeTransformer? _instance;
}


