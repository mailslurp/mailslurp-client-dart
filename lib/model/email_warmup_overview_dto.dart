//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupOverviewDto {
  /// Returns a new [EmailWarmupOverviewDto] instance.
  EmailWarmupOverviewDto({
    required this.fromDate,
    required this.throughDate,
    required this.totalPrograms,
    required this.activePrograms,
    required this.rampingPrograms,
    required this.maintenancePrograms,
    required this.pausedPrograms,
    required this.attentionRequiredPrograms,
    required this.acceptedSends,
    required this.failedSends,
    this.dailyActivity = const [],
    this.programProgress = const [],
  });

  DateTime fromDate;

  DateTime throughDate;

  int totalPrograms;

  int activePrograms;

  int rampingPrograms;

  int maintenancePrograms;

  int pausedPrograms;

  int attentionRequiredPrograms;

  int acceptedSends;

  int failedSends;

  List<EmailWarmupDailyActivityDto> dailyActivity;

  List<EmailWarmupProgramProgressDto> programProgress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupOverviewDto &&
     other.fromDate == fromDate &&
     other.throughDate == throughDate &&
     other.totalPrograms == totalPrograms &&
     other.activePrograms == activePrograms &&
     other.rampingPrograms == rampingPrograms &&
     other.maintenancePrograms == maintenancePrograms &&
     other.pausedPrograms == pausedPrograms &&
     other.attentionRequiredPrograms == attentionRequiredPrograms &&
     other.acceptedSends == acceptedSends &&
     other.failedSends == failedSends &&
     other.dailyActivity == dailyActivity &&
     other.programProgress == programProgress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromDate.hashCode) +
    (throughDate.hashCode) +
    (totalPrograms.hashCode) +
    (activePrograms.hashCode) +
    (rampingPrograms.hashCode) +
    (maintenancePrograms.hashCode) +
    (pausedPrograms.hashCode) +
    (attentionRequiredPrograms.hashCode) +
    (acceptedSends.hashCode) +
    (failedSends.hashCode) +
    (dailyActivity.hashCode) +
    (programProgress.hashCode);

  @override
  String toString() => 'EmailWarmupOverviewDto[fromDate=$fromDate, throughDate=$throughDate, totalPrograms=$totalPrograms, activePrograms=$activePrograms, rampingPrograms=$rampingPrograms, maintenancePrograms=$maintenancePrograms, pausedPrograms=$pausedPrograms, attentionRequiredPrograms=$attentionRequiredPrograms, acceptedSends=$acceptedSends, failedSends=$failedSends, dailyActivity=$dailyActivity, programProgress=$programProgress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fromDate'] = _dateFormatter.format(this.fromDate.toUtc());
      json[r'throughDate'] = _dateFormatter.format(this.throughDate.toUtc());
      json[r'totalPrograms'] = this.totalPrograms;
      json[r'activePrograms'] = this.activePrograms;
      json[r'rampingPrograms'] = this.rampingPrograms;
      json[r'maintenancePrograms'] = this.maintenancePrograms;
      json[r'pausedPrograms'] = this.pausedPrograms;
      json[r'attentionRequiredPrograms'] = this.attentionRequiredPrograms;
      json[r'acceptedSends'] = this.acceptedSends;
      json[r'failedSends'] = this.failedSends;
      json[r'dailyActivity'] = this.dailyActivity;
      json[r'programProgress'] = this.programProgress;
    return json;
  }

  /// Returns a new [EmailWarmupOverviewDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupOverviewDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupOverviewDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupOverviewDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupOverviewDto(
        fromDate: mapDateTime(json, r'fromDate', '')!,
        throughDate: mapDateTime(json, r'throughDate', '')!,
        totalPrograms: mapValueOfType<int>(json, r'totalPrograms')!,
        activePrograms: mapValueOfType<int>(json, r'activePrograms')!,
        rampingPrograms: mapValueOfType<int>(json, r'rampingPrograms')!,
        maintenancePrograms: mapValueOfType<int>(json, r'maintenancePrograms')!,
        pausedPrograms: mapValueOfType<int>(json, r'pausedPrograms')!,
        attentionRequiredPrograms: mapValueOfType<int>(json, r'attentionRequiredPrograms')!,
        acceptedSends: mapValueOfType<int>(json, r'acceptedSends')!,
        failedSends: mapValueOfType<int>(json, r'failedSends')!,
        dailyActivity: EmailWarmupDailyActivityDto.listFromJson(json[r'dailyActivity']),
        programProgress: EmailWarmupProgramProgressDto.listFromJson(json[r'programProgress']),
      );
    }
    return null;
  }

  static List<EmailWarmupOverviewDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupOverviewDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupOverviewDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupOverviewDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupOverviewDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupOverviewDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupOverviewDto-objects as value to a dart map
  static Map<String, List<EmailWarmupOverviewDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupOverviewDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupOverviewDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fromDate',
    'throughDate',
    'totalPrograms',
    'activePrograms',
    'rampingPrograms',
    'maintenancePrograms',
    'pausedPrograms',
    'attentionRequiredPrograms',
    'acceptedSends',
    'failedSends',
    'dailyActivity',
    'programProgress',
  };
}

