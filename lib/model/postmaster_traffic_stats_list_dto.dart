//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostmasterTrafficStatsListDto {
  /// Returns a new [PostmasterTrafficStatsListDto] instance.
  PostmasterTrafficStatsListDto({
    required this.domain,
    this.startDate,
    this.endDate,
    this.stats = const [],
  });

  String domain;

  DateTime? startDate;

  DateTime? endDate;

  List<PostmasterTrafficStatsDto> stats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostmasterTrafficStatsListDto &&
     other.domain == domain &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.stats == stats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (stats.hashCode);

  @override
  String toString() => 'PostmasterTrafficStatsListDto[domain=$domain, startDate=$startDate, endDate=$endDate, stats=$stats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.startDate != null) {
      json[r'startDate'] = _dateFormatter.format(this.startDate!.toUtc());
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
      json[r'stats'] = this.stats;
    return json;
  }

  /// Returns a new [PostmasterTrafficStatsListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostmasterTrafficStatsListDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostmasterTrafficStatsListDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostmasterTrafficStatsListDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostmasterTrafficStatsListDto(
        domain: mapValueOfType<String>(json, r'domain')!,
        startDate: mapDateTime(json, r'startDate', ''),
        endDate: mapDateTime(json, r'endDate', ''),
        stats: PostmasterTrafficStatsDto.listFromJson(json[r'stats']),
      );
    }
    return null;
  }

  static List<PostmasterTrafficStatsListDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostmasterTrafficStatsListDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostmasterTrafficStatsListDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostmasterTrafficStatsListDto> mapFromJson(dynamic json) {
    final map = <String, PostmasterTrafficStatsListDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostmasterTrafficStatsListDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostmasterTrafficStatsListDto-objects as value to a dart map
  static Map<String, List<PostmasterTrafficStatsListDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostmasterTrafficStatsListDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostmasterTrafficStatsListDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'stats',
  };
}

