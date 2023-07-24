//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateBimiRecordOptions {
  /// Returns a new [GenerateBimiRecordOptions] instance.
  GenerateBimiRecordOptions({
    required this.domain,
    required this.version,
    required this.logoUrl,
    this.vmcUrl,
  });

  String domain;

  GenerateBimiRecordOptionsVersionEnum version;

  String logoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vmcUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateBimiRecordOptions &&
     other.domain == domain &&
     other.version == version &&
     other.logoUrl == logoUrl &&
     other.vmcUrl == vmcUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (version.hashCode) +
    (logoUrl.hashCode) +
    (vmcUrl == null ? 0 : vmcUrl!.hashCode);

  @override
  String toString() => 'GenerateBimiRecordOptions[domain=$domain, version=$version, logoUrl=$logoUrl, vmcUrl=$vmcUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'version'] = this.version;
      json[r'logoUrl'] = this.logoUrl;
    if (this.vmcUrl != null) {
      json[r'vmcUrl'] = this.vmcUrl;
    } else {
      json[r'vmcUrl'] = null;
    }
    return json;
  }

  /// Returns a new [GenerateBimiRecordOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateBimiRecordOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateBimiRecordOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateBimiRecordOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateBimiRecordOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        version: GenerateBimiRecordOptionsVersionEnum.fromJson(json[r'version'])!,
        logoUrl: mapValueOfType<String>(json, r'logoUrl')!,
        vmcUrl: mapValueOfType<String>(json, r'vmcUrl'),
      );
    }
    return null;
  }

  static List<GenerateBimiRecordOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateBimiRecordOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateBimiRecordOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateBimiRecordOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateBimiRecordOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateBimiRecordOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateBimiRecordOptions-objects as value to a dart map
  static Map<String, List<GenerateBimiRecordOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateBimiRecordOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateBimiRecordOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'version',
    'logoUrl',
  };
}


class GenerateBimiRecordOptionsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateBimiRecordOptionsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bIMI1 = GenerateBimiRecordOptionsVersionEnum._(r'BIMI1');

  /// List of all possible values in this [enum][GenerateBimiRecordOptionsVersionEnum].
  static const values = <GenerateBimiRecordOptionsVersionEnum>[
    bIMI1,
  ];

  static GenerateBimiRecordOptionsVersionEnum? fromJson(dynamic value) => GenerateBimiRecordOptionsVersionEnumTypeTransformer().decode(value);

  static List<GenerateBimiRecordOptionsVersionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateBimiRecordOptionsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateBimiRecordOptionsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateBimiRecordOptionsVersionEnum] to String,
/// and [decode] dynamic data back to [GenerateBimiRecordOptionsVersionEnum].
class GenerateBimiRecordOptionsVersionEnumTypeTransformer {
  factory GenerateBimiRecordOptionsVersionEnumTypeTransformer() => _instance ??= const GenerateBimiRecordOptionsVersionEnumTypeTransformer._();

  const GenerateBimiRecordOptionsVersionEnumTypeTransformer._();

  String encode(GenerateBimiRecordOptionsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateBimiRecordOptionsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateBimiRecordOptionsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BIMI1': return GenerateBimiRecordOptionsVersionEnum.bIMI1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateBimiRecordOptionsVersionEnumTypeTransformer] instance.
  static GenerateBimiRecordOptionsVersionEnumTypeTransformer? _instance;
}


