//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionSmtpOptions {
  /// Returns a new [SendingConnectionSmtpOptions] instance.
  SendingConnectionSmtpOptions({
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

  SendingConnectionSmtpOptionsSecurityEnum security;

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionSmtpOptions &&
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
  String toString() => 'SendingConnectionSmtpOptions[host=$host, port=$port, security=$security, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'port'] = this.port;
      json[r'security'] = this.security;
      json[r'username'] = this.username;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [SendingConnectionSmtpOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionSmtpOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionSmtpOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionSmtpOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionSmtpOptions(
        host: mapValueOfType<String>(json, r'host')!,
        port: mapValueOfType<int>(json, r'port')!,
        security: SendingConnectionSmtpOptionsSecurityEnum.fromJson(json[r'security'])!,
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<SendingConnectionSmtpOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionSmtpOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionSmtpOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionSmtpOptions> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionSmtpOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionSmtpOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionSmtpOptions-objects as value to a dart map
  static Map<String, List<SendingConnectionSmtpOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionSmtpOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionSmtpOptions.listFromJson(entry.value, growable: growable,);
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


class SendingConnectionSmtpOptionsSecurityEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionSmtpOptionsSecurityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START_TLS = SendingConnectionSmtpOptionsSecurityEnum._(r'START_TLS');
  static const TLS = SendingConnectionSmtpOptionsSecurityEnum._(r'TLS');

  /// List of all possible values in this [enum][SendingConnectionSmtpOptionsSecurityEnum].
  static const values = <SendingConnectionSmtpOptionsSecurityEnum>[
    START_TLS,
    TLS,
  ];

  static SendingConnectionSmtpOptionsSecurityEnum? fromJson(dynamic value) => SendingConnectionSmtpOptionsSecurityEnumTypeTransformer().decode(value);

  static List<SendingConnectionSmtpOptionsSecurityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionSmtpOptionsSecurityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionSmtpOptionsSecurityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionSmtpOptionsSecurityEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionSmtpOptionsSecurityEnum].
class SendingConnectionSmtpOptionsSecurityEnumTypeTransformer {
  factory SendingConnectionSmtpOptionsSecurityEnumTypeTransformer() => _instance ??= const SendingConnectionSmtpOptionsSecurityEnumTypeTransformer._();

  const SendingConnectionSmtpOptionsSecurityEnumTypeTransformer._();

  String encode(SendingConnectionSmtpOptionsSecurityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionSmtpOptionsSecurityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionSmtpOptionsSecurityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'START_TLS': return SendingConnectionSmtpOptionsSecurityEnum.START_TLS;
        case r'TLS': return SendingConnectionSmtpOptionsSecurityEnum.TLS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionSmtpOptionsSecurityEnumTypeTransformer] instance.
  static SendingConnectionSmtpOptionsSecurityEnumTypeTransformer? _instance;
}


