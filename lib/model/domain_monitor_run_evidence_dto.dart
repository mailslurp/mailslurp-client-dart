//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorRunEvidenceDto {
  /// Returns a new [DomainMonitorRunEvidenceDto] instance.
  DomainMonitorRunEvidenceDto({
    required this.scoreVersion,
    required this.scoreScope,
    this.observedMessageReceivedAt,
    this.outboundIp,
    this.outboundIpSource,
    this.observedDkimSelector,
    this.observedSpfStatus,
    this.observedDkimStatus,
    this.observedDmarcStatus,
    this.blacklist,
  });

  String scoreVersion;

  DomainMonitorRunEvidenceDtoScoreScopeEnum scoreScope;

  DateTime? observedMessageReceivedAt;

  String? outboundIp;

  String? outboundIpSource;

  String? observedDkimSelector;

  DomainMonitorRunEvidenceDtoObservedSpfStatusEnum? observedSpfStatus;

  DomainMonitorRunEvidenceDtoObservedDkimStatusEnum? observedDkimStatus;

  DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum? observedDmarcStatus;

  CheckEmailBlacklistResults? blacklist;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorRunEvidenceDto &&
     other.scoreVersion == scoreVersion &&
     other.scoreScope == scoreScope &&
     other.observedMessageReceivedAt == observedMessageReceivedAt &&
     other.outboundIp == outboundIp &&
     other.outboundIpSource == outboundIpSource &&
     other.observedDkimSelector == observedDkimSelector &&
     other.observedSpfStatus == observedSpfStatus &&
     other.observedDkimStatus == observedDkimStatus &&
     other.observedDmarcStatus == observedDmarcStatus &&
     other.blacklist == blacklist;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scoreVersion.hashCode) +
    (scoreScope.hashCode) +
    (observedMessageReceivedAt == null ? 0 : observedMessageReceivedAt!.hashCode) +
    (outboundIp == null ? 0 : outboundIp!.hashCode) +
    (outboundIpSource == null ? 0 : outboundIpSource!.hashCode) +
    (observedDkimSelector == null ? 0 : observedDkimSelector!.hashCode) +
    (observedSpfStatus == null ? 0 : observedSpfStatus!.hashCode) +
    (observedDkimStatus == null ? 0 : observedDkimStatus!.hashCode) +
    (observedDmarcStatus == null ? 0 : observedDmarcStatus!.hashCode) +
    (blacklist == null ? 0 : blacklist!.hashCode);

  @override
  String toString() => 'DomainMonitorRunEvidenceDto[scoreVersion=$scoreVersion, scoreScope=$scoreScope, observedMessageReceivedAt=$observedMessageReceivedAt, outboundIp=$outboundIp, outboundIpSource=$outboundIpSource, observedDkimSelector=$observedDkimSelector, observedSpfStatus=$observedSpfStatus, observedDkimStatus=$observedDkimStatus, observedDmarcStatus=$observedDmarcStatus, blacklist=$blacklist]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scoreVersion'] = this.scoreVersion;
      json[r'scoreScope'] = this.scoreScope;
    if (this.observedMessageReceivedAt != null) {
      json[r'observedMessageReceivedAt'] = this.observedMessageReceivedAt!.toUtc().toIso8601String();
    } else {
      json[r'observedMessageReceivedAt'] = null;
    }
    if (this.outboundIp != null) {
      json[r'outboundIp'] = this.outboundIp;
    } else {
      json[r'outboundIp'] = null;
    }
    if (this.outboundIpSource != null) {
      json[r'outboundIpSource'] = this.outboundIpSource;
    } else {
      json[r'outboundIpSource'] = null;
    }
    if (this.observedDkimSelector != null) {
      json[r'observedDkimSelector'] = this.observedDkimSelector;
    } else {
      json[r'observedDkimSelector'] = null;
    }
    if (this.observedSpfStatus != null) {
      json[r'observedSpfStatus'] = this.observedSpfStatus;
    } else {
      json[r'observedSpfStatus'] = null;
    }
    if (this.observedDkimStatus != null) {
      json[r'observedDkimStatus'] = this.observedDkimStatus;
    } else {
      json[r'observedDkimStatus'] = null;
    }
    if (this.observedDmarcStatus != null) {
      json[r'observedDmarcStatus'] = this.observedDmarcStatus;
    } else {
      json[r'observedDmarcStatus'] = null;
    }
    if (this.blacklist != null) {
      json[r'blacklist'] = this.blacklist;
    } else {
      json[r'blacklist'] = null;
    }
    return json;
  }

  /// Returns a new [DomainMonitorRunEvidenceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorRunEvidenceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorRunEvidenceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorRunEvidenceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorRunEvidenceDto(
        scoreVersion: mapValueOfType<String>(json, r'scoreVersion')!,
        scoreScope: DomainMonitorRunEvidenceDtoScoreScopeEnum.fromJson(json[r'scoreScope'])!,
        observedMessageReceivedAt: mapDateTime(json, r'observedMessageReceivedAt', ''),
        outboundIp: mapValueOfType<String>(json, r'outboundIp'),
        outboundIpSource: mapValueOfType<String>(json, r'outboundIpSource'),
        observedDkimSelector: mapValueOfType<String>(json, r'observedDkimSelector'),
        observedSpfStatus: DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.fromJson(json[r'observedSpfStatus']),
        observedDkimStatus: DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.fromJson(json[r'observedDkimStatus']),
        observedDmarcStatus: DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.fromJson(json[r'observedDmarcStatus']),
        blacklist: CheckEmailBlacklistResults.fromJson(json[r'blacklist']),
      );
    }
    return null;
  }

  static List<DomainMonitorRunEvidenceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunEvidenceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunEvidenceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorRunEvidenceDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorRunEvidenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorRunEvidenceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorRunEvidenceDto-objects as value to a dart map
  static Map<String, List<DomainMonitorRunEvidenceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorRunEvidenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorRunEvidenceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scoreVersion',
    'scoreScope',
  };
}


