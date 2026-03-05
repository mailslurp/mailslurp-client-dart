//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationJobEventPageDto {
  /// Returns a new [DeliverabilitySimulationJobEventPageDto] instance.
  DeliverabilitySimulationJobEventPageDto({
    required this.job,
    this.content = const [],
    required this.page,
    required this.size,
    required this.totalElements,
    required this.totalPages,
  });

  DeliverabilitySimulationJobDto job;

  List<DeliverabilitySimulationJobEventDto> content;

  int page;

  int size;

  int totalElements;

  int totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationJobEventPageDto &&
     other.job == job &&
     other.content == content &&
     other.page == page &&
     other.size == size &&
     other.totalElements == totalElements &&
     other.totalPages == totalPages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (job.hashCode) +
    (content.hashCode) +
    (page.hashCode) +
    (size.hashCode) +
    (totalElements.hashCode) +
    (totalPages.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationJobEventPageDto[job=$job, content=$content, page=$page, size=$size, totalElements=$totalElements, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'job'] = this.job;
      json[r'content'] = this.content;
      json[r'page'] = this.page;
      json[r'size'] = this.size;
      json[r'totalElements'] = this.totalElements;
      json[r'totalPages'] = this.totalPages;
    return json;
  }

  /// Returns a new [DeliverabilitySimulationJobEventPageDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationJobEventPageDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationJobEventPageDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationJobEventPageDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationJobEventPageDto(
        job: DeliverabilitySimulationJobDto.fromJson(json[r'job'])!,
        content: DeliverabilitySimulationJobEventDto.listFromJson(json[r'content']),
        page: mapValueOfType<int>(json, r'page')!,
        size: mapValueOfType<int>(json, r'size')!,
        totalElements: mapValueOfType<int>(json, r'totalElements')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationJobEventPageDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationJobEventPageDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationJobEventPageDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationJobEventPageDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationJobEventPageDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationJobEventPageDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationJobEventPageDto-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationJobEventPageDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationJobEventPageDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationJobEventPageDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'job',
    'content',
    'page',
    'size',
    'totalElements',
    'totalPages',
  };
}

