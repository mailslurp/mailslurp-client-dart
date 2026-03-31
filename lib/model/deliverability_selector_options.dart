//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySelectorOptions {
  /// Returns a new [DeliverabilitySelectorOptions] instance.
  DeliverabilitySelectorOptions({
    required this.type,
    this.pattern,
    this.phoneCountry,
    this.entityIds = const [],
    this.excludeEntityIds = const [],
  });

  /// Selection mode
  DeliverabilitySelectorOptionsTypeEnum type;

  /// Wildcard pattern for PATTERN selection. Supports '*' and '?' wildcards. If no wildcard is present the value is treated as a case-insensitive contains match.
  String? pattern;

  /// Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope.
  DeliverabilitySelectorOptionsPhoneCountryEnum? phoneCountry;

  /// Explicit entity IDs for EXPLICIT selection
  List<String>? entityIds;

  /// Optional entity IDs to exclude from the resolved selection (applies after ALL/PATTERN/EXPLICIT selection).
  List<String>? excludeEntityIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySelectorOptions &&
     other.type == type &&
     other.pattern == pattern &&
     other.phoneCountry == phoneCountry &&
     other.entityIds == entityIds &&
     other.excludeEntityIds == excludeEntityIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (pattern == null ? 0 : pattern!.hashCode) +
    (phoneCountry == null ? 0 : phoneCountry!.hashCode) +
    (entityIds == null ? 0 : entityIds!.hashCode) +
    (excludeEntityIds == null ? 0 : excludeEntityIds!.hashCode);

  @override
  String toString() => 'DeliverabilitySelectorOptions[type=$type, pattern=$pattern, phoneCountry=$phoneCountry, entityIds=$entityIds, excludeEntityIds=$excludeEntityIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.phoneCountry != null) {
      json[r'phoneCountry'] = this.phoneCountry;
    } else {
      json[r'phoneCountry'] = null;
    }
    if (this.entityIds != null) {
      json[r'entityIds'] = this.entityIds;
    } else {
      json[r'entityIds'] = null;
    }
    if (this.excludeEntityIds != null) {
      json[r'excludeEntityIds'] = this.excludeEntityIds;
    } else {
      json[r'excludeEntityIds'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilitySelectorOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySelectorOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySelectorOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySelectorOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySelectorOptions(
        type: DeliverabilitySelectorOptionsTypeEnum.fromJson(json[r'type'])!,
        pattern: mapValueOfType<String>(json, r'pattern'),
        phoneCountry: DeliverabilitySelectorOptionsPhoneCountryEnum.fromJson(json[r'phoneCountry']),
        entityIds: json[r'entityIds'] is List
            ? (json[r'entityIds'] as List).cast<String>()
            : const [],
        excludeEntityIds: json[r'excludeEntityIds'] is List
            ? (json[r'excludeEntityIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<DeliverabilitySelectorOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySelectorOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySelectorOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySelectorOptions> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySelectorOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySelectorOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySelectorOptions-objects as value to a dart map
  static Map<String, List<DeliverabilitySelectorOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySelectorOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySelectorOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// Selection mode
class DeliverabilitySelectorOptionsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilitySelectorOptionsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL = DeliverabilitySelectorOptionsTypeEnum._(r'ALL');
  static const PATTERN = DeliverabilitySelectorOptionsTypeEnum._(r'PATTERN');
  static const EXPLICIT = DeliverabilitySelectorOptionsTypeEnum._(r'EXPLICIT');

  /// List of all possible values in this [enum][DeliverabilitySelectorOptionsTypeEnum].
  static const values = <DeliverabilitySelectorOptionsTypeEnum>[
    ALL,
    PATTERN,
    EXPLICIT,
  ];

  static DeliverabilitySelectorOptionsTypeEnum? fromJson(dynamic value) => DeliverabilitySelectorOptionsTypeEnumTypeTransformer().decode(value);

  static List<DeliverabilitySelectorOptionsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySelectorOptionsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySelectorOptionsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilitySelectorOptionsTypeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilitySelectorOptionsTypeEnum].
class DeliverabilitySelectorOptionsTypeEnumTypeTransformer {
  factory DeliverabilitySelectorOptionsTypeEnumTypeTransformer() => _instance ??= const DeliverabilitySelectorOptionsTypeEnumTypeTransformer._();

  const DeliverabilitySelectorOptionsTypeEnumTypeTransformer._();

  String encode(DeliverabilitySelectorOptionsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilitySelectorOptionsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilitySelectorOptionsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL': return DeliverabilitySelectorOptionsTypeEnum.ALL;
        case r'PATTERN': return DeliverabilitySelectorOptionsTypeEnum.PATTERN;
        case r'EXPLICIT': return DeliverabilitySelectorOptionsTypeEnum.EXPLICIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilitySelectorOptionsTypeEnumTypeTransformer] instance.
  static DeliverabilitySelectorOptionsTypeEnumTypeTransformer? _instance;
}


/// Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope.
class DeliverabilitySelectorOptionsPhoneCountryEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilitySelectorOptionsPhoneCountryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'US');
  static const GB = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'GB');
  static const AU = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'AU');
  static const CA = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'CA');
  static const EE = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'EE');
  static const HK = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'HK');
  static const PL = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'PL');
  static const PT = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'PT');
  static const NL = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'NL');
  static const IL = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'IL');
  static const FI = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'FI');
  static const SE = DeliverabilitySelectorOptionsPhoneCountryEnum._(r'SE');

  /// List of all possible values in this [enum][DeliverabilitySelectorOptionsPhoneCountryEnum].
  static const values = <DeliverabilitySelectorOptionsPhoneCountryEnum>[
    US,
    GB,
    AU,
    CA,
    EE,
    HK,
    PL,
    PT,
    NL,
    IL,
    FI,
    SE,
  ];

  static DeliverabilitySelectorOptionsPhoneCountryEnum? fromJson(dynamic value) => DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer().decode(value);

  static List<DeliverabilitySelectorOptionsPhoneCountryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySelectorOptionsPhoneCountryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySelectorOptionsPhoneCountryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilitySelectorOptionsPhoneCountryEnum] to String,
