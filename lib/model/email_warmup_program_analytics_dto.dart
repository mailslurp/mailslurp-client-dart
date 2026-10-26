//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupProgramAnalyticsDto {
  /// Returns a new [EmailWarmupProgramAnalyticsDto] instance.
  EmailWarmupProgramAnalyticsDto({
    required this.programId,
    required this.fromDate,
    required this.throughDate,
    required this.progress,
    required this.totalScheduledSends,
    required this.totalAcceptedSends,
    required this.totalObservedSends,
    required this.totalFailedSends,
    required this.attentionRequiredSends,
    this.dailyActivity = const [],
    this.placementChecks = const [],
    this.readiness,
  });

  String programId;

  DateTime fromDate;

  DateTime throughDate;

  EmailWarmupProgramProgressDto progress;

  int totalScheduledSends;

  int totalAcceptedSends;

  int totalObservedSends;

  int totalFailedSends;

  int attentionRequiredSends;

  List<EmailWarmupDailyActivityDto> dailyActivity;

  List<EmailWarmupPlacementCheckDto> placementChecks;

  EmailWarmupReadinessDto? readiness;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupProgramAnalyticsDto &&
     other.programId == programId &&
     other.fromDate == fromDate &&
     other.throughDate == throughDate &&
     other.progress == progress &&
     other.totalScheduledSends == totalScheduledSends &&
     other.totalAcceptedSends == totalAcceptedSends &&
     other.totalObservedSends == totalObservedSends &&
     other.totalFailedSends == totalFailedSends &&
     other.attentionRequiredSends == attentionRequiredSends &&
     other.dailyActivity == dailyActivity &&
     other.placementChecks == placementChecks &&
     other.readiness == readiness;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programId.hashCode) +
    (fromDate.hashCode) +
    (throughDate.hashCode) +
    (progress.hashCode) +
    (totalScheduledSends.hashCode) +
    (totalAcceptedSends.hashCode) +
    (totalObservedSends.hashCode) +
    (totalFailedSends.hashCode) +
    (attentionRequiredSends.hashCode) +
    (dailyActivity.hashCode) +
    (placementChecks.hashCode) +
    (readiness == null ? 0 : readiness!.hashCode);

  @override
  String toString() => 'EmailWarmupProgramAnalyticsDto[programId=$programId, fromDate=$fromDate, throughDate=$throughDate, progress=$progress, totalScheduledSends=$totalScheduledSends, totalAcceptedSends=$totalAcceptedSends, totalObservedSends=$totalObservedSends, totalFailedSends=$totalFailedSends, attentionRequiredSends=$attentionRequiredSends, dailyActivity=$dailyActivity, placementChecks=$placementChecks, readiness=$readiness]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programId'] = this.programId;
      json[r'fromDate'] = _dateFormatter.format(this.fromDate.toUtc());
      json[r'throughDate'] = _dateFormatter.format(this.throughDate.toUtc());
      json[r'progress'] = this.progress;
      json[r'totalScheduledSends'] = this.totalScheduledSends;
      json[r'totalAcceptedSends'] = this.totalAcceptedSends;
      json[r'totalObservedSends'] = this.totalObservedSends;
      json[r'totalFailedSends'] = this.totalFailedSends;
      json[r'attentionRequiredSends'] = this.attentionRequiredSends;
      json[r'dailyActivity'] = this.dailyActivity;
      json[r'placementChecks'] = this.placementChecks;
    if (this.readiness != null) {
      json[r'readiness'] = this.readiness;
    } else {
      json[r'readiness'] = null;
    }
    return json;
  }

  /// Returns a new [EmailWarmupProgramAnalyticsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupProgramAnalyticsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupProgramAnalyticsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupProgramAnalyticsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupProgramAnalyticsDto(
        programId: mapValueOfType<String>(json, r'programId')!,
        fromDate: mapDateTime(json, r'fromDate', '')!,
        throughDate: mapDateTime(json, r'throughDate', '')!,
        progress: EmailWarmupProgramProgressDto.fromJson(json[r'progress'])!,
        totalScheduledSends: mapValueOfType<int>(json, r'totalScheduledSends')!,
        totalAcceptedSends: mapValueOfType<int>(json, r'totalAcceptedSends')!,
        totalObservedSends: mapValueOfType<int>(json, r'totalObservedSends')!,
        totalFailedSends: mapValueOfType<int>(json, r'totalFailedSends')!,
        attentionRequiredSends: mapValueOfType<int>(json, r'attentionRequiredSends')!,
        dailyActivity: EmailWarmupDailyActivityDto.listFromJson(json[r'dailyActivity']),
        placementChecks: EmailWarmupPlacementCheckDto.listFromJson(json[r'placementChecks']),
        readiness: EmailWarmupReadinessDto.fromJson(json[r'readiness']),
      );
    }
    return null;
  }

  static List<EmailWarmupProgramAnalyticsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramAnalyticsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramAnalyticsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupProgramAnalyticsDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupProgramAnalyticsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupProgramAnalyticsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupProgramAnalyticsDto-objects as value to a dart map
  static Map<String, List<EmailWarmupProgramAnalyticsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupProgramAnalyticsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupProgramAnalyticsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programId',
    'fromDate',
    'throughDate',
    'progress',
    'totalScheduledSends',
    'totalAcceptedSends',
    'totalObservedSends',
    'totalFailedSends',
    'attentionRequiredSends',
    'dailyActivity',
    'placementChecks',
  };
}

