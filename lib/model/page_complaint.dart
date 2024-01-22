//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageComplaint {
  /// Returns a new [PageComplaint] instance.
  PageComplaint({
    this.content = const [],
    this.pageable,
    required this.totalPages,
    required this.totalElements,
    this.last,
    this.numberOfElements,
    this.first,
    this.size,
    this.number,
    this.sort,
    this.empty,
  });

  List<Complaint> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PageableObject? pageable;

  int totalPages;

  int totalElements;

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
  int? numberOfElements;

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
  int? size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SortObject? sort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageComplaint &&
     other.content == content &&
     other.pageable == pageable &&
     other.totalPages == totalPages &&
     other.totalElements == totalElements &&
     other.last == last &&
     other.numberOfElements == numberOfElements &&
     other.first == first &&
     other.size == size &&
     other.number == number &&
     other.sort == sort &&
     other.empty == empty;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (pageable == null ? 0 : pageable!.hashCode) +
    (totalPages.hashCode) +
    (totalElements.hashCode) +
    (last == null ? 0 : last!.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements!.hashCode) +
    (first == null ? 0 : first!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (sort == null ? 0 : sort!.hashCode) +
    (empty == null ? 0 : empty!.hashCode);

  @override
  String toString() => 'PageComplaint[content=$content, pageable=$pageable, totalPages=$totalPages, totalElements=$totalElements, last=$last, numberOfElements=$numberOfElements, first=$first, size=$size, number=$number, sort=$sort, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.pageable != null) {
      json[r'pageable'] = this.pageable;
    } else {
      json[r'pageable'] = null;
    }
      json[r'totalPages'] = this.totalPages;
      json[r'totalElements'] = this.totalElements;
    if (this.last != null) {
      json[r'last'] = this.last;
    } else {
      json[r'last'] = null;
    }
    if (this.numberOfElements != null) {
      json[r'numberOfElements'] = this.numberOfElements;
    } else {
      json[r'numberOfElements'] = null;
    }
    if (this.first != null) {
      json[r'first'] = this.first;
    } else {
      json[r'first'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    if (this.empty != null) {
      json[r'empty'] = this.empty;
    } else {
      json[r'empty'] = null;
    }
    return json;
  }

  /// Returns a new [PageComplaint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageComplaint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PageComplaint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PageComplaint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PageComplaint(
        content: Complaint.listFromJson(json[r'content']),
        pageable: PageableObject.fromJson(json[r'pageable']),
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        last: mapValueOfType<bool>(json, r'last'),
        numberOfElements: mapValueOfType<int>(json, r'numberOfElements'),
        first: mapValueOfType<bool>(json, r'first'),
        size: mapValueOfType<int>(json, r'size'),
        number: mapValueOfType<int>(json, r'number'),
        sort: SortObject.fromJson(json[r'sort']),
        empty: mapValueOfType<bool>(json, r'empty'),
      );
    }
    return null;
  }

  static List<PageComplaint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PageComplaint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageComplaint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageComplaint> mapFromJson(dynamic json) {
    final map = <String, PageComplaint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageComplaint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageComplaint-objects as value to a dart map
  static Map<String, List<PageComplaint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PageComplaint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PageComplaint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalPages',
    'totalElements',
  };
}

