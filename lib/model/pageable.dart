//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pageable {
  /// Returns a new [Pageable] instance.
  Pageable({
    this.offset,
    this.pageNumber,
    this.pageSize,
    this.paged,
    this.sort,
    this.unpaged,
  });

  int offset;

  int pageNumber;

  int pageSize;

  bool paged;

  Sort sort;

  bool unpaged;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pageable &&
     other.offset == offset &&
     other.pageNumber == pageNumber &&
     other.pageSize == pageSize &&
     other.paged == paged &&
     other.sort == sort &&
     other.unpaged == unpaged;

  @override
  int get hashCode =>
    (offset == null ? 0 : offset.hashCode) +
    (pageNumber == null ? 0 : pageNumber.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode) +
    (paged == null ? 0 : paged.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (unpaged == null ? 0 : unpaged.hashCode);

  @override
  String toString() => 'Pageable[offset=$offset, pageNumber=$pageNumber, pageSize=$pageSize, paged=$paged, sort=$sort, unpaged=$unpaged]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (pageNumber != null) {
      json[r'pageNumber'] = pageNumber;
    }
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    if (paged != null) {
      json[r'paged'] = paged;
    }
    if (sort != null) {
      json[r'sort'] = sort;
    }
    if (unpaged != null) {
      json[r'unpaged'] = unpaged;
    }
    return json;
  }

  /// Returns a new [Pageable] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Pageable fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Pageable(
        offset: json[r'offset'],
        pageNumber: json[r'pageNumber'],
        pageSize: json[r'pageSize'],
        paged: json[r'paged'],
        sort: Sort.fromJson(json[r'sort']),
        unpaged: json[r'unpaged'],
    );

  static List<Pageable> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Pageable>[]
      : json.map((v) => Pageable.fromJson(v)).toList(growable: true == growable);

  static Map<String, Pageable> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Pageable>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Pageable.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Pageable-objects as value to a dart map
  static Map<String, List<Pageable>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Pageable>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Pageable.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

