//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupProgramProgressDto {
  /// Returns a new [EmailWarmupProgramProgressDto] instance.
  EmailWarmupProgramProgressDto({
    required this.programId,
    required this.currentRampDay,
    required this.rampDurationDays,
    required this.progressPercent,
    required this.totalAcceptedSends,
  });

  String programId;

  int currentRampDay;

  int rampDurationDays;

  int progressPercent;

  int totalAcceptedSends;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupProgramProgressDto &&
     other.programId == programId &&
     other.currentRampDay == currentRampDay &&
     other.rampDurationDays == rampDurationDays &&
     other.progressPercent == progressPercent &&
     other.totalAcceptedSends == totalAcceptedSends;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programId.hashCode) +
    (currentRampDay.hashCode) +
    (rampDurationDays.hashCode) +
    (progressPercent.hashCode) +
    (totalAcceptedSends.hashCode);

  @override
  String toString() => 'EmailWarmupProgramProgressDto[programId=$programId, currentRampDay=$currentRampDay, rampDurationDays=$rampDurationDays, progressPercent=$progressPercent, totalAcceptedSends=$totalAcceptedSends]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programId'] = this.programId;
      json[r'currentRampDay'] = this.currentRampDay;
      json[r'rampDurationDays'] = this.rampDurationDays;
      json[r'progressPercent'] = this.progressPercent;
      json[r'totalAcceptedSends'] = this.totalAcceptedSends;
    return json;
  }

  /// Returns a new [EmailWarmupProgramProgressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupProgramProgressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupProgramProgressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupProgramProgressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupProgramProgressDto(
        programId: mapValueOfType<String>(json, r'programId')!,
        currentRampDay: mapValueOfType<int>(json, r'currentRampDay')!,
        rampDurationDays: mapValueOfType<int>(json, r'rampDurationDays')!,
        progressPercent: mapValueOfType<int>(json, r'progressPercent')!,
        totalAcceptedSends: mapValueOfType<int>(json, r'totalAcceptedSends')!,
      );
    }
    return null;
  }

  static List<EmailWarmupProgramProgressDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramProgressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramProgressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupProgramProgressDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupProgramProgressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupProgramProgressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupProgramProgressDto-objects as value to a dart map
  static Map<String, List<EmailWarmupProgramProgressDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupProgramProgressDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupProgramProgressDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programId',
    'currentRampDay',
    'rampDurationDays',
    'progressPercent',
    'totalAcceptedSends',
  };
}

