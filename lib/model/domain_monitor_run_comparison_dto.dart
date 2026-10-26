//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorRunComparisonDto {
  /// Returns a new [DomainMonitorRunComparisonDto] instance.
  DomainMonitorRunComparisonDto({
    required this.baseline,
    required this.current,
    required this.healthScoreDelta,
    required this.statusChanged,
    required this.passingChecksDelta,
    required this.failingChecksDelta,
    required this.spfChanged,
    required this.dmarcChanged,
    required this.dmarcEnforcedChanged,
    required this.mxChanged,
    required this.dkimChanged,
    required this.bimiChanged,
    required this.mtaStsChanged,
    required this.tlsReportingChanged,
    required this.blacklistChanged,
    this.addedInsights = const [],
    this.removedInsights = const [],
  });

  DomainMonitorRunDto baseline;

  DomainMonitorRunDto current;

  int healthScoreDelta;

  bool statusChanged;

  int passingChecksDelta;

  int failingChecksDelta;

  bool spfChanged;

  bool dmarcChanged;

  bool dmarcEnforcedChanged;

  bool mxChanged;

  bool dkimChanged;

  bool bimiChanged;

  bool mtaStsChanged;

  bool tlsReportingChanged;

  bool blacklistChanged;

  List<String> addedInsights;

  List<String> removedInsights;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorRunComparisonDto &&
     other.baseline == baseline &&
     other.current == current &&
     other.healthScoreDelta == healthScoreDelta &&
     other.statusChanged == statusChanged &&
     other.passingChecksDelta == passingChecksDelta &&
     other.failingChecksDelta == failingChecksDelta &&
     other.spfChanged == spfChanged &&
     other.dmarcChanged == dmarcChanged &&
     other.dmarcEnforcedChanged == dmarcEnforcedChanged &&
     other.mxChanged == mxChanged &&
     other.dkimChanged == dkimChanged &&
     other.bimiChanged == bimiChanged &&
     other.mtaStsChanged == mtaStsChanged &&
     other.tlsReportingChanged == tlsReportingChanged &&
     other.blacklistChanged == blacklistChanged &&
     other.addedInsights == addedInsights &&
     other.removedInsights == removedInsights;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (baseline.hashCode) +
    (current.hashCode) +
    (healthScoreDelta.hashCode) +
    (statusChanged.hashCode) +
    (passingChecksDelta.hashCode) +
    (failingChecksDelta.hashCode) +
    (spfChanged.hashCode) +
    (dmarcChanged.hashCode) +
    (dmarcEnforcedChanged.hashCode) +
    (mxChanged.hashCode) +
    (dkimChanged.hashCode) +
    (bimiChanged.hashCode) +
    (mtaStsChanged.hashCode) +
    (tlsReportingChanged.hashCode) +
    (blacklistChanged.hashCode) +
    (addedInsights.hashCode) +
    (removedInsights.hashCode);

  @override
  String toString() => 'DomainMonitorRunComparisonDto[baseline=$baseline, current=$current, healthScoreDelta=$healthScoreDelta, statusChanged=$statusChanged, passingChecksDelta=$passingChecksDelta, failingChecksDelta=$failingChecksDelta, spfChanged=$spfChanged, dmarcChanged=$dmarcChanged, dmarcEnforcedChanged=$dmarcEnforcedChanged, mxChanged=$mxChanged, dkimChanged=$dkimChanged, bimiChanged=$bimiChanged, mtaStsChanged=$mtaStsChanged, tlsReportingChanged=$tlsReportingChanged, blacklistChanged=$blacklistChanged, addedInsights=$addedInsights, removedInsights=$removedInsights]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'baseline'] = this.baseline;
      json[r'current'] = this.current;
      json[r'healthScoreDelta'] = this.healthScoreDelta;
      json[r'statusChanged'] = this.statusChanged;
      json[r'passingChecksDelta'] = this.passingChecksDelta;
      json[r'failingChecksDelta'] = this.failingChecksDelta;
      json[r'spfChanged'] = this.spfChanged;
      json[r'dmarcChanged'] = this.dmarcChanged;
      json[r'dmarcEnforcedChanged'] = this.dmarcEnforcedChanged;
      json[r'mxChanged'] = this.mxChanged;
      json[r'dkimChanged'] = this.dkimChanged;
      json[r'bimiChanged'] = this.bimiChanged;
      json[r'mtaStsChanged'] = this.mtaStsChanged;
      json[r'tlsReportingChanged'] = this.tlsReportingChanged;
      json[r'blacklistChanged'] = this.blacklistChanged;
      json[r'addedInsights'] = this.addedInsights;
      json[r'removedInsights'] = this.removedInsights;
    return json;
  }

  /// Returns a new [DomainMonitorRunComparisonDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorRunComparisonDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorRunComparisonDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorRunComparisonDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorRunComparisonDto(
        baseline: DomainMonitorRunDto.fromJson(json[r'baseline'])!,
        current: DomainMonitorRunDto.fromJson(json[r'current'])!,
        healthScoreDelta: mapValueOfType<int>(json, r'healthScoreDelta')!,
        statusChanged: mapValueOfType<bool>(json, r'statusChanged')!,
        passingChecksDelta: mapValueOfType<int>(json, r'passingChecksDelta')!,
        failingChecksDelta: mapValueOfType<int>(json, r'failingChecksDelta')!,
        spfChanged: mapValueOfType<bool>(json, r'spfChanged')!,
        dmarcChanged: mapValueOfType<bool>(json, r'dmarcChanged')!,
        dmarcEnforcedChanged: mapValueOfType<bool>(json, r'dmarcEnforcedChanged')!,
        mxChanged: mapValueOfType<bool>(json, r'mxChanged')!,
        dkimChanged: mapValueOfType<bool>(json, r'dkimChanged')!,
        bimiChanged: mapValueOfType<bool>(json, r'bimiChanged')!,
        mtaStsChanged: mapValueOfType<bool>(json, r'mtaStsChanged')!,
        tlsReportingChanged: mapValueOfType<bool>(json, r'tlsReportingChanged')!,
        blacklistChanged: mapValueOfType<bool>(json, r'blacklistChanged')!,
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

  static List<DomainMonitorRunComparisonDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunComparisonDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunComparisonDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorRunComparisonDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorRunComparisonDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorRunComparisonDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorRunComparisonDto-objects as value to a dart map
  static Map<String, List<DomainMonitorRunComparisonDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorRunComparisonDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorRunComparisonDto.listFromJson(entry.value, growable: growable,);
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
    'passingChecksDelta',
    'failingChecksDelta',
    'spfChanged',
    'dmarcChanged',
    'dmarcEnforcedChanged',
    'mxChanged',
    'dkimChanged',
    'bimiChanged',
    'mtaStsChanged',
    'tlsReportingChanged',
    'blacklistChanged',
    'addedInsights',
    'removedInsights',
  };
}

