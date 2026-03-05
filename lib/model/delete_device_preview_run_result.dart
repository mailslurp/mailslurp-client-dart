//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteDevicePreviewRunResult {
  /// Returns a new [DeleteDevicePreviewRunResult] instance.
  DeleteDevicePreviewRunResult({
    required this.runId,
    required this.deleted,
    required this.remoteCleanupAttempted,
    required this.remoteCleanupSucceeded,
  });

  String runId;

  bool deleted;

  bool remoteCleanupAttempted;

  bool remoteCleanupSucceeded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteDevicePreviewRunResult &&
     other.runId == runId &&
     other.deleted == deleted &&
     other.remoteCleanupAttempted == remoteCleanupAttempted &&
     other.remoteCleanupSucceeded == remoteCleanupSucceeded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId.hashCode) +
    (deleted.hashCode) +
    (remoteCleanupAttempted.hashCode) +
    (remoteCleanupSucceeded.hashCode);

  @override
  String toString() => 'DeleteDevicePreviewRunResult[runId=$runId, deleted=$deleted, remoteCleanupAttempted=$remoteCleanupAttempted, remoteCleanupSucceeded=$remoteCleanupSucceeded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runId'] = this.runId;
      json[r'deleted'] = this.deleted;
      json[r'remoteCleanupAttempted'] = this.remoteCleanupAttempted;
      json[r'remoteCleanupSucceeded'] = this.remoteCleanupSucceeded;
    return json;
  }

  /// Returns a new [DeleteDevicePreviewRunResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteDevicePreviewRunResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteDevicePreviewRunResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteDevicePreviewRunResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteDevicePreviewRunResult(
        runId: mapValueOfType<String>(json, r'runId')!,
        deleted: mapValueOfType<bool>(json, r'deleted')!,
        remoteCleanupAttempted: mapValueOfType<bool>(json, r'remoteCleanupAttempted')!,
        remoteCleanupSucceeded: mapValueOfType<bool>(json, r'remoteCleanupSucceeded')!,
      );
    }
    return null;
  }

  static List<DeleteDevicePreviewRunResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteDevicePreviewRunResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteDevicePreviewRunResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteDevicePreviewRunResult> mapFromJson(dynamic json) {
    final map = <String, DeleteDevicePreviewRunResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteDevicePreviewRunResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteDevicePreviewRunResult-objects as value to a dart map
  static Map<String, List<DeleteDevicePreviewRunResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteDevicePreviewRunResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteDevicePreviewRunResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'runId',
    'deleted',
    'remoteCleanupAttempted',
    'remoteCleanupSucceeded',
  };
}

