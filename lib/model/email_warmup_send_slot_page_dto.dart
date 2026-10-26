//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupSendSlotPageDto {
  /// Returns a new [EmailWarmupSendSlotPageDto] instance.
  EmailWarmupSendSlotPageDto({
    this.content = const [],
    required this.page,
    required this.size,
    required this.totalElements,
    required this.totalPages,
  });

  List<EmailWarmupSendSlotDto> content;

  int page;

  int size;

  int totalElements;

  int totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupSendSlotPageDto &&
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
  String toString() => 'EmailWarmupSendSlotPageDto[content=$content, page=$page, size=$size, totalElements=$totalElements, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
      json[r'page'] = this.page;
      json[r'size'] = this.size;
      json[r'totalElements'] = this.totalElements;
      json[r'totalPages'] = this.totalPages;
    return json;
  }

  /// Returns a new [EmailWarmupSendSlotPageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupSendSlotPageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupSendSlotPageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupSendSlotPageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupSendSlotPageDto(
        content: EmailWarmupSendSlotDto.listFromJson(json[r'content']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
      );
    }
    return null;
  }

  static List<EmailWarmupSendSlotPageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupSendSlotPageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupSendSlotPageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupSendSlotPageDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupSendSlotPageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupSendSlotPageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupSendSlotPageDto-objects as value to a dart map
  static Map<String, List<EmailWarmupSendSlotPageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupSendSlotPageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupSendSlotPageDto.listFromJson(entry.value, growable: growable,);
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

