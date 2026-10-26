//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MoveDevicePreviewRunsResult {
  /// Returns a new [MoveDevicePreviewRunsResult] instance.
  MoveDevicePreviewRunsResult({
    this.runIds = const [],
    this.folderId,
  });

  List<String> runIds;

  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoveDevicePreviewRunsResult &&
     other.runIds == runIds &&
     other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runIds.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'MoveDevicePreviewRunsResult[runIds=$runIds, folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runIds'] = this.runIds;
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    return json;
  }

  /// Returns a new [MoveDevicePreviewRunsResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoveDevicePreviewRunsResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoveDevicePreviewRunsResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoveDevicePreviewRunsResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoveDevicePreviewRunsResult(
        runIds: json[r'runIds'] is List
            ? (json[r'runIds'] as List).cast<String>()
            : const [],
        folderId: mapValueOfType<String>(json, r'folderId'),
      );
    }
    return null;
  }

  static List<MoveDevicePreviewRunsResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoveDevicePreviewRunsResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoveDevicePreviewRunsResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoveDevicePreviewRunsResult> mapFromJson(dynamic json) {
    final map = <String, MoveDevicePreviewRunsResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoveDevicePreviewRunsResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoveDevicePreviewRunsResult-objects as value to a dart map
  static Map<String, List<MoveDevicePreviewRunsResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoveDevicePreviewRunsResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoveDevicePreviewRunsResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'runIds',
  };
}

