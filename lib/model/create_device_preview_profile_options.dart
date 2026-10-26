//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewProfileOptions {
  /// Returns a new [CreateDevicePreviewProfileOptions] instance.
  CreateDevicePreviewProfileOptions({
    required this.localPart,
    this.displayName,
    this.options,
    this.enabled,
  });

  String localPart;

  String? displayName;

  CreateDevicePreviewOptions? options;

  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewProfileOptions &&
     other.localPart == localPart &&
     other.displayName == displayName &&
     other.options == options &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (localPart.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (options == null ? 0 : options!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewProfileOptions[localPart=$localPart, displayName=$displayName, options=$options, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'localPart'] = this.localPart;
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewProfileOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewProfileOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewProfileOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewProfileOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewProfileOptions(
        localPart: mapValueOfType<String>(json, r'localPart')!,
        displayName: mapValueOfType<String>(json, r'displayName'),
        options: CreateDevicePreviewOptions.fromJson(json[r'options']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewProfileOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewProfileOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewProfileOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewProfileOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewProfileOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewProfileOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewProfileOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewProfileOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewProfileOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewProfileOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'localPart',
  };
}

