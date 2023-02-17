//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageSentEmailWithQueueProjection {
  /// Returns a new [PageSentEmailWithQueueProjection] instance.
  PageSentEmailWithQueueProjection({
    this.content = const [],
    this.pageable,
    this.total,
    @required this.size,
    @required this.number,
    @required this.numberOfElements,
    @required this.totalElements,
    @required this.totalPages,
    this.last,
    this.sort,
    this.first,
    this.empty,
  });

  /// Collection of items
  List<SendWithQueueResult> content;

  PageableObject pageable;

  int total;

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

  bool last;

  Sort sort;

  bool first;

  bool empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageSentEmailWithQueueProjection &&
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
    (content == null ? 0 : content.hashCode) +
    (pageable == null ? 0 : pageable.hashCode) +
    (total == null ? 0 : total.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements.hashCode) +
    (totalElements == null ? 0 : totalElements.hashCode) +
    (totalPages == null ? 0 : totalPages.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (empty == null ? 0 : empty.hashCode);

  @override
  String toString() => 'PageSentEmailWithQueueProjection[content=$content, pageable=$pageable, total=$total, size=$size, number=$number, numberOfElements=$numberOfElements, totalElements=$totalElements, totalPages=$totalPages, last=$last, sort=$sort, first=$first, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = content;
    if (pageable != null) {
      json[r'pageable'] = pageable;
    }
    if (total != null) {
      json[r'total'] = total;
    }
      json[r'size'] = size;
      json[r'number'] = number;
      json[r'numberOfElements'] = numberOfElements;
      json[r'totalElements'] = totalElements;
      json[r'totalPages'] = totalPages;
    if (last != null) {
      json[r'last'] = last;
    }
    if (sort != null) {
      json[r'sort'] = sort;
    }
    if (first != null) {
      json[r'first'] = first;
    }
    if (empty != null) {
      json[r'empty'] = empty;
    }
    return json;
  }

  /// Returns a new [PageSentEmailWithQueueProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageSentEmailWithQueueProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageSentEmailWithQueueProjection(
        content: SendWithQueueResult.listFromJson(json[r'content']),
        pageable: PageableObject.fromJson(json[r'pageable']),
        total: json[r'total'],
        size: json[r'size'],
        number: json[r'number'],
        numberOfElements: json[r'numberOfElements'],
        totalElements: json[r'totalElements'],
        totalPages: json[r'totalPages'],
        last: json[r'last'],
        sort: Sort.fromJson(json[r'sort']),
        first: json[r'first'],
        empty: json[r'empty'],
    );

  static List<PageSentEmailWithQueueProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageSentEmailWithQueueProjection>[]
      : json.map((v) => PageSentEmailWithQueueProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageSentEmailWithQueueProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageSentEmailWithQueueProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageSentEmailWithQueueProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageSentEmailWithQueueProjection-objects as value to a dart map
  static Map<String, List<PageSentEmailWithQueueProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageSentEmailWithQueueProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageSentEmailWithQueueProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

