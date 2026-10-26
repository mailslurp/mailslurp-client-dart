//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewShareLinkOptions {
  /// Returns a new [CreateDevicePreviewShareLinkOptions] instance.
  CreateDevicePreviewShareLinkOptions({
    this.label,
    this.expiresAt,
  });

  String? label;

  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewShareLinkOptions &&
     other.label == label &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewShareLinkOptions[label=$label, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewShareLinkOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewShareLinkOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewShareLinkOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewShareLinkOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewShareLinkOptions(
        label: mapValueOfType<String>(json, r'label'),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewShareLinkOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewShareLinkOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewShareLinkOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewShareLinkOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewShareLinkOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewShareLinkOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewShareLinkOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewShareLinkOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewShareLinkOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewShareLinkOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

