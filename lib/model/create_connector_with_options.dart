//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorWithOptions {
  /// Returns a new [CreateConnectorWithOptions] instance.
  CreateConnectorWithOptions({
    required this.createConnectorOptions,
    this.createConnectorImapConnectionOptions,
    this.createConnectorSmtpConnectionOptions,
    this.createConnectorSyncSettingsOptions,
  });

  CreateConnectorOptions createConnectorOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateConnectorImapConnectionOptions? createConnectorImapConnectionOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateConnectorSmtpConnectionOptions? createConnectorSmtpConnectionOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateConnectorSyncSettingsOptions? createConnectorSyncSettingsOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorWithOptions &&
     other.createConnectorOptions == createConnectorOptions &&
     other.createConnectorImapConnectionOptions == createConnectorImapConnectionOptions &&
     other.createConnectorSmtpConnectionOptions == createConnectorSmtpConnectionOptions &&
     other.createConnectorSyncSettingsOptions == createConnectorSyncSettingsOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createConnectorOptions.hashCode) +
    (createConnectorImapConnectionOptions == null ? 0 : createConnectorImapConnectionOptions!.hashCode) +
    (createConnectorSmtpConnectionOptions == null ? 0 : createConnectorSmtpConnectionOptions!.hashCode) +
    (createConnectorSyncSettingsOptions == null ? 0 : createConnectorSyncSettingsOptions!.hashCode);

  @override
  String toString() => 'CreateConnectorWithOptions[createConnectorOptions=$createConnectorOptions, createConnectorImapConnectionOptions=$createConnectorImapConnectionOptions, createConnectorSmtpConnectionOptions=$createConnectorSmtpConnectionOptions, createConnectorSyncSettingsOptions=$createConnectorSyncSettingsOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createConnectorOptions'] = this.createConnectorOptions;
    if (this.createConnectorImapConnectionOptions != null) {
      json[r'createConnectorImapConnectionOptions'] = this.createConnectorImapConnectionOptions;
    } else {
      json[r'createConnectorImapConnectionOptions'] = null;
    }
    if (this.createConnectorSmtpConnectionOptions != null) {
      json[r'createConnectorSmtpConnectionOptions'] = this.createConnectorSmtpConnectionOptions;
    } else {
      json[r'createConnectorSmtpConnectionOptions'] = null;
    }
    if (this.createConnectorSyncSettingsOptions != null) {
      json[r'createConnectorSyncSettingsOptions'] = this.createConnectorSyncSettingsOptions;
    } else {
      json[r'createConnectorSyncSettingsOptions'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorWithOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorWithOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorWithOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorWithOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorWithOptions(
        createConnectorOptions: CreateConnectorOptions.fromJson(json[r'createConnectorOptions'])!,
        createConnectorImapConnectionOptions: CreateConnectorImapConnectionOptions.fromJson(json[r'createConnectorImapConnectionOptions']),
        createConnectorSmtpConnectionOptions: CreateConnectorSmtpConnectionOptions.fromJson(json[r'createConnectorSmtpConnectionOptions']),
        createConnectorSyncSettingsOptions: CreateConnectorSyncSettingsOptions.fromJson(json[r'createConnectorSyncSettingsOptions']),
      );
    }
    return null;
  }

  static List<CreateConnectorWithOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorWithOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorWithOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorWithOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorWithOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorWithOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorWithOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorWithOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorWithOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorWithOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createConnectorOptions',
  };
}

