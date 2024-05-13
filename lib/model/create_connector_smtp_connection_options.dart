//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorSmtpConnectionOptions {
  /// Returns a new [CreateConnectorSmtpConnectionOptions] instance.
  CreateConnectorSmtpConnectionOptions({
    this.enabled,
    required this.smtpHost,
    this.smtpPort,
    this.smtpSsl,
    this.smtpUsername,
    this.smtpPassword,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  String smtpHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? smtpPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smtpSsl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorSmtpConnectionOptions &&
     other.enabled == enabled &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpSsl == smtpSsl &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (smtpHost.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpSsl == null ? 0 : smtpSsl!.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode);

  @override
  String toString() => 'CreateConnectorSmtpConnectionOptions[enabled=$enabled, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpSsl=$smtpSsl, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'smtpHost'] = this.smtpHost;
    if (this.smtpPort != null) {
      json[r'smtpPort'] = this.smtpPort;
    } else {
      json[r'smtpPort'] = null;
    }
    if (this.smtpSsl != null) {
      json[r'smtpSsl'] = this.smtpSsl;
    } else {
      json[r'smtpSsl'] = null;
    }
    if (this.smtpUsername != null) {
      json[r'smtpUsername'] = this.smtpUsername;
    } else {
      json[r'smtpUsername'] = null;
    }
    if (this.smtpPassword != null) {
      json[r'smtpPassword'] = this.smtpPassword;
    } else {
      json[r'smtpPassword'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorSmtpConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorSmtpConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorSmtpConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorSmtpConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorSmtpConnectionOptions(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        smtpHost: mapValueOfType<String>(json, r'smtpHost')!,
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpSsl: mapValueOfType<bool>(json, r'smtpSsl'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
      );
    }
    return null;
  }

  static List<CreateConnectorSmtpConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorSmtpConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorSmtpConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorSmtpConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorSmtpConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorSmtpConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorSmtpConnectionOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorSmtpConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorSmtpConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorSmtpConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'smtpHost',
  };
}

