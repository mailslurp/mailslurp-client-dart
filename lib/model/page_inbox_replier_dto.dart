//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageInboxReplierDto {
  /// Returns a new [PageInboxReplierDto] instance.
  PageInboxReplierDto({
    this.content = const [],
    this.pageable,
    this.total,
    this.totalElements,
    this.totalPages,
    this.last,
    this.size,
    this.number,
    this.sort,
    this.numberOfElements,
    this.first,
    this.empty,
  });

  List<InboxReplierDto> content;

  PageableObject pageable;

  int total;

  int totalElements;

  int totalPages;

  bool last;

  int size;

  int number;

  Sort sort;

  int numberOfElements;

  bool first;

  bool empty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PageInboxReplierDto &&
     other.content == content &&
     other.pageable == pageable &&
     other.total == total &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages &&
     other.last == last &&
     other.size == size &&
     other.number == number &&
     other.sort == sort &&
     other.numberOfElements == numberOfElements &&
     other.first == first &&
     other.empty == empty;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode) +
    (pageable == null ? 0 : pageable.hashCode) +
    (total == null ? 0 : total.hashCode) +
    (totalElements == null ? 0 : totalElements.hashCode) +
    (totalPages == null ? 0 : totalPages.hashCode) +
    (last == null ? 0 : last.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (sort == null ? 0 : sort.hashCode) +
    (numberOfElements == null ? 0 : numberOfElements.hashCode) +
    (first == null ? 0 : first.hashCode) +
    (empty == null ? 0 : empty.hashCode);

  @override
  String toString() => 'PageInboxReplierDto[content=$content, pageable=$pageable, total=$total, totalElements=$totalElements, totalPages=$totalPages, last=$last, size=$size, number=$number, sort=$sort, numberOfElements=$numberOfElements, first=$first, empty=$empty]';

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
    if (totalElements != null) {
      json[r'totalElements'] = totalElements;
    }
    if (totalPages != null) {
      json[r'totalPages'] = totalPages;
    }
    if (last != null) {
      json[r'last'] = last;
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
    if (numberOfElements != null) {
      json[r'numberOfElements'] = numberOfElements;
    }
    if (first != null) {
      json[r'first'] = first;
    }
    if (empty != null) {
      json[r'empty'] = empty;
    }
    return json;
  }

  /// Returns a new [PageInboxReplierDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageInboxReplierDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageInboxReplierDto(
        content: InboxReplierDto.listFromJson(json[r'content']),
        pageable: PageableObject.fromJson(json[r'pageable']),
        total: json[r'total'],
        totalElements: json[r'totalElements'],
        totalPages: json[r'totalPages'],
        last: json[r'last'],
        size: json[r'size'],
        number: json[r'number'],
        sort: Sort.fromJson(json[r'sort']),
        numberOfElements: json[r'numberOfElements'],
        first: json[r'first'],
        empty: json[r'empty'],
    );

  static List<PageInboxReplierDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageInboxReplierDto>[]
      : json.map((v) => PageInboxReplierDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageInboxReplierDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageInboxReplierDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageInboxReplierDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageInboxReplierDto-objects as value to a dart map
  static Map<String, List<PageInboxReplierDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageInboxReplierDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageInboxReplierDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

