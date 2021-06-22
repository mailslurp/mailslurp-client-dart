//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageThreadProjection {
  /// Returns a new [PageThreadProjection] instance.
  PageThreadProjection({
    this.content = const [],
    this.empty,
    this.first,
    this.last,
    this.number,
    this.numberOfElements,
    this.pageable,
    this.size,
    this.sort,
    this.totalElements,
    this.totalPages,
  });

  List<ThreadProjection> content;

  bool empty;

  bool first;

  bool last;

  int number;

  int numberOfElements;

  Pageable pageable;

  int size;

  Sort sort;

  int totalElements;

  int totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageThreadProjection &&
     other.content == content &&
     other.empty == empty &&
     other.first == first &&
     other.last == last &&
     other.number == number &&
     other.numberOfElements == numberOfElements &&
     other.pageable == pageable &&
     other.size == size &&
     other.sort == sort &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode) +
    (empty == null ? 0 : empty.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements.hashCode) +
    (pageable == null ? 0 : pageable.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (totalElements == null ? 0 : totalElements.hashCode) +
    (totalPages == null ? 0 : totalPages.hashCode);

  @override
  String toString() => 'PageThreadProjection[content=$content, empty=$empty, first=$first, last=$last, number=$number, numberOfElements=$numberOfElements, pageable=$pageable, size=$size, sort=$sort, totalElements=$totalElements, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (content != null) {
      json[r'content'] = content;
    }
    if (empty != null) {
      json[r'empty'] = empty;
    }
    if (first != null) {
      json[r'first'] = first;
    }
    if (last != null) {
      json[r'last'] = last;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    if (numberOfElements != null) {
      json[r'numberOfElements'] = numberOfElements;
    }
    if (pageable != null) {
      json[r'pageable'] = pageable;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (sort != null) {
      json[r'sort'] = sort;
    }
    if (totalElements != null) {
      json[r'totalElements'] = totalElements;
    }
    if (totalPages != null) {
      json[r'totalPages'] = totalPages;
    }
    return json;
  }

  /// Returns a new [PageThreadProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageThreadProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageThreadProjection(
        content: ThreadProjection.listFromJson(json[r'content']),
        empty: json[r'empty'],
        first: json[r'first'],
        last: json[r'last'],
        number: json[r'number'],
        numberOfElements: json[r'numberOfElements'],
        pageable: Pageable.fromJson(json[r'pageable']),
        size: json[r'size'],
        sort: Sort.fromJson(json[r'sort']),
        totalElements: json[r'totalElements'],
        totalPages: json[r'totalPages'],
    );

  static List<PageThreadProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageThreadProjection>[]
      : json.map((v) => PageThreadProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageThreadProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageThreadProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageThreadProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageThreadProjection-objects as value to a dart map
  static Map<String, List<PageThreadProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageThreadProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageThreadProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

