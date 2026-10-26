//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementDomainMonitorSummaryDto {
  /// Returns a new [InboxPlacementDomainMonitorSummaryDto] instance.
  InboxPlacementDomainMonitorSummaryDto({
    required this.state,
    this.domain,
    required this.providerManaged,
    required this.source_,
    this.status,
    this.healthScore,
    this.totalChecks,
    this.passingChecks,
    this.failingChecks,
    this.spfOk,
    this.dmarcOk,
    this.dmarcEnforced,
    this.mxOk,
    this.dkimOk,
    this.bimiOk,
    this.mtaStsOk,
    this.tlsReportingOk,
    required this.blacklistChecked,
    required this.blacklistOk,
    required this.blacklistListed,
    required this.blacklistStatus,
    this.observedSendingIp,
    required this.scoreVersion,
    required this.scoreScope,
    this.insights = const [],
    this.errorMessage,
    this.monitorId,
    this.runId,
    this.checkedAt,
  });

  /// Sender-domain monitor state derived while analyzing an inbox placement run
  InboxPlacementDomainMonitorSummaryDtoStateEnum state;

  String? domain;

  bool providerManaged;

  /// Source for an inbox-placement domain monitor summary
  InboxPlacementDomainMonitorSummaryDtoSource_Enum source_;

  InboxPlacementDomainMonitorSummaryDtoStatusEnum? status;

  int? healthScore;

  int? totalChecks;

  int? passingChecks;

  int? failingChecks;

  bool? spfOk;

  bool? dmarcOk;

  bool? dmarcEnforced;

  bool? mxOk;

  bool? dkimOk;

  bool? bimiOk;

  bool? mtaStsOk;

  bool? tlsReportingOk;

  bool blacklistChecked;

  bool blacklistOk;

  bool blacklistListed;

  InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum blacklistStatus;

  String? observedSendingIp;

  String scoreVersion;

  String scoreScope;

  List<String> insights;

  String? errorMessage;

  String? monitorId;

  String? runId;

  DateTime? checkedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementDomainMonitorSummaryDto &&
     other.state == state &&
     other.domain == domain &&
     other.providerManaged == providerManaged &&
     other.source_ == source_ &&
     other.status == status &&
     other.healthScore == healthScore &&
     other.totalChecks == totalChecks &&
     other.passingChecks == passingChecks &&
     other.failingChecks == failingChecks &&
     other.spfOk == spfOk &&
     other.dmarcOk == dmarcOk &&
     other.dmarcEnforced == dmarcEnforced &&
     other.mxOk == mxOk &&
     other.dkimOk == dkimOk &&
     other.bimiOk == bimiOk &&
     other.mtaStsOk == mtaStsOk &&
     other.tlsReportingOk == tlsReportingOk &&
     other.blacklistChecked == blacklistChecked &&
     other.blacklistOk == blacklistOk &&
     other.blacklistListed == blacklistListed &&
     other.blacklistStatus == blacklistStatus &&
     other.observedSendingIp == observedSendingIp &&
     other.scoreVersion == scoreVersion &&
     other.scoreScope == scoreScope &&
     other.insights == insights &&
     other.errorMessage == errorMessage &&
     other.monitorId == monitorId &&
     other.runId == runId &&
     other.checkedAt == checkedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (providerManaged.hashCode) +
    (source_.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (healthScore == null ? 0 : healthScore!.hashCode) +
    (totalChecks == null ? 0 : totalChecks!.hashCode) +
    (passingChecks == null ? 0 : passingChecks!.hashCode) +
    (failingChecks == null ? 0 : failingChecks!.hashCode) +
    (spfOk == null ? 0 : spfOk!.hashCode) +
    (dmarcOk == null ? 0 : dmarcOk!.hashCode) +
    (dmarcEnforced == null ? 0 : dmarcEnforced!.hashCode) +
    (mxOk == null ? 0 : mxOk!.hashCode) +
    (dkimOk == null ? 0 : dkimOk!.hashCode) +
    (bimiOk == null ? 0 : bimiOk!.hashCode) +
    (mtaStsOk == null ? 0 : mtaStsOk!.hashCode) +
    (tlsReportingOk == null ? 0 : tlsReportingOk!.hashCode) +
    (blacklistChecked.hashCode) +
    (blacklistOk.hashCode) +
    (blacklistListed.hashCode) +
    (blacklistStatus.hashCode) +
    (observedSendingIp == null ? 0 : observedSendingIp!.hashCode) +
    (scoreVersion.hashCode) +
    (scoreScope.hashCode) +
    (insights.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (monitorId == null ? 0 : monitorId!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (checkedAt == null ? 0 : checkedAt!.hashCode);

  @override
  String toString() => 'InboxPlacementDomainMonitorSummaryDto[state=$state, domain=$domain, providerManaged=$providerManaged, source_=$source_, status=$status, healthScore=$healthScore, totalChecks=$totalChecks, passingChecks=$passingChecks, failingChecks=$failingChecks, spfOk=$spfOk, dmarcOk=$dmarcOk, dmarcEnforced=$dmarcEnforced, mxOk=$mxOk, dkimOk=$dkimOk, bimiOk=$bimiOk, mtaStsOk=$mtaStsOk, tlsReportingOk=$tlsReportingOk, blacklistChecked=$blacklistChecked, blacklistOk=$blacklistOk, blacklistListed=$blacklistListed, blacklistStatus=$blacklistStatus, observedSendingIp=$observedSendingIp, scoreVersion=$scoreVersion, scoreScope=$scoreScope, insights=$insights, errorMessage=$errorMessage, monitorId=$monitorId, runId=$runId, checkedAt=$checkedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
      json[r'providerManaged'] = this.providerManaged;
      json[r'source'] = this.source_;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.healthScore != null) {
      json[r'healthScore'] = this.healthScore;
    } else {
      json[r'healthScore'] = null;
    }
    if (this.totalChecks != null) {
      json[r'totalChecks'] = this.totalChecks;
    } else {
      json[r'totalChecks'] = null;
    }
    if (this.passingChecks != null) {
      json[r'passingChecks'] = this.passingChecks;
    } else {
      json[r'passingChecks'] = null;
    }
    if (this.failingChecks != null) {
      json[r'failingChecks'] = this.failingChecks;
    } else {
      json[r'failingChecks'] = null;
    }
    if (this.spfOk != null) {
      json[r'spfOk'] = this.spfOk;
    } else {
      json[r'spfOk'] = null;
    }
    if (this.dmarcOk != null) {
      json[r'dmarcOk'] = this.dmarcOk;
    } else {
      json[r'dmarcOk'] = null;
    }
    if (this.dmarcEnforced != null) {
      json[r'dmarcEnforced'] = this.dmarcEnforced;
    } else {
      json[r'dmarcEnforced'] = null;
    }
    if (this.mxOk != null) {
      json[r'mxOk'] = this.mxOk;
    } else {
      json[r'mxOk'] = null;
    }
    if (this.dkimOk != null) {
      json[r'dkimOk'] = this.dkimOk;
    } else {
      json[r'dkimOk'] = null;
    }
    if (this.bimiOk != null) {
      json[r'bimiOk'] = this.bimiOk;
    } else {
      json[r'bimiOk'] = null;
    }
    if (this.mtaStsOk != null) {
      json[r'mtaStsOk'] = this.mtaStsOk;
    } else {
      json[r'mtaStsOk'] = null;
    }
    if (this.tlsReportingOk != null) {
      json[r'tlsReportingOk'] = this.tlsReportingOk;
    } else {
      json[r'tlsReportingOk'] = null;
    }
      json[r'blacklistChecked'] = this.blacklistChecked;
      json[r'blacklistOk'] = this.blacklistOk;
      json[r'blacklistListed'] = this.blacklistListed;
      json[r'blacklistStatus'] = this.blacklistStatus;
    if (this.observedSendingIp != null) {
      json[r'observedSendingIp'] = this.observedSendingIp;
    } else {
      json[r'observedSendingIp'] = null;
    }
      json[r'scoreVersion'] = this.scoreVersion;
      json[r'scoreScope'] = this.scoreScope;
      json[r'insights'] = this.insights;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.monitorId != null) {
      json[r'monitorId'] = this.monitorId;
    } else {
      json[r'monitorId'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.checkedAt != null) {
      json[r'checkedAt'] = this.checkedAt!.toUtc().toIso8601String();
    } else {
      json[r'checkedAt'] = null;
    }
    return json;
  }

  /// Returns a new [InboxPlacementDomainMonitorSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementDomainMonitorSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementDomainMonitorSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementDomainMonitorSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementDomainMonitorSummaryDto(
        state: InboxPlacementDomainMonitorSummaryDtoStateEnum.fromJson(json[r'state'])!,
        domain: mapValueOfType<String>(json, r'domain'),
        providerManaged: mapValueOfType<bool>(json, r'providerManaged')!,
        source_: InboxPlacementDomainMonitorSummaryDtoSource_Enum.fromJson(json[r'source'])!,
        status: InboxPlacementDomainMonitorSummaryDtoStatusEnum.fromJson(json[r'status']),
        healthScore: mapValueOfType<int>(json, r'healthScore'),
        totalChecks: mapValueOfType<int>(json, r'totalChecks'),
        passingChecks: mapValueOfType<int>(json, r'passingChecks'),
        failingChecks: mapValueOfType<int>(json, r'failingChecks'),
        spfOk: mapValueOfType<bool>(json, r'spfOk'),
        dmarcOk: mapValueOfType<bool>(json, r'dmarcOk'),
        dmarcEnforced: mapValueOfType<bool>(json, r'dmarcEnforced'),
        mxOk: mapValueOfType<bool>(json, r'mxOk'),
        dkimOk: mapValueOfType<bool>(json, r'dkimOk'),
        bimiOk: mapValueOfType<bool>(json, r'bimiOk'),
        mtaStsOk: mapValueOfType<bool>(json, r'mtaStsOk'),
        tlsReportingOk: mapValueOfType<bool>(json, r'tlsReportingOk'),
        blacklistChecked: mapValueOfType<bool>(json, r'blacklistChecked')!,
        blacklistOk: mapValueOfType<bool>(json, r'blacklistOk')!,
        blacklistListed: mapValueOfType<bool>(json, r'blacklistListed')!,
        blacklistStatus: InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.fromJson(json[r'blacklistStatus'])!,
        observedSendingIp: mapValueOfType<String>(json, r'observedSendingIp'),
        scoreVersion: mapValueOfType<String>(json, r'scoreVersion')!,
        scoreScope: mapValueOfType<String>(json, r'scoreScope')!,
        insights: json[r'insights'] is List
            ? (json[r'insights'] as List).cast<String>()
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        monitorId: mapValueOfType<String>(json, r'monitorId'),
        runId: mapValueOfType<String>(json, r'runId'),
        checkedAt: mapDateTime(json, r'checkedAt', ''),
      );
    }
    return null;
  }

  static List<InboxPlacementDomainMonitorSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDomainMonitorSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDomainMonitorSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementDomainMonitorSummaryDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementDomainMonitorSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementDomainMonitorSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementDomainMonitorSummaryDto-objects as value to a dart map
  static Map<String, List<InboxPlacementDomainMonitorSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementDomainMonitorSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementDomainMonitorSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
    'providerManaged',
    'source',
    'blacklistChecked',
    'blacklistOk',
    'blacklistListed',
    'blacklistStatus',
    'scoreVersion',
    'scoreScope',
    'insights',
  };
}

