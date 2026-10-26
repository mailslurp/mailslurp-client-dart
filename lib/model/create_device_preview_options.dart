//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewOptions {
  /// Returns a new [CreateDevicePreviewOptions] instance.
  CreateDevicePreviewOptions({
    this.targets = const [],
    this.allTargets,
    this.qa,
    this.folderId,
  });

  /// Optional device preview target keys to request for rendering. Null leaves target selection to service configuration. Values are forwarded to ESP so newly deployed targets can be used before this API's enum list is updated.
  List<String>? targets;

  /// When true, ask the renderer to include every currently configured target. Cannot be combined with targets.
  bool? allTargets;

  CreateDevicePreviewQaOptions? qa;

  /// Optional folder for organizing the render. Missing folders leave the render unfiled.
  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewOptions &&
     other.targets == targets &&
     other.allTargets == allTargets &&
     other.qa == qa &&
     other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targets == null ? 0 : targets!.hashCode) +
    (allTargets == null ? 0 : allTargets!.hashCode) +
    (qa == null ? 0 : qa!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewOptions[targets=$targets, allTargets=$allTargets, qa=$qa, folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.targets != null) {
      json[r'targets'] = this.targets;
    } else {
      json[r'targets'] = null;
    }
    if (this.allTargets != null) {
      json[r'allTargets'] = this.allTargets;
    } else {
      json[r'allTargets'] = null;
    }
    if (this.qa != null) {
      json[r'qa'] = this.qa;
    } else {
      json[r'qa'] = null;
    }
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewOptions(
        targets: json[r'targets'] is List
            ? (json[r'targets'] as List).cast<String>()
            : const [],
        allTargets: mapValueOfType<bool>(json, r'allTargets'),
        qa: CreateDevicePreviewQaOptions.fromJson(json[r'qa']),
        folderId: mapValueOfType<String>(json, r'folderId'),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

