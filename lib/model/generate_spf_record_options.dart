//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateSpfRecordOptions {
  /// Returns a new [GenerateSpfRecordOptions] instance.
  GenerateSpfRecordOptions({
    required this.domain,
    this.includeDomains = const [],
    this.ip4 = const [],
    this.ip6 = const [],
    required this.mx,
    required this.a,
    required this.allPolicy,
  });

  /// Domain the SPF record applies to
  String domain;

  /// Optional include domains
  List<String>? includeDomains;

  /// Optional IPv4 CIDRs or hosts
  List<String>? ip4;

  /// Optional IPv6 CIDRs or hosts
  List<String>? ip6;

  /// Whether to include the MX mechanism
  bool mx;

  /// Whether to include the A mechanism
  bool a;

  GenerateSpfRecordOptionsAllPolicyEnum allPolicy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateSpfRecordOptions &&
     other.domain == domain &&
     other.includeDomains == includeDomains &&
     other.ip4 == ip4 &&
     other.ip6 == ip6 &&
     other.mx == mx &&
     other.a == a &&
     other.allPolicy == allPolicy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (includeDomains == null ? 0 : includeDomains!.hashCode) +
    (ip4 == null ? 0 : ip4!.hashCode) +
    (ip6 == null ? 0 : ip6!.hashCode) +
    (mx.hashCode) +
    (a.hashCode) +
    (allPolicy.hashCode);

  @override
  String toString() => 'GenerateSpfRecordOptions[domain=$domain, includeDomains=$includeDomains, ip4=$ip4, ip6=$ip6, mx=$mx, a=$a, allPolicy=$allPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.includeDomains != null) {
      json[r'includeDomains'] = this.includeDomains;
    } else {
      json[r'includeDomains'] = null;
    }
    if (this.ip4 != null) {
      json[r'ip4'] = this.ip4;
    } else {
      json[r'ip4'] = null;
    }
    if (this.ip6 != null) {
      json[r'ip6'] = this.ip6;
    } else {
      json[r'ip6'] = null;
    }
      json[r'mx'] = this.mx;
      json[r'a'] = this.a;
      json[r'allPolicy'] = this.allPolicy;
    return json;
  }

  /// Returns a new [GenerateSpfRecordOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateSpfRecordOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateSpfRecordOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateSpfRecordOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateSpfRecordOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        includeDomains: json[r'includeDomains'] is List
            ? (json[r'includeDomains'] as List).cast<String>()
            : const [],
        ip4: json[r'ip4'] is List
            ? (json[r'ip4'] as List).cast<String>()
            : const [],
        ip6: json[r'ip6'] is List
            ? (json[r'ip6'] as List).cast<String>()
            : const [],
        mx: mapValueOfType<bool>(json, r'mx')!,
        a: mapValueOfType<bool>(json, r'a')!,
        allPolicy: GenerateSpfRecordOptionsAllPolicyEnum.fromJson(json[r'allPolicy'])!,
      );
    }
    return null;
  }

  static List<GenerateSpfRecordOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateSpfRecordOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateSpfRecordOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateSpfRecordOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateSpfRecordOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateSpfRecordOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateSpfRecordOptions-objects as value to a dart map
  static Map<String, List<GenerateSpfRecordOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateSpfRecordOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateSpfRecordOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'mx',
    'a',
    'allPolicy',
  };
}


class GenerateSpfRecordOptionsAllPolicyEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateSpfRecordOptionsAllPolicyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FAIL = GenerateSpfRecordOptionsAllPolicyEnum._(r'FAIL');
  static const SOFTFAIL = GenerateSpfRecordOptionsAllPolicyEnum._(r'SOFTFAIL');
  static const NEUTRAL = GenerateSpfRecordOptionsAllPolicyEnum._(r'NEUTRAL');

  /// List of all possible values in this [enum][GenerateSpfRecordOptionsAllPolicyEnum].
  static const values = <GenerateSpfRecordOptionsAllPolicyEnum>[
    FAIL,
    SOFTFAIL,
    NEUTRAL,
  ];

  static GenerateSpfRecordOptionsAllPolicyEnum? fromJson(dynamic value) => GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer().decode(value);

  static List<GenerateSpfRecordOptionsAllPolicyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateSpfRecordOptionsAllPolicyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateSpfRecordOptionsAllPolicyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateSpfRecordOptionsAllPolicyEnum] to String,
/// and [decode] dynamic data back to [GenerateSpfRecordOptionsAllPolicyEnum].
class GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer {
  factory GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer() => _instance ??= const GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer._();

  const GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer._();

  String encode(GenerateSpfRecordOptionsAllPolicyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateSpfRecordOptionsAllPolicyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateSpfRecordOptionsAllPolicyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FAIL': return GenerateSpfRecordOptionsAllPolicyEnum.FAIL;
        case r'SOFTFAIL': return GenerateSpfRecordOptionsAllPolicyEnum.SOFTFAIL;
        case r'NEUTRAL': return GenerateSpfRecordOptionsAllPolicyEnum.NEUTRAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer] instance.
  static GenerateSpfRecordOptionsAllPolicyEnumTypeTransformer? _instance;
}