/// Sender-domain monitor state derived while analyzing an inbox placement run
class InboxPlacementDomainMonitorSummaryDtoStateEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementDomainMonitorSummaryDtoStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNKNOWN = InboxPlacementDomainMonitorSummaryDtoStateEnum._(r'UNKNOWN');
  static const QUICK_CHECK_READY = InboxPlacementDomainMonitorSummaryDtoStateEnum._(r'QUICK_CHECK_READY');
  static const PROVIDER_MANAGED = InboxPlacementDomainMonitorSummaryDtoStateEnum._(r'PROVIDER_MANAGED');
  static const ERROR = InboxPlacementDomainMonitorSummaryDtoStateEnum._(r'ERROR');

  /// List of all possible values in this [enum][InboxPlacementDomainMonitorSummaryDtoStateEnum].
  static const values = <InboxPlacementDomainMonitorSummaryDtoStateEnum>[
    UNKNOWN,
    QUICK_CHECK_READY,
    PROVIDER_MANAGED,
    ERROR,
  ];

  static InboxPlacementDomainMonitorSummaryDtoStateEnum? fromJson(dynamic value) => InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer().decode(value);

  static List<InboxPlacementDomainMonitorSummaryDtoStateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDomainMonitorSummaryDtoStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDomainMonitorSummaryDtoStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementDomainMonitorSummaryDtoStateEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementDomainMonitorSummaryDtoStateEnum].
class InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer {
  factory InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer() => _instance ??= const InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer._();

  const InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer._();

  String encode(InboxPlacementDomainMonitorSummaryDtoStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementDomainMonitorSummaryDtoStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementDomainMonitorSummaryDtoStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNKNOWN': return InboxPlacementDomainMonitorSummaryDtoStateEnum.UNKNOWN;
        case r'QUICK_CHECK_READY': return InboxPlacementDomainMonitorSummaryDtoStateEnum.QUICK_CHECK_READY;
        case r'PROVIDER_MANAGED': return InboxPlacementDomainMonitorSummaryDtoStateEnum.PROVIDER_MANAGED;
        case r'ERROR': return InboxPlacementDomainMonitorSummaryDtoStateEnum.ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer] instance.
  static InboxPlacementDomainMonitorSummaryDtoStateEnumTypeTransformer? _instance;
}


/// Source for an inbox-placement domain monitor summary
class InboxPlacementDomainMonitorSummaryDtoSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementDomainMonitorSummaryDtoSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = InboxPlacementDomainMonitorSummaryDtoSource_Enum._(r'NONE');
  static const QUICK_CHECK = InboxPlacementDomainMonitorSummaryDtoSource_Enum._(r'QUICK_CHECK');
  static const OBSERVED_MESSAGE = InboxPlacementDomainMonitorSummaryDtoSource_Enum._(r'OBSERVED_MESSAGE');
  static const PERSISTENT_MONITOR = InboxPlacementDomainMonitorSummaryDtoSource_Enum._(r'PERSISTENT_MONITOR');

  /// List of all possible values in this [enum][InboxPlacementDomainMonitorSummaryDtoSource_Enum].
  static const values = <InboxPlacementDomainMonitorSummaryDtoSource_Enum>[
    NONE,
    QUICK_CHECK,
    OBSERVED_MESSAGE,
    PERSISTENT_MONITOR,
  ];

  static InboxPlacementDomainMonitorSummaryDtoSource_Enum? fromJson(dynamic value) => InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer().decode(value);

  static List<InboxPlacementDomainMonitorSummaryDtoSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDomainMonitorSummaryDtoSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDomainMonitorSummaryDtoSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementDomainMonitorSummaryDtoSource_Enum] to String,
