//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateDmarcRecordOptions {
  /// Returns a new [GenerateDmarcRecordOptions] instance.
  GenerateDmarcRecordOptions({
    required this.domain,
    required this.version,
    required this.policy,
    this.subdomainPolicy,
    this.reportEmailAddress = const [],
    this.forensicEmailAddress = const [],
    this.percentage,
    this.reportFormat,
    this.secondsBetweenReports,
    this.adkim,
    this.aspf,
    this.fo,
  });

  String domain;

  GenerateDmarcRecordOptionsVersionEnum version;

  GenerateDmarcRecordOptionsPolicyEnum policy;

  GenerateDmarcRecordOptionsSubdomainPolicyEnum? subdomainPolicy;

  List<String> reportEmailAddress;

  List<String> forensicEmailAddress;

  /// Minimum value: 1
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentage;

  GenerateDmarcRecordOptionsReportFormatEnum? reportFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? secondsBetweenReports;

  GenerateDmarcRecordOptionsAdkimEnum? adkim;

  GenerateDmarcRecordOptionsAspfEnum? aspf;

  GenerateDmarcRecordOptionsFoEnum? fo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateDmarcRecordOptions &&
     other.domain == domain &&
     other.version == version &&
     other.policy == policy &&
     other.subdomainPolicy == subdomainPolicy &&
     other.reportEmailAddress == reportEmailAddress &&
     other.forensicEmailAddress == forensicEmailAddress &&
     other.percentage == percentage &&
     other.reportFormat == reportFormat &&
     other.secondsBetweenReports == secondsBetweenReports &&
     other.adkim == adkim &&
     other.aspf == aspf &&
     other.fo == fo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (version.hashCode) +
    (policy.hashCode) +
    (subdomainPolicy == null ? 0 : subdomainPolicy!.hashCode) +
    (reportEmailAddress.hashCode) +
    (forensicEmailAddress.hashCode) +
    (percentage == null ? 0 : percentage!.hashCode) +
    (reportFormat == null ? 0 : reportFormat!.hashCode) +
    (secondsBetweenReports == null ? 0 : secondsBetweenReports!.hashCode) +
    (adkim == null ? 0 : adkim!.hashCode) +
    (aspf == null ? 0 : aspf!.hashCode) +
    (fo == null ? 0 : fo!.hashCode);

  @override
  String toString() => 'GenerateDmarcRecordOptions[domain=$domain, version=$version, policy=$policy, subdomainPolicy=$subdomainPolicy, reportEmailAddress=$reportEmailAddress, forensicEmailAddress=$forensicEmailAddress, percentage=$percentage, reportFormat=$reportFormat, secondsBetweenReports=$secondsBetweenReports, adkim=$adkim, aspf=$aspf, fo=$fo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'version'] = this.version;
      json[r'policy'] = this.policy;
    if (this.subdomainPolicy != null) {
      json[r'subdomainPolicy'] = this.subdomainPolicy;
    } else {
      json[r'subdomainPolicy'] = null;
    }
      json[r'reportEmailAddress'] = this.reportEmailAddress;
      json[r'forensicEmailAddress'] = this.forensicEmailAddress;
    if (this.percentage != null) {
      json[r'percentage'] = this.percentage;
    } else {
      json[r'percentage'] = null;
    }
    if (this.reportFormat != null) {
      json[r'reportFormat'] = this.reportFormat;
    } else {
      json[r'reportFormat'] = null;
    }
    if (this.secondsBetweenReports != null) {
      json[r'secondsBetweenReports'] = this.secondsBetweenReports;
    } else {
      json[r'secondsBetweenReports'] = null;
    }
    if (this.adkim != null) {
      json[r'adkim'] = this.adkim;
    } else {
      json[r'adkim'] = null;
    }
    if (this.aspf != null) {
      json[r'aspf'] = this.aspf;
    } else {
      json[r'aspf'] = null;
    }
    if (this.fo != null) {
      json[r'fo'] = this.fo;
    } else {
      json[r'fo'] = null;
    }
    return json;
  }

  /// Returns a new [GenerateDmarcRecordOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateDmarcRecordOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateDmarcRecordOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateDmarcRecordOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateDmarcRecordOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        version: GenerateDmarcRecordOptionsVersionEnum.fromJson(json[r'version'])!,
        policy: GenerateDmarcRecordOptionsPolicyEnum.fromJson(json[r'policy'])!,
        subdomainPolicy: GenerateDmarcRecordOptionsSubdomainPolicyEnum.fromJson(json[r'subdomainPolicy']),
        reportEmailAddress: json[r'reportEmailAddress'] is List
            ? (json[r'reportEmailAddress'] as List).cast<String>()
            : const [],
        forensicEmailAddress: json[r'forensicEmailAddress'] is List
            ? (json[r'forensicEmailAddress'] as List).cast<String>()
            : const [],
        percentage: mapValueOfType<int>(json, r'percentage'),
        reportFormat: GenerateDmarcRecordOptionsReportFormatEnum.fromJson(json[r'reportFormat']),
        secondsBetweenReports: mapValueOfType<int>(json, r'secondsBetweenReports'),
        adkim: GenerateDmarcRecordOptionsAdkimEnum.fromJson(json[r'adkim']),
        aspf: GenerateDmarcRecordOptionsAspfEnum.fromJson(json[r'aspf']),
        fo: GenerateDmarcRecordOptionsFoEnum.fromJson(json[r'fo']),
      );
    }
    return null;
  }

  static List<GenerateDmarcRecordOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateDmarcRecordOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateDmarcRecordOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateDmarcRecordOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateDmarcRecordOptions-objects as value to a dart map
  static Map<String, List<GenerateDmarcRecordOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateDmarcRecordOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateDmarcRecordOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'version',
    'policy',
  };
}


class GenerateDmarcRecordOptionsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dMARC1 = GenerateDmarcRecordOptionsVersionEnum._(r'DMARC1');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsVersionEnum].
  static const values = <GenerateDmarcRecordOptionsVersionEnum>[
    dMARC1,
  ];

  static GenerateDmarcRecordOptionsVersionEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsVersionEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsVersionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsVersionEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsVersionEnum].
class GenerateDmarcRecordOptionsVersionEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsVersionEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsVersionEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsVersionEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DMARC1': return GenerateDmarcRecordOptionsVersionEnum.dMARC1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsVersionEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsVersionEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsPolicyEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsPolicyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = GenerateDmarcRecordOptionsPolicyEnum._(r'NONE');
  static const QUARANTINE = GenerateDmarcRecordOptionsPolicyEnum._(r'QUARANTINE');
  static const REJECT = GenerateDmarcRecordOptionsPolicyEnum._(r'REJECT');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsPolicyEnum].
  static const values = <GenerateDmarcRecordOptionsPolicyEnum>[
    NONE,
    QUARANTINE,
    REJECT,
  ];

  static GenerateDmarcRecordOptionsPolicyEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsPolicyEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsPolicyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsPolicyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsPolicyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsPolicyEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsPolicyEnum].
class GenerateDmarcRecordOptionsPolicyEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsPolicyEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsPolicyEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsPolicyEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsPolicyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsPolicyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsPolicyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return GenerateDmarcRecordOptionsPolicyEnum.NONE;
        case r'QUARANTINE': return GenerateDmarcRecordOptionsPolicyEnum.QUARANTINE;
        case r'REJECT': return GenerateDmarcRecordOptionsPolicyEnum.REJECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsPolicyEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsPolicyEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsSubdomainPolicyEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsSubdomainPolicyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = GenerateDmarcRecordOptionsSubdomainPolicyEnum._(r'NONE');
  static const QUARANTINE = GenerateDmarcRecordOptionsSubdomainPolicyEnum._(r'QUARANTINE');
  static const REJECT = GenerateDmarcRecordOptionsSubdomainPolicyEnum._(r'REJECT');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsSubdomainPolicyEnum].
  static const values = <GenerateDmarcRecordOptionsSubdomainPolicyEnum>[
    NONE,
    QUARANTINE,
    REJECT,
  ];

  static GenerateDmarcRecordOptionsSubdomainPolicyEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsSubdomainPolicyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsSubdomainPolicyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsSubdomainPolicyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsSubdomainPolicyEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsSubdomainPolicyEnum].
class GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsSubdomainPolicyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsSubdomainPolicyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsSubdomainPolicyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return GenerateDmarcRecordOptionsSubdomainPolicyEnum.NONE;
        case r'QUARANTINE': return GenerateDmarcRecordOptionsSubdomainPolicyEnum.QUARANTINE;
        case r'REJECT': return GenerateDmarcRecordOptionsSubdomainPolicyEnum.REJECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsSubdomainPolicyEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsReportFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsReportFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AFRF = GenerateDmarcRecordOptionsReportFormatEnum._(r'AFRF');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsReportFormatEnum].
  static const values = <GenerateDmarcRecordOptionsReportFormatEnum>[
    AFRF,
  ];

  static GenerateDmarcRecordOptionsReportFormatEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsReportFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsReportFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsReportFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsReportFormatEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsReportFormatEnum].
class GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsReportFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsReportFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsReportFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AFRF': return GenerateDmarcRecordOptionsReportFormatEnum.AFRF;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsReportFormatEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsAdkimEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsAdkimEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRICT = GenerateDmarcRecordOptionsAdkimEnum._(r'STRICT');
  static const RELAXED = GenerateDmarcRecordOptionsAdkimEnum._(r'RELAXED');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsAdkimEnum].
  static const values = <GenerateDmarcRecordOptionsAdkimEnum>[
    STRICT,
    RELAXED,
  ];

  static GenerateDmarcRecordOptionsAdkimEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsAdkimEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsAdkimEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsAdkimEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsAdkimEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsAdkimEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsAdkimEnum].
class GenerateDmarcRecordOptionsAdkimEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsAdkimEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsAdkimEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsAdkimEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsAdkimEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsAdkimEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsAdkimEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STRICT': return GenerateDmarcRecordOptionsAdkimEnum.STRICT;
        case r'RELAXED': return GenerateDmarcRecordOptionsAdkimEnum.RELAXED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsAdkimEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsAdkimEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsAspfEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsAspfEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STRICT = GenerateDmarcRecordOptionsAspfEnum._(r'STRICT');
  static const RELAXED = GenerateDmarcRecordOptionsAspfEnum._(r'RELAXED');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsAspfEnum].
  static const values = <GenerateDmarcRecordOptionsAspfEnum>[
    STRICT,
    RELAXED,
  ];

  static GenerateDmarcRecordOptionsAspfEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsAspfEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsAspfEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsAspfEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsAspfEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsAspfEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsAspfEnum].
class GenerateDmarcRecordOptionsAspfEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsAspfEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsAspfEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsAspfEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsAspfEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsAspfEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsAspfEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STRICT': return GenerateDmarcRecordOptionsAspfEnum.STRICT;
        case r'RELAXED': return GenerateDmarcRecordOptionsAspfEnum.RELAXED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsAspfEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsAspfEnumTypeTransformer? _instance;
}



class GenerateDmarcRecordOptionsFoEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateDmarcRecordOptionsFoEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n0 = GenerateDmarcRecordOptionsFoEnum._(r'FO_0');
  static const n1 = GenerateDmarcRecordOptionsFoEnum._(r'FO_1');
  static const D = GenerateDmarcRecordOptionsFoEnum._(r'FO_D');
  static const S = GenerateDmarcRecordOptionsFoEnum._(r'FO_S');

  /// List of all possible values in this [enum][GenerateDmarcRecordOptionsFoEnum].
  static const values = <GenerateDmarcRecordOptionsFoEnum>[
    n0,
    n1,
    D,
    S,
  ];

  static GenerateDmarcRecordOptionsFoEnum? fromJson(dynamic value) => GenerateDmarcRecordOptionsFoEnumTypeTransformer().decode(value);

  static List<GenerateDmarcRecordOptionsFoEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateDmarcRecordOptionsFoEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateDmarcRecordOptionsFoEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateDmarcRecordOptionsFoEnum] to String,
/// and [decode] dynamic data back to [GenerateDmarcRecordOptionsFoEnum].
class GenerateDmarcRecordOptionsFoEnumTypeTransformer {
  factory GenerateDmarcRecordOptionsFoEnumTypeTransformer() => _instance ??= const GenerateDmarcRecordOptionsFoEnumTypeTransformer._();

  const GenerateDmarcRecordOptionsFoEnumTypeTransformer._();

  String encode(GenerateDmarcRecordOptionsFoEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateDmarcRecordOptionsFoEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateDmarcRecordOptionsFoEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FO_0': return GenerateDmarcRecordOptionsFoEnum.n0;
        case r'FO_1': return GenerateDmarcRecordOptionsFoEnum.n1;
        case r'FO_D': return GenerateDmarcRecordOptionsFoEnum.D;
        case r'FO_S': return GenerateDmarcRecordOptionsFoEnum.S;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateDmarcRecordOptionsFoEnumTypeTransformer] instance.
  static GenerateDmarcRecordOptionsFoEnumTypeTransformer? _instance;
}


