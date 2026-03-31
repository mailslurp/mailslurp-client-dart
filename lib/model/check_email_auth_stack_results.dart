//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailAuthStackResults {
  /// Returns a new [CheckEmailAuthStackResults] instance.
  CheckEmailAuthStackResults({
    required this.domain,
    required this.status,
    required this.healthScore,
    required this.totalChecks,
    required this.passingChecks,
    required this.failingChecks,
    required this.spf,
    required this.dmarc,
    required this.dkim,
    required this.bimi,
    required this.mx,
    required this.mtaSts,
    required this.tlsReporting,
    this.insights = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  String domain;

  CheckEmailAuthStackResultsStatusEnum status;

  int healthScore;

  int totalChecks;

  int passingChecks;

  int failingChecks;

  LookupSpfDomainResults spf;

  LookupDmarcDomainResults dmarc;

  LookupDkimDomainResults dkim;

  LookupBimiDomainResults bimi;

  LookupMxRecordsResults mx;

  LookupMtaStsDomainResults mtaSts;

  LookupTlsReportingDomainResults tlsReporting;

  List<String> insights;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailAuthStackResults &&
     other.domain == domain &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.spf == spf &&
     other.dmarc == dmarc &&
     other.dkim == dkim &&
     other.bimi == bimi &&
     other.mx == mx &&
     other.mtaSts == mtaSts &&
     other.tlsReporting == tlsReporting &&
     other.insights == insights &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (status.hashCode) +
    (healthScore.hashCode) +
    (totalChecks.hashCode) +
    (passingChecks.hashCode) +
    (failingChecks.hashCode) +
    (spf.hashCode) +
    (dmarc.hashCode) +
    (dkim.hashCode) +
    (bimi.hashCode) +
    (mx.hashCode) +
    (mtaSts.hashCode) +
    (tlsReporting.hashCode) +
    (insights.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'CheckEmailAuthStackResults[domain=$domain, status=$status, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, spf=$spf, dmarc=$dmarc, dkim=$dkim, bimi=$bimi, mx=$mx, mtaSts=$mtaSts, tlsReporting=$tlsReporting, insights=$insights, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'status'] = this.status;
      json[r'healthScore'] = this.healthScore;
      json[r'totalChecks'] = this.totalChecks;
      json[r'passingChecks'] = this.passingChecks;
      json[r'failingChecks'] = this.failingChecks;
      json[r'spf'] = this.spf;
      json[r'dmarc'] = this.dmarc;
      json[r'dkim'] = this.dkim;
      json[r'bimi'] = this.bimi;
      json[r'mx'] = this.mx;
      json[r'mtaSts'] = this.mtaSts;
      json[r'tlsReporting'] = this.tlsReporting;
      json[r'insights'] = this.insights;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [CheckEmailAuthStackResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailAuthStackResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailAuthStackResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailAuthStackResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailAuthStackResults(
        domain: mapValueOfType<String>(json, r'domain')!,
        status: CheckEmailAuthStackResultsStatusEnum.fromJson(json[r'status'])!,
        healthScore: mapValueOfType<int>(json, r'healthScore')!,
        totalChecks: mapValueOfType<int>(json, r'totalChecks')!,
        passingChecks: mapValueOfType<int>(json, r'passingChecks')!,
        failingChecks: mapValueOfType<int>(json, r'failingChecks')!,
        spf: LookupSpfDomainResults.fromJson(json[r'spf'])!,
        dmarc: LookupDmarcDomainResults.fromJson(json[r'dmarc'])!,
        dkim: LookupDkimDomainResults.fromJson(json[r'dkim'])!,
        bimi: LookupBimiDomainResults.fromJson(json[r'bimi'])!,
        mx: LookupMxRecordsResults.fromJson(json[r'mx'])!,
        mtaSts: LookupMtaStsDomainResults.fromJson(json[r'mtaSts'])!,
        tlsReporting: LookupTlsReportingDomainResults.fromJson(json[r'tlsReporting'])!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CheckEmailAuthStackResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailAuthStackResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailAuthStackResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailAuthStackResults> mapFromJson(dynamic json) {
    final map = <String, CheckEmailAuthStackResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailAuthStackResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailAuthStackResults-objects as value to a dart map
  static Map<String, List<CheckEmailAuthStackResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailAuthStackResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailAuthStackResults.listFromJson(entry.value, growable: growable,);
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
    'spf',
    'dmarc',
    'dkim',
    'bimi',
    'mx',
    'mtaSts',
    'tlsReporting',
    'insights',
    'warnings',
    'errors',
  };
}


class CheckEmailAuthStackResultsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckEmailAuthStackResultsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CheckEmailAuthStackResultsStatusEnum._(r'HEALTHY');
  static const DEGRADED = CheckEmailAuthStackResultsStatusEnum._(r'DEGRADED');
  static const CRITICAL = CheckEmailAuthStackResultsStatusEnum._(r'CRITICAL');
  static const FAILED = CheckEmailAuthStackResultsStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CheckEmailAuthStackResultsStatusEnum].
  static const values = <CheckEmailAuthStackResultsStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static CheckEmailAuthStackResultsStatusEnum? fromJson(dynamic value) => CheckEmailAuthStackResultsStatusEnumTypeTransformer().decode(value);

  static List<CheckEmailAuthStackResultsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailAuthStackResultsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailAuthStackResultsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckEmailAuthStackResultsStatusEnum] to String,
/// and [decode] dynamic data back to [CheckEmailAuthStackResultsStatusEnum].
class CheckEmailAuthStackResultsStatusEnumTypeTransformer {
  factory CheckEmailAuthStackResultsStatusEnumTypeTransformer() => _instance ??= const CheckEmailAuthStackResultsStatusEnumTypeTransformer._();

  const CheckEmailAuthStackResultsStatusEnumTypeTransformer._();

  String encode(CheckEmailAuthStackResultsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckEmailAuthStackResultsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckEmailAuthStackResultsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CheckEmailAuthStackResultsStatusEnum.HEALTHY;
        case r'DEGRADED': return CheckEmailAuthStackResultsStatusEnum.DEGRADED;
        case r'CRITICAL': return CheckEmailAuthStackResultsStatusEnum.CRITICAL;
        case r'FAILED': return CheckEmailAuthStackResultsStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckEmailAuthStackResultsStatusEnumTypeTransformer] instance.
  static CheckEmailAuthStackResultsStatusEnumTypeTransformer? _instance;
}


