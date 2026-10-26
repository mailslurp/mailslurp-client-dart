//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupPlacementDeltaDto {
  /// Returns a new [EmailWarmupPlacementDeltaDto] instance.
  EmailWarmupPlacementDeltaDto({
    required this.provider,
    required this.baselineInboxPercent,
    required this.latestInboxPercent,
    required this.percentagePointChange,
    required this.baselineSampleSize,
    required this.latestSampleSize,
  });

  String provider;

  int baselineInboxPercent;

  int latestInboxPercent;

  int percentagePointChange;

  int baselineSampleSize;

  int latestSampleSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupPlacementDeltaDto &&
     other.provider == provider &&
     other.baselineInboxPercent == baselineInboxPercent &&
     other.latestInboxPercent == latestInboxPercent &&
     other.percentagePointChange == percentagePointChange &&
     other.baselineSampleSize == baselineSampleSize &&
     other.latestSampleSize == latestSampleSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (baselineInboxPercent.hashCode) +
    (latestInboxPercent.hashCode) +
    (percentagePointChange.hashCode) +
    (baselineSampleSize.hashCode) +
    (latestSampleSize.hashCode);

  @override
  String toString() => 'EmailWarmupPlacementDeltaDto[provider=$provider, baselineInboxPercent=$baselineInboxPercent, latestInboxPercent=$latestInboxPercent, percentagePointChange=$percentagePointChange, baselineSampleSize=$baselineSampleSize, latestSampleSize=$latestSampleSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'baselineInboxPercent'] = this.baselineInboxPercent;
      json[r'latestInboxPercent'] = this.latestInboxPercent;
      json[r'percentagePointChange'] = this.percentagePointChange;
      json[r'baselineSampleSize'] = this.baselineSampleSize;
      json[r'latestSampleSize'] = this.latestSampleSize;
    return json;
  }

  /// Returns a new [EmailWarmupPlacementDeltaDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupPlacementDeltaDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupPlacementDeltaDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupPlacementDeltaDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupPlacementDeltaDto(
        provider: mapValueOfType<String>(json, r'provider')!,
        baselineInboxPercent: mapValueOfType<int>(json, r'baselineInboxPercent')!,
        latestInboxPercent: mapValueOfType<int>(json, r'latestInboxPercent')!,
        percentagePointChange: mapValueOfType<int>(json, r'percentagePointChange')!,
        baselineSampleSize: mapValueOfType<int>(json, r'baselineSampleSize')!,
        latestSampleSize: mapValueOfType<int>(json, r'latestSampleSize')!,
      );
    }
    return null;
  }

  static List<EmailWarmupPlacementDeltaDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupPlacementDeltaDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupPlacementDeltaDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupPlacementDeltaDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupPlacementDeltaDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupPlacementDeltaDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupPlacementDeltaDto-objects as value to a dart map
  static Map<String, List<EmailWarmupPlacementDeltaDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupPlacementDeltaDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupPlacementDeltaDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'baselineInboxPercent',
    'latestInboxPercent',
    'percentagePointChange',
    'baselineSampleSize',
    'latestSampleSize',
  };
}

