//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateMtaStsRecordOptions {
  /// Returns a new [GenerateMtaStsRecordOptions] instance.
  GenerateMtaStsRecordOptions({
    required this.host,
    required this.version,
    required this.mode,
    required this.ttl,
    required this.maxAgeSeconds,
    this.mxRecords = const [],
  });

  String host;

  GenerateMtaStsRecordOptionsVersionEnum version;

  GenerateMtaStsRecordOptionsModeEnum mode;

  int ttl;

  int maxAgeSeconds;

  List<String> mxRecords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateMtaStsRecordOptions &&
     other.host == host &&
     other.version == version &&
     other.mode == mode &&
     other.ttl == ttl &&
     other.maxAgeSeconds == maxAgeSeconds &&
     other.mxRecords == mxRecords;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (version.hashCode) +
    (mode.hashCode) +
    (ttl.hashCode) +
    (maxAgeSeconds.hashCode) +
    (mxRecords.hashCode);

  @override
  String toString() => 'GenerateMtaStsRecordOptions[host=$host, version=$version, mode=$mode, ttl=$ttl, maxAgeSeconds=$maxAgeSeconds, mxRecords=$mxRecords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'version'] = this.version;
      json[r'mode'] = this.mode;
      json[r'ttl'] = this.ttl;
      json[r'maxAgeSeconds'] = this.maxAgeSeconds;
      json[r'mxRecords'] = this.mxRecords;
    return json;
  }

  /// Returns a new [GenerateMtaStsRecordOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateMtaStsRecordOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateMtaStsRecordOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateMtaStsRecordOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateMtaStsRecordOptions(
        host: mapValueOfType<String>(json, r'host')!,
        version: GenerateMtaStsRecordOptionsVersionEnum.fromJson(json[r'version'])!,
        mode: GenerateMtaStsRecordOptionsModeEnum.fromJson(json[r'mode'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
        maxAgeSeconds: mapValueOfType<int>(json, r'maxAgeSeconds')!,
        mxRecords: json[r'mxRecords'] is List
            ? (json[r'mxRecords'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<GenerateMtaStsRecordOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMtaStsRecordOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMtaStsRecordOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateMtaStsRecordOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateMtaStsRecordOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMtaStsRecordOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateMtaStsRecordOptions-objects as value to a dart map
  static Map<String, List<GenerateMtaStsRecordOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateMtaStsRecordOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateMtaStsRecordOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'version',
    'mode',
    'ttl',
    'maxAgeSeconds',
    'mxRecords',
  };
}


class GenerateMtaStsRecordOptionsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateMtaStsRecordOptionsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sTSv1 = GenerateMtaStsRecordOptionsVersionEnum._(r'STSv1');

  /// List of all possible values in this [enum][GenerateMtaStsRecordOptionsVersionEnum].
  static const values = <GenerateMtaStsRecordOptionsVersionEnum>[
    sTSv1,
  ];

  static GenerateMtaStsRecordOptionsVersionEnum? fromJson(dynamic value) => GenerateMtaStsRecordOptionsVersionEnumTypeTransformer().decode(value);

  static List<GenerateMtaStsRecordOptionsVersionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMtaStsRecordOptionsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMtaStsRecordOptionsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateMtaStsRecordOptionsVersionEnum] to String,
/// and [decode] dynamic data back to [GenerateMtaStsRecordOptionsVersionEnum].
class GenerateMtaStsRecordOptionsVersionEnumTypeTransformer {
  factory GenerateMtaStsRecordOptionsVersionEnumTypeTransformer() => _instance ??= const GenerateMtaStsRecordOptionsVersionEnumTypeTransformer._();

  const GenerateMtaStsRecordOptionsVersionEnumTypeTransformer._();

  String encode(GenerateMtaStsRecordOptionsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateMtaStsRecordOptionsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateMtaStsRecordOptionsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STSv1': return GenerateMtaStsRecordOptionsVersionEnum.sTSv1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateMtaStsRecordOptionsVersionEnumTypeTransformer] instance.
  static GenerateMtaStsRecordOptionsVersionEnumTypeTransformer? _instance;
}



class GenerateMtaStsRecordOptionsModeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateMtaStsRecordOptionsModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TESTING = GenerateMtaStsRecordOptionsModeEnum._(r'TESTING');
  static const ENFORCE = GenerateMtaStsRecordOptionsModeEnum._(r'ENFORCE');
  static const NONE = GenerateMtaStsRecordOptionsModeEnum._(r'NONE');

  /// List of all possible values in this [enum][GenerateMtaStsRecordOptionsModeEnum].
  static const values = <GenerateMtaStsRecordOptionsModeEnum>[
    TESTING,
    ENFORCE,
    NONE,
  ];

  static GenerateMtaStsRecordOptionsModeEnum? fromJson(dynamic value) => GenerateMtaStsRecordOptionsModeEnumTypeTransformer().decode(value);

  static List<GenerateMtaStsRecordOptionsModeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateMtaStsRecordOptionsModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateMtaStsRecordOptionsModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateMtaStsRecordOptionsModeEnum] to String,
/// and [decode] dynamic data back to [GenerateMtaStsRecordOptionsModeEnum].
class GenerateMtaStsRecordOptionsModeEnumTypeTransformer {
  factory GenerateMtaStsRecordOptionsModeEnumTypeTransformer() => _instance ??= const GenerateMtaStsRecordOptionsModeEnumTypeTransformer._();

  const GenerateMtaStsRecordOptionsModeEnumTypeTransformer._();

  String encode(GenerateMtaStsRecordOptionsModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateMtaStsRecordOptionsModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateMtaStsRecordOptionsModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TESTING': return GenerateMtaStsRecordOptionsModeEnum.TESTING;
        case r'ENFORCE': return GenerateMtaStsRecordOptionsModeEnum.ENFORCE;
        case r'NONE': return GenerateMtaStsRecordOptionsModeEnum.NONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateMtaStsRecordOptionsModeEnumTypeTransformer] instance.
  static GenerateMtaStsRecordOptionsModeEnumTypeTransformer? _instance;
}