class DomainMonitorRunEvidenceDtoScoreScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunEvidenceDtoScoreScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const POSTURE = DomainMonitorRunEvidenceDtoScoreScopeEnum._(r'CONFIGURATION_POSTURE');
  static const AND_OBSERVED_MESSAGE = DomainMonitorRunEvidenceDtoScoreScopeEnum._(r'CONFIGURATION_AND_OBSERVED_MESSAGE');

  /// List of all possible values in this [enum][DomainMonitorRunEvidenceDtoScoreScopeEnum].
  static const values = <DomainMonitorRunEvidenceDtoScoreScopeEnum>[
    POSTURE,
    AND_OBSERVED_MESSAGE,
  ];

  static DomainMonitorRunEvidenceDtoScoreScopeEnum? fromJson(dynamic value) => DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunEvidenceDtoScoreScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunEvidenceDtoScoreScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunEvidenceDtoScoreScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunEvidenceDtoScoreScopeEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunEvidenceDtoScoreScopeEnum].
class DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer {
  factory DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer() => _instance ??= const DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer._();

  const DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer._();

  String encode(DomainMonitorRunEvidenceDtoScoreScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunEvidenceDtoScoreScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunEvidenceDtoScoreScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CONFIGURATION_POSTURE': return DomainMonitorRunEvidenceDtoScoreScopeEnum.POSTURE;
        case r'CONFIGURATION_AND_OBSERVED_MESSAGE': return DomainMonitorRunEvidenceDtoScoreScopeEnum.AND_OBSERVED_MESSAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer] instance.
  static DomainMonitorRunEvidenceDtoScoreScopeEnumTypeTransformer? _instance;
}



class DomainMonitorRunEvidenceDtoObservedSpfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunEvidenceDtoObservedSpfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorRunEvidenceDtoObservedSpfStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorRunEvidenceDtoObservedSpfStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorRunEvidenceDtoObservedSpfStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorRunEvidenceDtoObservedSpfStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorRunEvidenceDtoObservedSpfStatusEnum].
  static const values = <DomainMonitorRunEvidenceDtoObservedSpfStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorRunEvidenceDtoObservedSpfStatusEnum? fromJson(dynamic value) => DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunEvidenceDtoObservedSpfStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunEvidenceDtoObservedSpfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunEvidenceDtoObservedSpfStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunEvidenceDtoObservedSpfStatusEnum].
class DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer {
  factory DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer() => _instance ??= const DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer._();

  const DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer._();

  String encode(DomainMonitorRunEvidenceDtoObservedSpfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunEvidenceDtoObservedSpfStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.PASS;
        case r'FAIL': return DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorRunEvidenceDtoObservedSpfStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer] instance.
  static DomainMonitorRunEvidenceDtoObservedSpfStatusEnumTypeTransformer? _instance;
}



class DomainMonitorRunEvidenceDtoObservedDkimStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunEvidenceDtoObservedDkimStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorRunEvidenceDtoObservedDkimStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorRunEvidenceDtoObservedDkimStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorRunEvidenceDtoObservedDkimStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorRunEvidenceDtoObservedDkimStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorRunEvidenceDtoObservedDkimStatusEnum].
  static const values = <DomainMonitorRunEvidenceDtoObservedDkimStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorRunEvidenceDtoObservedDkimStatusEnum? fromJson(dynamic value) => DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunEvidenceDtoObservedDkimStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunEvidenceDtoObservedDkimStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunEvidenceDtoObservedDkimStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunEvidenceDtoObservedDkimStatusEnum].
class DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer {
  factory DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer() => _instance ??= const DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer._();

  const DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer._();

  String encode(DomainMonitorRunEvidenceDtoObservedDkimStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunEvidenceDtoObservedDkimStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.PASS;
        case r'FAIL': return DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorRunEvidenceDtoObservedDkimStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer] instance.
  static DomainMonitorRunEvidenceDtoObservedDkimStatusEnumTypeTransformer? _instance;
}



class DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum].
  static const values = <DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum? fromJson(dynamic value) => DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum].
class DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer {
  factory DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer() => _instance ??= const DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer._();

  const DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer._();

  String encode(DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.PASS;
        case r'FAIL': return DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorRunEvidenceDtoObservedDmarcStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer] instance.
  static DomainMonitorRunEvidenceDtoObservedDmarcStatusEnumTypeTransformer? _instance;
}


