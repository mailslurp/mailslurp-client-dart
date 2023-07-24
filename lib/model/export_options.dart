//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportOptions {
  /// Returns a new [ExportOptions] instance.
  ExportOptions({
    required this.outputFormat,
    this.excludePreviouslyExported,
    this.createdEarliestTime,
    this.createdOldestTime,
    this.filter,
    this.listSeparatorToken,
  });

  ExportOptionsOutputFormatEnum outputFormat;

  bool? excludePreviouslyExported;

  DateTime? createdEarliestTime;

  DateTime? createdOldestTime;

  String? filter;

  String? listSeparatorToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportOptions &&
     other.outputFormat == outputFormat &&
     other.excludePreviouslyExported == excludePreviouslyExported &&
     other.createdEarliestTime == createdEarliestTime &&
     other.createdOldestTime == createdOldestTime &&
     other.filter == filter &&
     other.listSeparatorToken == listSeparatorToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (outputFormat.hashCode) +
    (excludePreviouslyExported == null ? 0 : excludePreviouslyExported!.hashCode) +
    (createdEarliestTime == null ? 0 : createdEarliestTime!.hashCode) +
    (createdOldestTime == null ? 0 : createdOldestTime!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (listSeparatorToken == null ? 0 : listSeparatorToken!.hashCode);

  @override
  String toString() => 'ExportOptions[outputFormat=$outputFormat, excludePreviouslyExported=$excludePreviouslyExported, createdEarliestTime=$createdEarliestTime, createdOldestTime=$createdOldestTime, filter=$filter, listSeparatorToken=$listSeparatorToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'outputFormat'] = this.outputFormat;
    if (this.excludePreviouslyExported != null) {
      json[r'excludePreviouslyExported'] = this.excludePreviouslyExported;
    } else {
      json[r'excludePreviouslyExported'] = null;
    }
    if (this.createdEarliestTime != null) {
      json[r'createdEarliestTime'] = this.createdEarliestTime!.toUtc().toIso8601String();
    } else {
      json[r'createdEarliestTime'] = null;
    }
    if (this.createdOldestTime != null) {
      json[r'createdOldestTime'] = this.createdOldestTime!.toUtc().toIso8601String();
    } else {
      json[r'createdOldestTime'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.listSeparatorToken != null) {
      json[r'listSeparatorToken'] = this.listSeparatorToken;
    } else {
      json[r'listSeparatorToken'] = null;
    }
    return json;
  }

  /// Returns a new [ExportOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportOptions(
        outputFormat: ExportOptionsOutputFormatEnum.fromJson(json[r'outputFormat'])!,
        excludePreviouslyExported: mapValueOfType<bool>(json, r'excludePreviouslyExported'),
        createdEarliestTime: mapDateTime(json, r'createdEarliestTime', ''),
        createdOldestTime: mapDateTime(json, r'createdOldestTime', ''),
        filter: mapValueOfType<String>(json, r'filter'),
        listSeparatorToken: mapValueOfType<String>(json, r'listSeparatorToken'),
      );
    }
    return null;
  }

  static List<ExportOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportOptions> mapFromJson(dynamic json) {
    final map = <String, ExportOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportOptions-objects as value to a dart map
  static Map<String, List<ExportOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'outputFormat',
  };
}


class ExportOptionsOutputFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportOptionsOutputFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEFAULT = ExportOptionsOutputFormatEnum._(r'CSV_DEFAULT');
  static const EXCEL = ExportOptionsOutputFormatEnum._(r'CSV_EXCEL');

  /// List of all possible values in this [enum][ExportOptionsOutputFormatEnum].
  static const values = <ExportOptionsOutputFormatEnum>[
    DEFAULT,
    EXCEL,
  ];

  static ExportOptionsOutputFormatEnum? fromJson(dynamic value) => ExportOptionsOutputFormatEnumTypeTransformer().decode(value);

  static List<ExportOptionsOutputFormatEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportOptionsOutputFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportOptionsOutputFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportOptionsOutputFormatEnum] to String,
/// and [decode] dynamic data back to [ExportOptionsOutputFormatEnum].
class ExportOptionsOutputFormatEnumTypeTransformer {
  factory ExportOptionsOutputFormatEnumTypeTransformer() => _instance ??= const ExportOptionsOutputFormatEnumTypeTransformer._();

  const ExportOptionsOutputFormatEnumTypeTransformer._();

  String encode(ExportOptionsOutputFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportOptionsOutputFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportOptionsOutputFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CSV_DEFAULT': return ExportOptionsOutputFormatEnum.DEFAULT;
        case r'CSV_EXCEL': return ExportOptionsOutputFormatEnum.EXCEL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportOptionsOutputFormatEnumTypeTransformer] instance.
  static ExportOptionsOutputFormatEnumTypeTransformer? _instance;
}


