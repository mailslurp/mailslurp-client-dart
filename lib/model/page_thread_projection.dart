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
    this.pageable,
    this.last,
    this.totalPages,
    this.totalElements,
    this.size,
    this.number,
    this.sort,
    this.first,
    this.numberOfElements,
    this.empty,
  });

  List<ThreadProjection> content;

  Pageable pageable;

  bool last;

  int totalPages;

  int totalElements;

  int size;

  int number;

  Sort sort;

  bool first;

  int numberOfElements;

  bool empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageThreadProjection &&
     other.content == content &&
     other.pageable == pageable &&
     other.last == last &&
     other.totalPages == totalPages &&
     other.totalElements == totalElements &&
     other.size == size &&
     other.number == number &&
     other.sort == sort &&
     other.first == first &&
     other.numberOfElements == numberOfElements &&
     other.empty == empty;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode) +
    (pageable == null ? 0 : pageable.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (totalPages == null ? 0 : totalPages.hashCode) +
    (totalElements == null ? 0 : totalElements.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements.hashCode) +
    (empty == null ? 0 : empty.hashCode);

  @override
  String toString() => 'PageThreadProjection[content=$content, pageable=$pageable, last=$last, totalPages=$totalPages, totalElements=$totalElements, size=$size, number=$number, sort=$sort, first=$first, numberOfElements=$numberOfElements, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (content != null) {
      json[r'content'] = content;
    }
    if (pageable != null) {
      json[r'pageable'] = pageable;
    }
    if (last != null) {
      json[r'last'] = last;
    }
    if (totalPages != null) {
      json[r'totalPages'] = totalPages;
    }
    if (totalElements != null) {
      json[r'totalElements'] = totalElements;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    if (sort != null) {
      json[r'sort'] = sort;
    }
    if (first != null) {
      json[r'first'] = first;
    }
    if (numberOfElements != null) {
      json[r'numberOfElements'] = numberOfElements;
    }
    if (empty != null) {
      json[r'empty'] = empty;
    }
    return json;
  }

  /// Returns a new [PageThreadProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageThreadProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageThreadProjection(
        content: ThreadProjection.listFromJson(json[r'content']),
        pageable: Pageable.fromJson(json[r'pageable']),
        last: json[r'last'],
        totalPages: json[r'totalPages'],
        totalElements: json[r'totalElements'],
        size: json[r'size'],
        number: json[r'number'],
        sort: Sort.fromJson(json[r'sort']),
        first: json[r'first'],
        numberOfElements: json[r'numberOfElements'],
        empty: json[r'empty'],
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

