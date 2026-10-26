//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityEntityResultPageDto {
  /// Returns a new [DeliverabilityEntityResultPageDto] instance.
  DeliverabilityEntityResultPageDto({
    required this.test,
    this.content = const [],
    required this.page,
    required this.size,
    required this.totalElements,
    required this.totalPages,
    this.matched,
    required this.cached,
    this.nextRefreshAt,
  });

  DeliverabilityTestDto test;

  List<DeliverabilityEntityResultDto> content;

  int page;

  int size;

  int totalElements;

  int totalPages;

  bool? matched;

  bool cached;

  DateTime? nextRefreshAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityEntityResultPageDto &&
     other.test == test &&
     other.content == content &&
     other.page == page &&
     other.size == size &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages &&
     other.matched == matched &&
     other.cached == cached &&
     other.nextRefreshAt == nextRefreshAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (test.hashCode) +
    (content.hashCode) +
    (page.hashCode) +
    (size.hashCode) +
    (totalElements.hashCode) +
    (totalPages.hashCode) +
    (matched == null ? 0 : matched!.hashCode) +
    (cached.hashCode) +
    (nextRefreshAt == null ? 0 : nextRefreshAt!.hashCode);

  @override
  String toString() => 'DeliverabilityEntityResultPageDto[test=$test, content=$content, page=$page, size=$size, totalElements=$totalElements, totalPages=$totalPages, matched=$matched, cached=$cached, nextRefreshAt=$nextRefreshAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'test'] = this.test;
      json[r'content'] = this.content;
      json[r'page'] = this.page;
      json[r'size'] = this.size;
      json[r'totalElements'] = this.totalElements;
      json[r'totalPages'] = this.totalPages;
    if (this.matched != null) {
      json[r'matched'] = this.matched;
    } else {
      json[r'matched'] = null;
    }
      json[r'cached'] = this.cached;
    if (this.nextRefreshAt != null) {
      json[r'nextRefreshAt'] = this.nextRefreshAt!.toUtc().toIso8601String();
    } else {
      json[r'nextRefreshAt'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilityEntityResultPageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityEntityResultPageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityEntityResultPageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityEntityResultPageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityEntityResultPageDto(
        test: DeliverabilityTestDto.fromJson(json[r'test'])!,
        content: DeliverabilityEntityResultDto.listFromJson(json[r'content']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
        matched: mapValueOfType<bool>(json, r'matched'),
        cached: mapValueOfType<bool>(json, r'cached')!,
        nextRefreshAt: mapDateTime(json, r'nextRefreshAt', ''),
      );
    }
    return null;
  }

  static List<DeliverabilityEntityResultPageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityEntityResultPageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityEntityResultPageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityEntityResultPageDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityEntityResultPageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityEntityResultPageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityEntityResultPageDto-objects as value to a dart map
  static Map<String, List<DeliverabilityEntityResultPageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityEntityResultPageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityEntityResultPageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'test',
    'content',
    'page',
    'size',
    'totalElements',
    'totalPages',
    'cached',
  };
}

