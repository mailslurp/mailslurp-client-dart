//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageableObject {
  /// Returns a new [PageableObject] instance.
  PageableObject({
    this.offset,
    this.sort,
    this.paged,
    this.unpaged,
    this.pageNumber,
    this.pageSize,
  });

  int offset;

  Sort sort;

  bool paged;

  bool unpaged;

  int pageNumber;

  int pageSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageableObject &&
     other.offset == offset &&
     other.sort == sort &&
     other.paged == paged &&
     other.unpaged == unpaged &&
     other.pageNumber == pageNumber &&
     other.pageSize == pageSize;

  @override
  int get hashCode =>
    (offset == null ? 0 : offset.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (paged == null ? 0 : paged.hashCode) +
    (unpaged == null ? 0 : unpaged.hashCode) +
    (pageNumber == null ? 0 : pageNumber.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode);

  @override
  String toString() => 'PageableObject[offset=$offset, sort=$sort, paged=$paged, unpaged=$unpaged, pageNumber=$pageNumber, pageSize=$pageSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (sort != null) {
      json[r'sort'] = sort;
    }
    if (paged != null) {
      json[r'paged'] = paged;
    }
    if (unpaged != null) {
      json[r'unpaged'] = unpaged;
    }
    if (pageNumber != null) {
      json[r'pageNumber'] = pageNumber;
    }
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    return json;
  }

  /// Returns a new [PageableObject] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageableObject fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageableObject(
        offset: json[r'offset'],
        sort: Sort.fromJson(json[r'sort']),
        paged: json[r'paged'],
        unpaged: json[r'unpaged'],
        pageNumber: json[r'pageNumber'],
        pageSize: json[r'pageSize'],
    );

  static List<PageableObject> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageableObject>[]
      : json.map((v) => PageableObject.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageableObject> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageableObject>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageableObject.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageableObject-objects as value to a dart map
  static Map<String, List<PageableObject>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageableObject>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageableObject.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