/// and [decode] dynamic data back to [DeliverabilitySelectorOptionsPhoneCountryEnum].
class DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer {
  factory DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer() => _instance ??= const DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer._();

  const DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer._();

  String encode(DeliverabilitySelectorOptionsPhoneCountryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilitySelectorOptionsPhoneCountryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilitySelectorOptionsPhoneCountryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return DeliverabilitySelectorOptionsPhoneCountryEnum.US;
        case r'GB': return DeliverabilitySelectorOptionsPhoneCountryEnum.GB;
        case r'AU': return DeliverabilitySelectorOptionsPhoneCountryEnum.AU;
        case r'CA': return DeliverabilitySelectorOptionsPhoneCountryEnum.CA;
        case r'EE': return DeliverabilitySelectorOptionsPhoneCountryEnum.EE;
        case r'HK': return DeliverabilitySelectorOptionsPhoneCountryEnum.HK;
        case r'PL': return DeliverabilitySelectorOptionsPhoneCountryEnum.PL;
        case r'PT': return DeliverabilitySelectorOptionsPhoneCountryEnum.PT;
        case r'NL': return DeliverabilitySelectorOptionsPhoneCountryEnum.NL;
        case r'IL': return DeliverabilitySelectorOptionsPhoneCountryEnum.IL;
        case r'FI': return DeliverabilitySelectorOptionsPhoneCountryEnum.FI;
        case r'SE': return DeliverabilitySelectorOptionsPhoneCountryEnum.SE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer] instance.
  static DeliverabilitySelectorOptionsPhoneCountryEnumTypeTransformer? _instance;
}


