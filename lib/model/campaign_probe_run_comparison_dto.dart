//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeRunComparisonDto {
  /// Returns a new [CampaignProbeRunComparisonDto] instance.
  CampaignProbeRunComparisonDto({
    required this.baseline,
    required this.current,
    required this.healthScoreDelta,
    required this.statusChanged,
    required this.linkIssueDelta,
    required this.imageIssueDelta,
    required this.compatibilityWarningDelta,
    required this.compatibilityNotSupportedDelta,
    required this.htmlErrorDelta,
    required this.htmlWarningDelta,
    required this.reputationFailureDelta,
    required this.attachmentMentionIssueDelta,
    this.addedInsights = const [],
    this.removedInsights = const [],
  });

  CampaignProbeRunDto baseline;

  CampaignProbeRunDto current;

  int healthScoreDelta;

  bool statusChanged;

  int linkIssueDelta;

  int imageIssueDelta;

  int compatibilityWarningDelta;

  int compatibilityNotSupportedDelta;

  int htmlErrorDelta;

  int htmlWarningDelta;

  int reputationFailureDelta;

  int attachmentMentionIssueDelta;

  List<String> addedInsights;

  List<String> removedInsights;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeRunComparisonDto &&
     other.baseline == baseline &&
     other.current == current &&
     other.healthScoreDelta == healthScoreDelta &&
     other.statusChanged == statusChanged &&
     other.linkIssueDelta == linkIssueDelta &&
     other.imageIssueDelta == imageIssueDelta &&
     other.compatibilityWarningDelta == compatibilityWarningDelta &&
     other.compatibilityNotSupportedDelta == compatibilityNotSupportedDelta &&
     other.htmlErrorDelta == htmlErrorDelta &&
     other.htmlWarningDelta == htmlWarningDelta &&
     other.reputationFailureDelta == reputationFailureDelta &&
     other.attachmentMentionIssueDelta == attachmentMentionIssueDelta &&
     other.addedInsights == addedInsights &&
     other.removedInsights == removedInsights;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (baseline.hashCode) +
    (current.hashCode) +
    (healthScoreDelta.hashCode) +
    (statusChanged.hashCode) +
    (linkIssueDelta.hashCode) +
    (imageIssueDelta.hashCode) +
    (compatibilityWarningDelta.hashCode) +
    (compatibilityNotSupportedDelta.hashCode) +
    (htmlErrorDelta.hashCode) +
    (htmlWarningDelta.hashCode) +
    (reputationFailureDelta.hashCode) +
    (attachmentMentionIssueDelta.hashCode) +
    (addedInsights.hashCode) +
    (removedInsights.hashCode);

  @override
  String toString() => 'CampaignProbeRunComparisonDto[baseline=$baseline, current=$current, healthScoreDelta=$healthScoreDelta, statusChanged=$statusChanged, linkIssueDelta=$linkIssueDelta, imageIssueDelta=$imageIssueDelta, compatibilityWarningDelta=$compatibilityWarningDelta, compatibilityNotSupportedDelta=$compatibilityNotSupportedDelta, htmlErrorDelta=$htmlErrorDelta, htmlWarningDelta=$htmlWarningDelta, reputationFailureDelta=$reputationFailureDelta, attachmentMentionIssueDelta=$attachmentMentionIssueDelta, addedInsights=$addedInsights, removedInsights=$removedInsights]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'baseline'] = this.baseline;
      json[r'current'] = this.current;
      json[r'healthScoreDelta'] = this.healthScoreDelta;
      json[r'statusChanged'] = this.statusChanged;
      json[r'linkIssueDelta'] = this.linkIssueDelta;
      json[r'imageIssueDelta'] = this.imageIssueDelta;
      json[r'compatibilityWarningDelta'] = this.compatibilityWarningDelta;
      json[r'compatibilityNotSupportedDelta'] = this.compatibilityNotSupportedDelta;
      json[r'htmlErrorDelta'] = this.htmlErrorDelta;
      json[r'htmlWarningDelta'] = this.htmlWarningDelta;
      json[r'reputationFailureDelta'] = this.reputationFailureDelta;
      json[r'attachmentMentionIssueDelta'] = this.attachmentMentionIssueDelta;
      json[r'addedInsights'] = this.addedInsights;
      json[r'removedInsights'] = this.removedInsights;
    return json;
  }

  /// Returns a new [CampaignProbeRunComparisonDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeRunComparisonDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeRunComparisonDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeRunComparisonDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeRunComparisonDto(
        baseline: CampaignProbeRunDto.fromJson(json[r'baseline'])!,
        current: CampaignProbeRunDto.fromJson(json[r'current'])!,
        healthScoreDelta: mapValueOfType<int>(json, r'healthScoreDelta')!,
        statusChanged: mapValueOfType<bool>(json, r'statusChanged')!,
        linkIssueDelta: mapValueOfType<int>(json, r'linkIssueDelta')!,
        imageIssueDelta: mapValueOfType<int>(json, r'imageIssueDelta')!,
        compatibilityWarningDelta: mapValueOfType<int>(json, r'compatibilityWarningDelta')!,
        compatibilityNotSupportedDelta: mapValueOfType<int>(json, r'compatibilityNotSupportedDelta')!,
        htmlErrorDelta: mapValueOfType<int>(json, r'htmlErrorDelta')!,
        htmlWarningDelta: mapValueOfType<int>(json, r'htmlWarningDelta')!,
        reputationFailureDelta: mapValueOfType<int>(json, r'reputationFailureDelta')!,
        attachmentMentionIssueDelta: mapValueOfType<int>(json, r'attachmentMentionIssueDelta')!,
        addedInsights: json[r'addedInsights'] is List
            ? (json[r'addedInsights'] as List).cast<String>()
            : const [],
        removedInsights: json[r'removedInsights'] is List
            ? (json[r'removedInsights'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CampaignProbeRunComparisonDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunComparisonDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunComparisonDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeRunComparisonDto> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeRunComparisonDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeRunComparisonDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeRunComparisonDto-objects as value to a dart map
  static Map<String, List<CampaignProbeRunComparisonDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeRunComparisonDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeRunComparisonDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'baseline',
    'current',
    'healthScoreDelta',
    'statusChanged',
    'linkIssueDelta',
    'imageIssueDelta',
    'compatibilityWarningDelta',
    'compatibilityNotSupportedDelta',
    'htmlErrorDelta',
    'htmlWarningDelta',
    'reputationFailureDelta',
    'attachmentMentionIssueDelta',
    'addedInsights',
    'removedInsights',
  };
}

