//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageSentEmailProjection {
  /// Returns a new [PageSentEmailProjection] instance.
  PageSentEmailProjection({
    this.content = const [],
    this.pageable,
    this.total,
    required this.size,
    required this.number,
    required this.numberOfElements,
    required this.totalElements,
    required this.totalPages,
    this.last,
    this.sort,
    this.first,
    this.empty,
  });

  /// Collection of items
  List<SentEmailProjection> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PageableObject? pageable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Size of page requested
  int size;

  /// Page number starting at 0
  int number;

  /// Number of items returned
  int numberOfElements;

  /// Total number of items available for querying
  int totalElements;

  /// Total number of pages available
  int totalPages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? last;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Sort? sort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? first;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageSentEmailProjection &&
     other.content == content &&
     other.pageable == pageable &&
     other.total == total &&
     other.size == size &&
     other.number == number &&
     other.numberOfElements == numberOfElements &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages &&
     other.last == last &&
     other.sort == sort &&
     other.first == first &&
     other.empty == empty;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (pageable == null ? 0 : pageable!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (size.hashCode) +
    (number.hashCode) +
    (numberOfElements.hashCode) +
    (totalElements.hashCode) +
    (totalPages.hashCode) +
    (last == null ? 0 : last!.hashCode) +
    (sort == null ? 0 : sort!.hashCode) +
    (first == null ? 0 : first!.hashCode) +
    (empty == null ? 0 : empty!.hashCode);

  @override
  String toString() => 'PageSentEmailProjection[content=$content, pageable=$pageable, total=$total, size=$size, number=$number, numberOfElements=$numberOfElements, totalElements=$totalElements, totalPages=$totalPages, last=$last, sort=$sort, first=$first, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.pageable != null) {
      json[r'pageable'] = this.pageable;
    } else {
      json[r'pageable'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
      json[r'size'] = this.size;
      json[r'number'] = this.number;
      json[r'numberOfElements'] = this.numberOfElements;
      json[r'totalElements'] = this.totalElements;
      json[r'totalPages'] = this.totalPages;
    if (this.last != null) {
      json[r'last'] = this.last;
    } else {
      json[r'last'] = null;
    }
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    if (this.first != null) {
      json[r'first'] = this.first;
    } else {
      json[r'first'] = null;
    }
    if (this.empty != null) {
      json[r'empty'] = this.empty;
    } else {
      json[r'empty'] = null;
    }
    return json;
  }

  /// Returns a new [PageSentEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageSentEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PageSentEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PageSentEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PageSentEmailProjection(
        content: SentEmailProjection.listFromJson(json[r'content'])!,
        pageable: PageableObject.fromJson(json[r'pageable']),
        total: mapValueOfType<int>(json, r'total'),
        size: mapValueOfType<int>(json, r'size')!,
        number: mapValueOfType<int>(json, r'number')!,
        numberOfElements: mapValueOfType<int>(json, r'numberOfElements')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
        last: mapValueOfType<bool>(json, r'last'),
        sort: Sort.fromJson(json[r'sort']),
        first: mapValueOfType<bool>(json, r'first'),
        empty: mapValueOfType<bool>(json, r'empty'),
      );
    }
    return null;
  }

  static List<PageSentEmailProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PageSentEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageSentEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageSentEmailProjection> mapFromJson(dynamic json) {
    final map = <String, PageSentEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageSentEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageSentEmailProjection-objects as value to a dart map
  static Map<String, List<PageSentEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PageSentEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageSentEmailProjection.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'size',
    'number',
    'numberOfElements',
    'totalElements',
    'totalPages',
  };
}

