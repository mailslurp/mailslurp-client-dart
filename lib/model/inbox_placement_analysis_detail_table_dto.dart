//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalysisDetailTableDto {
  /// Returns a new [InboxPlacementAnalysisDetailTableDto] instance.
  InboxPlacementAnalysisDetailTableDto({
    required this.title,
    this.columns = const [],
    this.rows = const [],
  });

  String title;

  List<String> columns;

  List<Map<String, String>> rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalysisDetailTableDto &&
     other.title == title &&
     other.columns == columns &&
     other.rows == rows;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (columns.hashCode) +
    (rows.hashCode);

  @override
  String toString() => 'InboxPlacementAnalysisDetailTableDto[title=$title, columns=$columns, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'columns'] = this.columns;
      json[r'rows'] = this.rows;
    return json;
  }

  /// Returns a new [InboxPlacementAnalysisDetailTableDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalysisDetailTableDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalysisDetailTableDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalysisDetailTableDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalysisDetailTableDto(
        title: mapValueOfType<String>(json, r'title')!,
        columns: json[r'columns'] is List
            ? (json[r'columns'] as List).cast<String>()
            : const [],
        rows: Map.listFromJson(json[r'rows']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalysisDetailTableDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalysisDetailTableDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalysisDetailTableDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalysisDetailTableDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalysisDetailTableDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalysisDetailTableDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalysisDetailTableDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalysisDetailTableDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalysisDetailTableDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalysisDetailTableDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'columns',
    'rows',
  };
}

