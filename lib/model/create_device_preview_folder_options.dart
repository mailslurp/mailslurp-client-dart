//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewFolderOptions {
  /// Returns a new [CreateDevicePreviewFolderOptions] instance.
  CreateDevicePreviewFolderOptions({
    required this.name,
    this.parentFolderId,
  });

  String name;

  String? parentFolderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewFolderOptions &&
     other.name == name &&
     other.parentFolderId == parentFolderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (parentFolderId == null ? 0 : parentFolderId!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewFolderOptions[name=$name, parentFolderId=$parentFolderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.parentFolderId != null) {
      json[r'parentFolderId'] = this.parentFolderId;
    } else {
      json[r'parentFolderId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewFolderOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewFolderOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewFolderOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewFolderOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewFolderOptions(
        name: mapValueOfType<String>(json, r'name')!,
        parentFolderId: mapValueOfType<String>(json, r'parentFolderId'),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewFolderOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFolderOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFolderOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewFolderOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewFolderOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewFolderOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewFolderOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewFolderOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewFolderOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewFolderOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

