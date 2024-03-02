//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SortObject {
  /// Returns a new [SortObject] instance.
  SortObject({
    this.sorted,
    this.unsorted,
    this.empty,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sorted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unsorted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortObject &&
     other.sorted == sorted &&
     other.unsorted == unsorted &&
     other.empty == empty;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sorted == null ? 0 : sorted!.hashCode) +
    (unsorted == null ? 0 : unsorted!.hashCode) +
    (empty == null ? 0 : empty!.hashCode);

  @override
  String toString() => 'SortObject[sorted=$sorted, unsorted=$unsorted, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sorted != null) {
      json[r'sorted'] = this.sorted;
    } else {
      json[r'sorted'] = null;
    }
    if (this.unsorted != null) {
      json[r'unsorted'] = this.unsorted;
    } else {
      json[r'unsorted'] = null;
    }
    if (this.empty != null) {
      json[r'empty'] = this.empty;
    } else {
      json[r'empty'] = null;
    }
    return json;
  }

  /// Returns a new [SortObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortObject(
        sorted: mapValueOfType<bool>(json, r'sorted'),
        unsorted: mapValueOfType<bool>(json, r'unsorted'),
        empty: mapValueOfType<bool>(json, r'empty'),
      );
    }
    return null;
  }

  static List<SortObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortObject> mapFromJson(dynamic json) {
    final map = <String, SortObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortObject-objects as value to a dart map
  static Map<String, List<SortObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SortObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

