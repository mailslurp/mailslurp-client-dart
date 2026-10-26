//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDevicePreviewProfileOptions {
  /// Returns a new [UpdateDevicePreviewProfileOptions] instance.
  UpdateDevicePreviewProfileOptions({
    this.localPart,
    this.displayName,
    this.options,
    this.enabled,
  });

  String? localPart;

  String? displayName;

  CreateDevicePreviewOptions? options;

  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDevicePreviewProfileOptions &&
     other.localPart == localPart &&
     other.displayName == displayName &&
     other.options == options &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (localPart == null ? 0 : localPart!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (options == null ? 0 : options!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'UpdateDevicePreviewProfileOptions[localPart=$localPart, displayName=$displayName, options=$options, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.localPart != null) {
      json[r'localPart'] = this.localPart;
    } else {
      json[r'localPart'] = null;
    }
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

  /// Returns a new [UpdateDevicePreviewProfileOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDevicePreviewProfileOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDevicePreviewProfileOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDevicePreviewProfileOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDevicePreviewProfileOptions(
        localPart: mapValueOfType<String>(json, r'localPart'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        options: CreateDevicePreviewOptions.fromJson(json[r'options']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<UpdateDevicePreviewProfileOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDevicePreviewProfileOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDevicePreviewProfileOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDevicePreviewProfileOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateDevicePreviewProfileOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDevicePreviewProfileOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDevicePreviewProfileOptions-objects as value to a dart map
  static Map<String, List<UpdateDevicePreviewProfileOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDevicePreviewProfileOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDevicePreviewProfileOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

