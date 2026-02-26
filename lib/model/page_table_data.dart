//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageTableData {
  /// Returns a new [PageTableData] instance.
  PageTableData({
    this.headers = const [],
    this.rows = const [],
    required this.pagination,
  });

  List<String> headers;

  List<List<String>> rows;

  Pagination pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageTableData &&
     other.headers == headers &&
     other.rows == rows &&
     other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (headers.hashCode) +
    (rows.hashCode) +
    (pagination.hashCode);

  @override
  String toString() => 'PageTableData[headers=$headers, rows=$rows, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'headers'] = this.headers;
      json[r'rows'] = this.rows;
      json[r'pagination'] = this.pagination;
    return json;
  }

  /// Returns a new [PageTableData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageTableData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PageTableData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PageTableData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PageTableData(
        headers: json[r'headers'] is List
            ? (json[r'headers'] as List).cast<String>()
            : const [],
        rows: json[r'rows'] is List
          ? (json[r'rows'] as List).map((e) =>
              e == null ? const  <String>[] : (e as List).cast<String>()
            ).toList()
          :  const [],
        pagination: Pagination.fromJson(json[r'pagination'])!,
      );
    }
    return null;
  }

  static List<PageTableData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PageTableData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageTableData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageTableData> mapFromJson(dynamic json) {
    final map = <String, PageTableData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageTableData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageTableData-objects as value to a dart map
  static Map<String, List<PageTableData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PageTableData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PageTableData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'headers',
    'rows',
    'pagination',
  };
}

