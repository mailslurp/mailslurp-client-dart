//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityTestPageDto {
  /// Returns a new [DeliverabilityTestPageDto] instance.
  DeliverabilityTestPageDto({
    this.content = const [],
    required this.page,
    required this.size,
    required this.totalElements,
    required this.totalPages,
  });

  List<DeliverabilityTestDto> content;

  int page;

  int size;

  int totalElements;

  int totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityTestPageDto &&
     other.content == content &&
     other.page == page &&
     other.size == size &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (page.hashCode) +
    (size.hashCode) +
    (totalElements.hashCode) +
    (totalPages.hashCode);

  @override
  String toString() => 'DeliverabilityTestPageDto[content=$content, page=$page, size=$size, totalElements=$totalElements, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
      json[r'page'] = this.page;
      json[r'size'] = this.size;
      json[r'totalElements'] = this.totalElements;
      json[r'totalPages'] = this.totalPages;
    return json;
  }

  /// Returns a new [DeliverabilityTestPageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityTestPageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityTestPageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityTestPageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityTestPageDto(
        content: DeliverabilityTestDto.listFromJson(json[r'content']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
      );
    }
    return null;
  }

  static List<DeliverabilityTestPageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityTestPageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityTestPageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityTestPageDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityTestPageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityTestPageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityTestPageDto-objects as value to a dart map
  static Map<String, List<DeliverabilityTestPageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityTestPageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityTestPageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'page',
    'size',
    'totalElements',
    'totalPages',
  };
}

