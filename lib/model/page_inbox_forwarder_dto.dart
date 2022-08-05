//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PageInboxForwarderDto {
  /// Returns a new [PageInboxForwarderDto] instance.
  PageInboxForwarderDto({
    this.content = const [],
    this.pageable,
    this.total,
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

  List<InboxForwarderDto> content;

  PageableObject pageable;

  int total;

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
  bool operator ==(Object other) => identical(this, other) || other is PageInboxForwarderDto &&
     other.content == content &&
     other.pageable == pageable &&
     other.total == total &&
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
    (total == null ? 0 : total.hashCode) +
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
  String toString() => 'PageInboxForwarderDto[content=$content, pageable=$pageable, total=$total, last=$last, totalPages=$totalPages, totalElements=$totalElements, size=$size, number=$number, sort=$sort, first=$first, numberOfElements=$numberOfElements, empty=$empty]';

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

  /// Returns a new [PageInboxForwarderDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PageInboxForwarderDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PageInboxForwarderDto(
        content: InboxForwarderDto.listFromJson(json[r'content']),
        pageable: PageableObject.fromJson(json[r'pageable']),
        total: json[r'total'],
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

  static List<PageInboxForwarderDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PageInboxForwarderDto>[]
      : json.map((v) => PageInboxForwarderDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, PageInboxForwarderDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PageInboxForwarderDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PageInboxForwarderDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PageInboxForwarderDto-objects as value to a dart map
  static Map<String, List<PageInboxForwarderDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PageInboxForwarderDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PageInboxForwarderDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

