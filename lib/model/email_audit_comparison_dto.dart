//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuditComparisonDto {
  /// Returns a new [EmailAuditComparisonDto] instance.
  EmailAuditComparisonDto({
    required this.baseline,
    required this.current,
    required this.healthScoreDelta,
    required this.statusChanged,
    required this.brokenLinkDelta,
    required this.brokenImageDelta,
    required this.spellingIssueDelta,
    required this.htmlErrorDelta,
    required this.htmlWarningDelta,
    required this.compatibilityWarningDelta,
    required this.compatibilityNotSupportedDelta,
    required this.reputationFailureDelta,
    required this.attachmentMentionIssueDelta,
    this.addedInsights = const [],
    this.removedInsights = const [],
  });

  EmailAuditDto baseline;

  EmailAuditDto current;

  int healthScoreDelta;

  bool statusChanged;

  int brokenLinkDelta;

  int brokenImageDelta;

  int spellingIssueDelta;

  int htmlErrorDelta;

  int htmlWarningDelta;

  int compatibilityWarningDelta;

  int compatibilityNotSupportedDelta;

  int reputationFailureDelta;

  int attachmentMentionIssueDelta;

  List<String> addedInsights;

  List<String> removedInsights;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAuditComparisonDto &&
     other.baseline == baseline &&
     other.current == current &&
     other.healthScoreDelta == healthScoreDelta &&
     other.statusChanged == statusChanged &&
     other.brokenLinkDelta == brokenLinkDelta &&
     other.brokenImageDelta == brokenImageDelta &&
     other.spellingIssueDelta == spellingIssueDelta &&
     other.htmlErrorDelta == htmlErrorDelta &&
     other.htmlWarningDelta == htmlWarningDelta &&
     other.compatibilityWarningDelta == compatibilityWarningDelta &&
     other.compatibilityNotSupportedDelta == compatibilityNotSupportedDelta &&
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
    (brokenLinkDelta.hashCode) +
    (brokenImageDelta.hashCode) +
    (spellingIssueDelta.hashCode) +
    (htmlErrorDelta.hashCode) +
    (htmlWarningDelta.hashCode) +
    (compatibilityWarningDelta.hashCode) +
    (compatibilityNotSupportedDelta.hashCode) +
    (reputationFailureDelta.hashCode) +
    (attachmentMentionIssueDelta.hashCode) +
    (addedInsights.hashCode) +
    (removedInsights.hashCode);

  @override
  String toString() => 'EmailAuditComparisonDto[baseline=$baseline, current=$current, healthScoreDelta=$healthScoreDelta, statusChanged=$statusChanged, brokenLinkDelta=$brokenLinkDelta, brokenImageDelta=$brokenImageDelta, spellingIssueDelta=$spellingIssueDelta, htmlErrorDelta=$htmlErrorDelta, htmlWarningDelta=$htmlWarningDelta, compatibilityWarningDelta=$compatibilityWarningDelta, compatibilityNotSupportedDelta=$compatibilityNotSupportedDelta, reputationFailureDelta=$reputationFailureDelta, attachmentMentionIssueDelta=$attachmentMentionIssueDelta, addedInsights=$addedInsights, removedInsights=$removedInsights]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'baseline'] = this.baseline;
      json[r'current'] = this.current;
      json[r'healthScoreDelta'] = this.healthScoreDelta;
      json[r'statusChanged'] = this.statusChanged;
      json[r'brokenLinkDelta'] = this.brokenLinkDelta;
      json[r'brokenImageDelta'] = this.brokenImageDelta;
      json[r'spellingIssueDelta'] = this.spellingIssueDelta;
      json[r'htmlErrorDelta'] = this.htmlErrorDelta;
      json[r'htmlWarningDelta'] = this.htmlWarningDelta;
      json[r'compatibilityWarningDelta'] = this.compatibilityWarningDelta;
      json[r'compatibilityNotSupportedDelta'] = this.compatibilityNotSupportedDelta;
      json[r'reputationFailureDelta'] = this.reputationFailureDelta;
      json[r'attachmentMentionIssueDelta'] = this.attachmentMentionIssueDelta;
      json[r'addedInsights'] = this.addedInsights;
      json[r'removedInsights'] = this.removedInsights;
    return json;
  }

  /// Returns a new [EmailAuditComparisonDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuditComparisonDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAuditComparisonDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAuditComparisonDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuditComparisonDto(
        baseline: EmailAuditDto.fromJson(json[r'baseline'])!,
        current: EmailAuditDto.fromJson(json[r'current'])!,
        healthScoreDelta: mapValueOfType<int>(json, r'healthScoreDelta')!,
        statusChanged: mapValueOfType<bool>(json, r'statusChanged')!,
        brokenLinkDelta: mapValueOfType<int>(json, r'brokenLinkDelta')!,
        brokenImageDelta: mapValueOfType<int>(json, r'brokenImageDelta')!,
        spellingIssueDelta: mapValueOfType<int>(json, r'spellingIssueDelta')!,
        htmlErrorDelta: mapValueOfType<int>(json, r'htmlErrorDelta')!,
        htmlWarningDelta: mapValueOfType<int>(json, r'htmlWarningDelta')!,
        compatibilityWarningDelta: mapValueOfType<int>(json, r'compatibilityWarningDelta')!,
        compatibilityNotSupportedDelta: mapValueOfType<int>(json, r'compatibilityNotSupportedDelta')!,
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

  static List<EmailAuditComparisonDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditComparisonDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditComparisonDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuditComparisonDto> mapFromJson(dynamic json) {
    final map = <String, EmailAuditComparisonDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuditComparisonDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuditComparisonDto-objects as value to a dart map
  static Map<String, List<EmailAuditComparisonDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAuditComparisonDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuditComparisonDto.listFromJson(entry.value, growable: growable,);
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
    'brokenLinkDelta',
    'brokenImageDelta',
    'spellingIssueDelta',
    'htmlErrorDelta',
    'htmlWarningDelta',
    'compatibilityWarningDelta',
    'compatibilityNotSupportedDelta',
    'reputationFailureDelta',
    'attachmentMentionIssueDelta',
    'addedInsights',
    'removedInsights',
  };
}

