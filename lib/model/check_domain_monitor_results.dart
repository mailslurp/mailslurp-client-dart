//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckDomainMonitorResults {
  /// Returns a new [CheckDomainMonitorResults] instance.
  CheckDomainMonitorResults({
    required this.domain,
    required this.status,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.spfOk,
    required this.dmarcOk,
    required this.dmarcEnforced,
    required this.mxOk,
    this.insights = const [],
    this.errorMessage,
  });

  String domain;

  CheckDomainMonitorResultsStatusEnum status;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  bool spfOk;

  bool dmarcOk;

  bool dmarcEnforced;

  bool mxOk;

  List<String> insights;

  String? errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckDomainMonitorResults &&
     other.domain == domain &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.spfOk == spfOk &&
     other.dmarcOk == dmarcOk &&
     other.dmarcEnforced == dmarcEnforced &&
     other.mxOk == mxOk &&
     other.insights == insights &&
     other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (status.hashCode) +
    (healthScore.hashCode) +
    (totalChecks.hashCode) +
    (passingChecks.hashCode) +
    (failingChecks.hashCode) +
    (spfOk.hashCode) +
    (dmarcOk.hashCode) +
    (dmarcEnforced.hashCode) +
    (mxOk.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() => 'CheckDomainMonitorResults[domain=$domain, status=$status, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, spfOk=$spfOk, dmarcOk=$dmarcOk, dmarcEnforced=$dmarcEnforced, mxOk=$mxOk, insights=$insights, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'status'] = this.status;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'spfOk'] = this.spfOk;
      json[r'dmarcOk'] = this.dmarcOk;
      json[r'dmarcEnforced'] = this.dmarcEnforced;
      json[r'mxOk'] = this.mxOk;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [CheckDomainMonitorResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckDomainMonitorResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckDomainMonitorResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckDomainMonitorResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckDomainMonitorResults(
        domain: mapValueOfType<String>(json, r'domain')!,
        status: CheckDomainMonitorResultsStatusEnum.fromJson(json[r'status'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        spfOk: mapValueOfType<bool>(json, r'spfOk')!,
        dmarcOk: mapValueOfType<bool>(json, r'dmarcOk')!,
        dmarcEnforced: mapValueOfType<bool>(json, r'dmarcEnforced')!,
        mxOk: mapValueOfType<bool>(json, r'mxOk')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<CheckDomainMonitorResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDomainMonitorResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDomainMonitorResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckDomainMonitorResults> mapFromJson(dynamic json) {
    final map = <String, CheckDomainMonitorResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckDomainMonitorResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckDomainMonitorResults-objects as value to a dart map
  static Map<String, List<CheckDomainMonitorResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckDomainMonitorResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckDomainMonitorResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'status',
    'healthScore',
    'totalChecks',
    'passingChecks',
    'failingChecks',
    'spfOk',
    'dmarcOk',
    'dmarcEnforced',
    'mxOk',
    'insights',
  };
}


class CheckDomainMonitorResultsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckDomainMonitorResultsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CheckDomainMonitorResultsStatusEnum._(r'HEALTHY');
  static const DEGRADED = CheckDomainMonitorResultsStatusEnum._(r'DEGRADED');
  static const CRITICAL = CheckDomainMonitorResultsStatusEnum._(r'CRITICAL');
  static const FAILED = CheckDomainMonitorResultsStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CheckDomainMonitorResultsStatusEnum].
  static const values = <CheckDomainMonitorResultsStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static CheckDomainMonitorResultsStatusEnum? fromJson(dynamic value) => CheckDomainMonitorResultsStatusEnumTypeTransformer().decode(value);

  static List<CheckDomainMonitorResultsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckDomainMonitorResultsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckDomainMonitorResultsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckDomainMonitorResultsStatusEnum] to String,
/// and [decode] dynamic data back to [CheckDomainMonitorResultsStatusEnum].
class CheckDomainMonitorResultsStatusEnumTypeTransformer {
  factory CheckDomainMonitorResultsStatusEnumTypeTransformer() => _instance ??= const CheckDomainMonitorResultsStatusEnumTypeTransformer._();

  const CheckDomainMonitorResultsStatusEnumTypeTransformer._();

  String encode(CheckDomainMonitorResultsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckDomainMonitorResultsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckDomainMonitorResultsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CheckDomainMonitorResultsStatusEnum.HEALTHY;
        case r'DEGRADED': return CheckDomainMonitorResultsStatusEnum.DEGRADED;
        case r'CRITICAL': return CheckDomainMonitorResultsStatusEnum.CRITICAL;
        case r'FAILED': return CheckDomainMonitorResultsStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckDomainMonitorResultsStatusEnumTypeTransformer] instance.
  static CheckDomainMonitorResultsStatusEnumTypeTransformer? _instance;
}


