//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateTlsReportingRecordOptions {
  /// Returns a new [GenerateTlsReportingRecordOptions] instance.
  GenerateTlsReportingRecordOptions({
    this.reportingAddresses = const [],
    this.reportingUrl,
    required this.host,
    required this.version,
    required this.ttl,
  });

  List<String> reportingAddresses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reportingUrl;

  String host;

  GenerateTlsReportingRecordOptionsVersionEnum version;

  int ttl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateTlsReportingRecordOptions &&
     other.reportingAddresses == reportingAddresses &&
     other.reportingUrl == reportingUrl &&
     other.host == host &&
     other.version == version &&
     other.ttl == ttl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportingAddresses.hashCode) +
    (reportingUrl == null ? 0 : reportingUrl!.hashCode) +
    (host.hashCode) +
    (version.hashCode) +
    (ttl.hashCode);

  @override
  String toString() => 'GenerateTlsReportingRecordOptions[reportingAddresses=$reportingAddresses, reportingUrl=$reportingUrl, host=$host, version=$version, ttl=$ttl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reportingAddresses'] = this.reportingAddresses;
    if (this.reportingUrl != null) {
      json[r'reportingUrl'] = this.reportingUrl;
    } else {
      json[r'reportingUrl'] = null;
    }
      json[r'host'] = this.host;
      json[r'version'] = this.version;
      json[r'ttl'] = this.ttl;
    return json;
  }

  /// Returns a new [GenerateTlsReportingRecordOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateTlsReportingRecordOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateTlsReportingRecordOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateTlsReportingRecordOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateTlsReportingRecordOptions(
        reportingAddresses: json[r'reportingAddresses'] is List
            ? (json[r'reportingAddresses'] as List).cast<String>()
            : const [],
        reportingUrl: mapValueOfType<String>(json, r'reportingUrl'),
        host: mapValueOfType<String>(json, r'host')!,
        version: GenerateTlsReportingRecordOptionsVersionEnum.fromJson(json[r'version'])!,
        ttl: mapValueOfType<int>(json, r'ttl')!,
      );
    }
    return null;
  }

  static List<GenerateTlsReportingRecordOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTlsReportingRecordOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTlsReportingRecordOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateTlsReportingRecordOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateTlsReportingRecordOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateTlsReportingRecordOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateTlsReportingRecordOptions-objects as value to a dart map
  static Map<String, List<GenerateTlsReportingRecordOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateTlsReportingRecordOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateTlsReportingRecordOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportingAddresses',
    'host',
    'version',
    'ttl',
  };
}


class GenerateTlsReportingRecordOptionsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateTlsReportingRecordOptionsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tLSRPTv1 = GenerateTlsReportingRecordOptionsVersionEnum._(r'TLSRPTv1');

  /// List of all possible values in this [enum][GenerateTlsReportingRecordOptionsVersionEnum].
  static const values = <GenerateTlsReportingRecordOptionsVersionEnum>[
    tLSRPTv1,
  ];

  static GenerateTlsReportingRecordOptionsVersionEnum? fromJson(dynamic value) => GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer().decode(value);

  static List<GenerateTlsReportingRecordOptionsVersionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateTlsReportingRecordOptionsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateTlsReportingRecordOptionsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateTlsReportingRecordOptionsVersionEnum] to String,
/// and [decode] dynamic data back to [GenerateTlsReportingRecordOptionsVersionEnum].
class GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer {
  factory GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer() => _instance ??= const GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer._();

  const GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer._();

  String encode(GenerateTlsReportingRecordOptionsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateTlsReportingRecordOptionsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateTlsReportingRecordOptionsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TLSRPTv1': return GenerateTlsReportingRecordOptionsVersionEnum.tLSRPTv1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer] instance.
  static GenerateTlsReportingRecordOptionsVersionEnumTypeTransformer? _instance;
}


