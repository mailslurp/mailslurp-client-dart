//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimPatchRequest {
  /// Returns a new [ScimPatchRequest] instance.
  ScimPatchRequest({
    this.schemas = const [],
    this.operations = const [],
  });

  List<String> schemas;

  List<ScimPatchOperation> operations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimPatchRequest &&
     other.schemas == schemas &&
     other.operations == operations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemas.hashCode) +
    (operations.hashCode);

  @override
  String toString() => 'ScimPatchRequest[schemas=$schemas, operations=$operations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'schemas'] = this.schemas;
      json[r'Operations'] = this.operations;
    return json;
  }

  /// Returns a new [ScimPatchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimPatchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimPatchRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimPatchRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimPatchRequest(
        schemas: json[r'schemas'] is List
            ? (json[r'schemas'] as List).cast<String>()
            : const [],
        operations: ScimPatchOperation.listFromJson(json[r'Operations']),
      );
    }
    return null;
  }

  static List<ScimPatchRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimPatchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimPatchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimPatchRequest> mapFromJson(dynamic json) {
    final map = <String, ScimPatchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimPatchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimPatchRequest-objects as value to a dart map
  static Map<String, List<ScimPatchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimPatchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimPatchRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schemas',
    'Operations',
  };
}

