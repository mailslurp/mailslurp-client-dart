//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportOptions {
  /// Returns a new [ExportOptions] instance.
  ExportOptions({
    @required this.outputFormat,
    this.excludePreviouslyExported,
    this.createdEarliestTime,
    this.createdOldestTime,
    this.filter,
    this.listSeparatorToken,
  });

  ExportOptionsOutputFormatEnum outputFormat;

  bool excludePreviouslyExported;

  DateTime createdEarliestTime;

  DateTime createdOldestTime;

  String filter;

  Object listSeparatorToken;

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
    (outputFormat == null ? 0 : outputFormat.hashCode) +
    (excludePreviouslyExported == null ? 0 : excludePreviouslyExported.hashCode) +
    (createdEarliestTime == null ? 0 : createdEarliestTime.hashCode) +
    (createdOldestTime == null ? 0 : createdOldestTime.hashCode) +
    (filter == null ? 0 : filter.hashCode) +
    (listSeparatorToken == null ? 0 : listSeparatorToken.hashCode);

  @override
  String toString() => 'ExportOptions[outputFormat=$outputFormat, excludePreviouslyExported=$excludePreviouslyExported, createdEarliestTime=$createdEarliestTime, createdOldestTime=$createdOldestTime, filter=$filter, listSeparatorToken=$listSeparatorToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'outputFormat'] = outputFormat;
    if (excludePreviouslyExported != null) {
      json[r'excludePreviouslyExported'] = excludePreviouslyExported;
    }
    if (createdEarliestTime != null) {
      json[r'createdEarliestTime'] = createdEarliestTime.toUtc().toIso8601String();
    }
    if (createdOldestTime != null) {
      json[r'createdOldestTime'] = createdOldestTime.toUtc().toIso8601String();
    }
    if (filter != null) {
      json[r'filter'] = filter;
    }
    if (listSeparatorToken != null) {
      json[r'listSeparatorToken'] = listSeparatorToken;
    }
    return json;
  }

  /// Returns a new [ExportOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExportOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExportOptions(
        outputFormat: ExportOptionsOutputFormatEnum.fromJson(json[r'outputFormat']),
        excludePreviouslyExported: json[r'excludePreviouslyExported'],
        createdEarliestTime: json[r'createdEarliestTime'] == null
          ? null
          : DateTime.parse(json[r'createdEarliestTime']),
        createdOldestTime: json[r'createdOldestTime'] == null
          ? null
          : DateTime.parse(json[r'createdOldestTime']),
        filter: json[r'filter'],
        listSeparatorToken: json[r'listSeparatorToken'],
    );

  static List<ExportOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExportOptions>[]
      : json.map((v) => ExportOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExportOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExportOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExportOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExportOptions-objects as value to a dart map
  static Map<String, List<ExportOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExportOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExportOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static ExportOptionsOutputFormatEnum fromJson(dynamic value) =>
    ExportOptionsOutputFormatEnumTypeTransformer().decode(value);

  static List<ExportOptionsOutputFormatEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExportOptionsOutputFormatEnum>[]
      : json
          .map((value) => ExportOptionsOutputFormatEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ExportOptionsOutputFormatEnum] to String,
/// and [decode] dynamic data back to [ExportOptionsOutputFormatEnum].
class ExportOptionsOutputFormatEnumTypeTransformer {
  const ExportOptionsOutputFormatEnumTypeTransformer._();

  factory ExportOptionsOutputFormatEnumTypeTransformer() => _instance ??= ExportOptionsOutputFormatEnumTypeTransformer._();

  String encode(ExportOptionsOutputFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportOptionsOutputFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportOptionsOutputFormatEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'CSV_DEFAULT': return ExportOptionsOutputFormatEnum.DEFAULT;
      case r'CSV_EXCEL': return ExportOptionsOutputFormatEnum.EXCEL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportOptionsOutputFormatEnumTypeTransformer] instance.
  static ExportOptionsOutputFormatEnumTypeTransformer _instance;
}