/// and [decode] dynamic data back to [InboxPlacementDomainMonitorSummaryDtoSource_Enum].
class InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer {
  factory InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer() => _instance ??= const InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer._();

  const InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer._();

  String encode(InboxPlacementDomainMonitorSummaryDtoSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementDomainMonitorSummaryDtoSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementDomainMonitorSummaryDtoSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return InboxPlacementDomainMonitorSummaryDtoSource_Enum.NONE;
        case r'QUICK_CHECK': return InboxPlacementDomainMonitorSummaryDtoSource_Enum.QUICK_CHECK;
        case r'OBSERVED_MESSAGE': return InboxPlacementDomainMonitorSummaryDtoSource_Enum.OBSERVED_MESSAGE;
        case r'PERSISTENT_MONITOR': return InboxPlacementDomainMonitorSummaryDtoSource_Enum.PERSISTENT_MONITOR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer] instance.
  static InboxPlacementDomainMonitorSummaryDtoSource_EnumTypeTransformer? _instance;
}



class InboxPlacementDomainMonitorSummaryDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementDomainMonitorSummaryDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = InboxPlacementDomainMonitorSummaryDtoStatusEnum._(r'HEALTHY');
  static const DEGRADED = InboxPlacementDomainMonitorSummaryDtoStatusEnum._(r'DEGRADED');
  static const CRITICAL = InboxPlacementDomainMonitorSummaryDtoStatusEnum._(r'CRITICAL');
  static const FAILED = InboxPlacementDomainMonitorSummaryDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][InboxPlacementDomainMonitorSummaryDtoStatusEnum].
  static const values = <InboxPlacementDomainMonitorSummaryDtoStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static InboxPlacementDomainMonitorSummaryDtoStatusEnum? fromJson(dynamic value) => InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer().decode(value);

  static List<InboxPlacementDomainMonitorSummaryDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDomainMonitorSummaryDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDomainMonitorSummaryDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementDomainMonitorSummaryDtoStatusEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementDomainMonitorSummaryDtoStatusEnum].
class InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer {
  factory InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer() => _instance ??= const InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer._();

  const InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer._();

  String encode(InboxPlacementDomainMonitorSummaryDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementDomainMonitorSummaryDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementDomainMonitorSummaryDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return InboxPlacementDomainMonitorSummaryDtoStatusEnum.HEALTHY;
        case r'DEGRADED': return InboxPlacementDomainMonitorSummaryDtoStatusEnum.DEGRADED;
        case r'CRITICAL': return InboxPlacementDomainMonitorSummaryDtoStatusEnum.CRITICAL;
        case r'FAILED': return InboxPlacementDomainMonitorSummaryDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer] instance.
  static InboxPlacementDomainMonitorSummaryDtoStatusEnumTypeTransformer? _instance;
}



class InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LISTED = InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum._(r'LISTED');
  static const NOT_LISTED = InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum._(r'NOT_LISTED');
  static const ERROR = InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum._(r'ERROR');
  static const NOT_CHECKED = InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum].
  static const values = <InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum>[
    LISTED,
    NOT_LISTED,
    ERROR,
    NOT_CHECKED,
  ];

  static InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum? fromJson(dynamic value) => InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer().decode(value);

  static List<InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum].
class InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer {
  factory InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer() => _instance ??= const InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer._();

  const InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer._();

  String encode(InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LISTED': return InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.LISTED;
        case r'NOT_LISTED': return InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.NOT_LISTED;
        case r'ERROR': return InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.ERROR;
        case r'NOT_CHECKED': return InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer] instance.
  static InboxPlacementDomainMonitorSummaryDtoBlacklistStatusEnumTypeTransformer? _instance;
}


