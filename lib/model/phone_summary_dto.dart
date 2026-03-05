//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneSummaryDto {
  /// Returns a new [PhoneSummaryDto] instance.
  PhoneSummaryDto({
    this.phoneCountrySummaries = const [],
    required this.hasPhoneNumbers,
    required this.hasMissingPlans,
    required this.totalPhones,
    this.plans = const [],
  });

  List<PhoneSummaryCountryDto> phoneCountrySummaries;

  bool hasPhoneNumbers;

  bool hasMissingPlans;

  int totalPhones;

  List<PlanSummaryDto> plans;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PhoneSummaryDto &&
     other.phoneCountrySummaries == phoneCountrySummaries &&
     other.hasPhoneNumbers == hasPhoneNumbers &&
     other.hasMissingPlans == hasMissingPlans &&
     other.totalPhones == totalPhones &&
     other.plans == plans;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneCountrySummaries.hashCode) +
    (hasPhoneNumbers.hashCode) +
    (hasMissingPlans.hashCode) +
    (totalPhones.hashCode) +
    (plans.hashCode);

  @override
  String toString() => 'PhoneSummaryDto[phoneCountrySummaries=$phoneCountrySummaries, hasPhoneNumbers=$hasPhoneNumbers, hasMissingPlans=$hasMissingPlans, totalPhones=$totalPhones, plans=$plans]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneCountrySummaries'] = this.phoneCountrySummaries;
      json[r'hasPhoneNumbers'] = this.hasPhoneNumbers;
      json[r'hasMissingPlans'] = this.hasMissingPlans;
      json[r'totalPhones'] = this.totalPhones;
      json[r'plans'] = this.plans;
    return json;
  }

  /// Returns a new [PhoneSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PhoneSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PhoneSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneSummaryDto(
        phoneCountrySummaries: PhoneSummaryCountryDto.listFromJson(json[r'phoneCountrySummaries']),
        hasPhoneNumbers: mapValueOfType<bool>(json, r'hasPhoneNumbers')!,
        hasMissingPlans: mapValueOfType<bool>(json, r'hasMissingPlans')!,
        totalPhones: mapValueOfType<int>(json, r'totalPhones')!,
        plans: PlanSummaryDto.listFromJson(json[r'plans']),
      );
    }
    return null;
  }

  static List<PhoneSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhoneSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneSummaryDto> mapFromJson(dynamic json) {
    final map = <String, PhoneSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneSummaryDto-objects as value to a dart map
  static Map<String, List<PhoneSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PhoneSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneCountrySummaries',
    'hasPhoneNumbers',
    'hasMissingPlans',
    'totalPhones',
    'plans',
  };
}

