//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantReputationFindingDto {
  /// Returns a new [TenantReputationFindingDto] instance.
  TenantReputationFindingDto({
    required this.accountRegion,
    required this.tenantName,
    this.tenantArn,
    this.type,
    this.impact,
    this.status,
    this.description,
    this.createdTimestamp,
    this.lastUpdatedTimestamp,
  });

  TenantReputationFindingDtoAccountRegionEnum accountRegion;

  String tenantName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenantArn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? impact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUpdatedTimestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantReputationFindingDto &&
     other.accountRegion == accountRegion &&
     other.tenantName == tenantName &&
     other.tenantArn == tenantArn &&
     other.type == type &&
     other.impact == impact &&
     other.status == status &&
     other.description == description &&
     other.createdTimestamp == createdTimestamp &&
     other.lastUpdatedTimestamp == lastUpdatedTimestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountRegion.hashCode) +
    (tenantName.hashCode) +
    (tenantArn == null ? 0 : tenantArn!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (impact == null ? 0 : impact!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdTimestamp == null ? 0 : createdTimestamp!.hashCode) +
    (lastUpdatedTimestamp == null ? 0 : lastUpdatedTimestamp!.hashCode);

  @override
  String toString() => 'TenantReputationFindingDto[accountRegion=$accountRegion, tenantName=$tenantName, tenantArn=$tenantArn, type=$type, impact=$impact, status=$status, description=$description, createdTimestamp=$createdTimestamp, lastUpdatedTimestamp=$lastUpdatedTimestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accountRegion'] = this.accountRegion;
      json[r'tenantName'] = this.tenantName;
    if (this.tenantArn != null) {
      json[r'tenantArn'] = this.tenantArn;
    } else {
      json[r'tenantArn'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.impact != null) {
      json[r'impact'] = this.impact;
    } else {
      json[r'impact'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.createdTimestamp != null) {
      json[r'createdTimestamp'] = this.createdTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'createdTimestamp'] = null;
    }
    if (this.lastUpdatedTimestamp != null) {
      json[r'lastUpdatedTimestamp'] = this.lastUpdatedTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'lastUpdatedTimestamp'] = null;
    }
    return json;
  }

  /// Returns a new [TenantReputationFindingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantReputationFindingDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TenantReputationFindingDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TenantReputationFindingDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TenantReputationFindingDto(
        accountRegion: TenantReputationFindingDtoAccountRegionEnum.fromJson(json[r'accountRegion'])!,
        tenantName: mapValueOfType<String>(json, r'tenantName')!,
        tenantArn: mapValueOfType<String>(json, r'tenantArn'),
        type: mapValueOfType<String>(json, r'type'),
        impact: mapValueOfType<String>(json, r'impact'),
        status: mapValueOfType<String>(json, r'status'),
        description: mapValueOfType<String>(json, r'description'),
        createdTimestamp: mapDateTime(json, r'createdTimestamp', ''),
        lastUpdatedTimestamp: mapDateTime(json, r'lastUpdatedTimestamp', ''),
      );
    }
    return null;
  }

  static List<TenantReputationFindingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationFindingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationFindingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantReputationFindingDto> mapFromJson(dynamic json) {
    final map = <String, TenantReputationFindingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantReputationFindingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantReputationFindingDto-objects as value to a dart map
  static Map<String, List<TenantReputationFindingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantReputationFindingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantReputationFindingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accountRegion',
    'tenantName',
  };
}


class TenantReputationFindingDtoAccountRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const TenantReputationFindingDtoAccountRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uSWEST2ACCOUNTSTAGING = TenantReputationFindingDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_STAGING');
  static const uSEAST1ACCOUNTSTAGING = TenantReputationFindingDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_STAGING');
  static const eUWEST1ACCOUNTSTAGING = TenantReputationFindingDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_STAGING');
  static const uSWEST2ACCOUNTSES1 = TenantReputationFindingDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_1');
  static const eUWEST1ACCOUNTSES1 = TenantReputationFindingDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_1');
  static const uSWEST2ACCOUNTSES2 = TenantReputationFindingDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_2');
  static const eUWEST1ACCOUNTSES2 = TenantReputationFindingDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_2');
  static const uSWEST2ACCOUNTBYTEWISE = TenantReputationFindingDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_BYTEWISE');
  static const eUWEST1ACCOUNTBYTEWISE = TenantReputationFindingDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_BYTEWISE');
  static const uSWEST2 = TenantReputationFindingDtoAccountRegionEnum._(r'US_WEST_2');
  static const eUWEST1 = TenantReputationFindingDtoAccountRegionEnum._(r'EU_WEST_1');
  static const uSEAST1 = TenantReputationFindingDtoAccountRegionEnum._(r'US_EAST_1');

  /// List of all possible values in this [enum][TenantReputationFindingDtoAccountRegionEnum].
  static const values = <TenantReputationFindingDtoAccountRegionEnum>[
    uSWEST2ACCOUNTSTAGING,
    uSEAST1ACCOUNTSTAGING,
    eUWEST1ACCOUNTSTAGING,
    uSWEST2ACCOUNTSES1,
    eUWEST1ACCOUNTSES1,
    uSWEST2ACCOUNTSES2,
    eUWEST1ACCOUNTSES2,
    uSWEST2ACCOUNTBYTEWISE,
    eUWEST1ACCOUNTBYTEWISE,
    uSWEST2,
    eUWEST1,
    uSEAST1,
  ];

  static TenantReputationFindingDtoAccountRegionEnum? fromJson(dynamic value) => TenantReputationFindingDtoAccountRegionEnumTypeTransformer().decode(value);

  static List<TenantReputationFindingDtoAccountRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationFindingDtoAccountRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationFindingDtoAccountRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TenantReputationFindingDtoAccountRegionEnum] to String,
/// and [decode] dynamic data back to [TenantReputationFindingDtoAccountRegionEnum].
class TenantReputationFindingDtoAccountRegionEnumTypeTransformer {
  factory TenantReputationFindingDtoAccountRegionEnumTypeTransformer() => _instance ??= const TenantReputationFindingDtoAccountRegionEnumTypeTransformer._();

  const TenantReputationFindingDtoAccountRegionEnumTypeTransformer._();

  String encode(TenantReputationFindingDtoAccountRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TenantReputationFindingDtoAccountRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TenantReputationFindingDtoAccountRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US_WEST_2_ACCOUNT_STAGING': return TenantReputationFindingDtoAccountRegionEnum.uSWEST2ACCOUNTSTAGING;
        case r'US_EAST_1_ACCOUNT_STAGING': return TenantReputationFindingDtoAccountRegionEnum.uSEAST1ACCOUNTSTAGING;
        case r'EU_WEST_1_ACCOUNT_STAGING': return TenantReputationFindingDtoAccountRegionEnum.eUWEST1ACCOUNTSTAGING;
        case r'US_WEST_2_ACCOUNT_SES_1': return TenantReputationFindingDtoAccountRegionEnum.uSWEST2ACCOUNTSES1;
        case r'EU_WEST_1_ACCOUNT_SES_1': return TenantReputationFindingDtoAccountRegionEnum.eUWEST1ACCOUNTSES1;
        case r'US_WEST_2_ACCOUNT_SES_2': return TenantReputationFindingDtoAccountRegionEnum.uSWEST2ACCOUNTSES2;
        case r'EU_WEST_1_ACCOUNT_SES_2': return TenantReputationFindingDtoAccountRegionEnum.eUWEST1ACCOUNTSES2;
        case r'US_WEST_2_ACCOUNT_BYTEWISE': return TenantReputationFindingDtoAccountRegionEnum.uSWEST2ACCOUNTBYTEWISE;
        case r'EU_WEST_1_ACCOUNT_BYTEWISE': return TenantReputationFindingDtoAccountRegionEnum.eUWEST1ACCOUNTBYTEWISE;
        case r'US_WEST_2': return TenantReputationFindingDtoAccountRegionEnum.uSWEST2;
        case r'EU_WEST_1': return TenantReputationFindingDtoAccountRegionEnum.eUWEST1;
        case r'US_EAST_1': return TenantReputationFindingDtoAccountRegionEnum.uSEAST1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TenantReputationFindingDtoAccountRegionEnumTypeTransformer] instance.
  static TenantReputationFindingDtoAccountRegionEnumTypeTransformer? _instance;
}


