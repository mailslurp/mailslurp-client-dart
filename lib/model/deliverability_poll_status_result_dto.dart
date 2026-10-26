//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityPollStatusResultDto {
  /// Returns a new [DeliverabilityPollStatusResultDto] instance.
  DeliverabilityPollStatusResultDto({
    required this.test,
    required this.cached,
    required this.cacheWindowSeconds,
    this.nextRefreshAt,
  });

  DeliverabilityTestDto test;

  bool cached;

  int cacheWindowSeconds;

  DateTime? nextRefreshAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityPollStatusResultDto &&
     other.test == test &&
     other.cached == cached &&
     other.cacheWindowSeconds == cacheWindowSeconds &&
     other.nextRefreshAt == nextRefreshAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (test.hashCode) +
    (cached.hashCode) +
    (cacheWindowSeconds.hashCode) +
    (nextRefreshAt == null ? 0 : nextRefreshAt!.hashCode);

  @override
  String toString() => 'DeliverabilityPollStatusResultDto[test=$test, cached=$cached, cacheWindowSeconds=$cacheWindowSeconds, nextRefreshAt=$nextRefreshAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'test'] = this.test;
      json[r'cached'] = this.cached;
      json[r'cacheWindowSeconds'] = this.cacheWindowSeconds;
    if (this.nextRefreshAt != null) {
      json[r'nextRefreshAt'] = this.nextRefreshAt!.toUtc().toIso8601String();
    } else {
      json[r'nextRefreshAt'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilityPollStatusResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityPollStatusResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityPollStatusResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityPollStatusResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityPollStatusResultDto(
        test: DeliverabilityTestDto.fromJson(json[r'test'])!,
        cached: mapValueOfType<bool>(json, r'cached')!,
        cacheWindowSeconds: mapValueOfType<int>(json, r'cacheWindowSeconds')!,
        nextRefreshAt: mapDateTime(json, r'nextRefreshAt', ''),
      );
    }
    return null;
  }

  static List<DeliverabilityPollStatusResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityPollStatusResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityPollStatusResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityPollStatusResultDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityPollStatusResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityPollStatusResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityPollStatusResultDto-objects as value to a dart map
  static Map<String, List<DeliverabilityPollStatusResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityPollStatusResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityPollStatusResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'test',
    'cached',
    'cacheWindowSeconds',
  };
}

