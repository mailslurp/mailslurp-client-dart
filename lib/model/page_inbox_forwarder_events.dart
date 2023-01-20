//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageInboxForwarderEvents {
  /// Returns a new [PageInboxForwarderEvents] instance.
  PageInboxForwarderEvents({
    this.content = const [],
    this.pageable,
    this.total,
    this.last,
    this.totalElements,
    this.totalPages,
    this.size,
    this.number,
    this.sort,
    this.first,
    this.numberOfElements,
    this.empty,
  });

  List<InboxForwarderEventProjection> content;

  PageableObject pageable;

  int total;

  bool last;

  int totalElements;

  int totalPages;

  int size;

  int number;

  Sort sort;

  bool first;

  int numberOfElements;

  bool empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageInboxForwarderEvents &&
     other.content == content &&
     other.pageable == pageable &&
     other.total == total &&
     other.last == last &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages &&
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
    (total == null ? 0 : total.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (totalElements == null ? 0 : totalElements.hashCode) +
    (totalPages == null ? 0 : totalPages.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements.hashCode) +
    (empty == null ? 0 : empty.hashCode);

  @override
  String toString() => 'PageInboxForwarderEvents[content=$content, pageable=$pageable, total=$total, last=$last, totalElements=$totalElements, totalPages=$totalPages, size=$size, number=$number, sort=$sort, first=$first, numberOfElements=$numberOfElements, empty=$empty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (content != null) {
      json[r'content'] = content;
    }
    if (pageable != null) {
      json[r'pageable'] = pageable;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    if (last != null) {
      json[r'last'] = last;
    }
    if (totalElements != null) {
      json[r'totalElements'] = totalElements;
    }
    if (totalPages != null) {
      json[r'totalPages'] = totalPages;
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

  /// Returns a new [PageInboxForwarderEvents] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageInboxForwarderEvents fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageInboxForwarderEvents(
        content: InboxForwarderEventProjection.listFromJson(json[r'content']),
        pageable: PageableObject.fromJson(json[r'pageable']),
        total: json[r'total'],
        last: json[r'last'],
        totalElements: json[r'totalElements'],
        totalPages: json[r'totalPages'],
        size: json[r'size'],
        number: json[r'number'],
        sort: Sort.fromJson(json[r'sort']),
        first: json[r'first'],
        numberOfElements: json[r'numberOfElements'],
        empty: json[r'empty'],
    );

  static List<PageInboxForwarderEvents> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageInboxForwarderEvents>[]
      : json.map((v) => PageInboxForwarderEvents.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageInboxForwarderEvents> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageInboxForwarderEvents>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageInboxForwarderEvents.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageInboxForwarderEvents-objects as value to a dart map
  static Map<String, List<PageInboxForwarderEvents>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageInboxForwarderEvents>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageInboxForwarderEvents.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

