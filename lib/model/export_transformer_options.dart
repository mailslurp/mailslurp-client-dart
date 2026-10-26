//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportTransformerOptions {
  /// Returns a new [ExportTransformerOptions] instance.
  ExportTransformerOptions({
    this.aiTransformId,
    this.aiMappingId,
    required this.flattenArrays,
    this.since,
    this.before,
    required this.format,
    this.inboxId,
    this.phoneId,
    this.emailId,
    this.smsId,
    this.attachmentId,
    required this.includeMetaData,
    this.delimiter,
    this.arraySeparator,
    this.includeMetaDataColumns = const [],
  });

  String? aiTransformId;

  String? aiMappingId;

  bool flattenArrays;

  DateTime? since;

  DateTime? before;

  ExportTransformerOptionsFormatEnum format;

  String? inboxId;

  String? phoneId;

  String? emailId;

  String? smsId;

  String? attachmentId;

  bool includeMetaData;

  String? delimiter;

  String? arraySeparator;

  List<String>? includeMetaDataColumns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportTransformerOptions &&
     other.aiTransformId == aiTransformId &&
     other.aiMappingId == aiMappingId &&
     other.flattenArrays == flattenArrays &&
     other.since == since &&
     other.before == before &&
     other.format == format &&
     other.inboxId == inboxId &&
     other.phoneId == phoneId &&
     other.emailId == emailId &&
     other.smsId == smsId &&
     other.attachmentId == attachmentId &&
     other.includeMetaData == includeMetaData &&
     other.delimiter == delimiter &&
     other.arraySeparator == arraySeparator &&
     other.includeMetaDataColumns == includeMetaDataColumns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aiTransformId == null ? 0 : aiTransformId!.hashCode) +
    (aiMappingId == null ? 0 : aiMappingId!.hashCode) +
    (flattenArrays.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (format.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (smsId == null ? 0 : smsId!.hashCode) +
    (attachmentId == null ? 0 : attachmentId!.hashCode) +
    (includeMetaData.hashCode) +
    (delimiter == null ? 0 : delimiter!.hashCode) +
    (arraySeparator == null ? 0 : arraySeparator!.hashCode) +
    (includeMetaDataColumns == null ? 0 : includeMetaDataColumns!.hashCode);

  @override
  String toString() => 'ExportTransformerOptions[aiTransformId=$aiTransformId, aiMappingId=$aiMappingId, flattenArrays=$flattenArrays, since=$since, before=$before, format=$format, inboxId=$inboxId, phoneId=$phoneId, emailId=$emailId, smsId=$smsId, attachmentId=$attachmentId, includeMetaData=$includeMetaData, delimiter=$delimiter, arraySeparator=$arraySeparator, includeMetaDataColumns=$includeMetaDataColumns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aiTransformId != null) {
      json[r'aiTransformId'] = this.aiTransformId;
    } else {
      json[r'aiTransformId'] = null;
    }
    if (this.aiMappingId != null) {
      json[r'aiMappingId'] = this.aiMappingId;
    } else {
      json[r'aiMappingId'] = null;
    }
      json[r'flattenArrays'] = this.flattenArrays;
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
      json[r'format'] = this.format;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.phoneId != null) {
      json[r'phoneId'] = this.phoneId;
    } else {
      json[r'phoneId'] = null;
    }
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    if (this.smsId != null) {
      json[r'smsId'] = this.smsId;
    } else {
      json[r'smsId'] = null;
    }
    if (this.attachmentId != null) {
      json[r'attachmentId'] = this.attachmentId;
    } else {
      json[r'attachmentId'] = null;
    }
      json[r'includeMetaData'] = this.includeMetaData;
    if (this.delimiter != null) {
      json[r'delimiter'] = this.delimiter;
    } else {
      json[r'delimiter'] = null;
    }
    if (this.arraySeparator != null) {
      json[r'arraySeparator'] = this.arraySeparator;
    } else {
      json[r'arraySeparator'] = null;
    }
    if (this.includeMetaDataColumns != null) {
      json[r'includeMetaDataColumns'] = this.includeMetaDataColumns;
    } else {
      json[r'includeMetaDataColumns'] = null;
    }
    return json;
  }

  /// Returns a new [ExportTransformerOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportTransformerOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportTransformerOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportTransformerOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportTransformerOptions(
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId'),
        aiMappingId: mapValueOfType<String>(json, r'aiMappingId'),
        flattenArrays: mapValueOfType<bool>(json, r'flattenArrays')!,
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
        format: ExportTransformerOptionsFormatEnum.fromJson(json[r'format'])!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        smsId: mapValueOfType<String>(json, r'smsId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        includeMetaData: mapValueOfType<bool>(json, r'includeMetaData')!,
        delimiter: mapValueOfType<String>(json, r'delimiter'),
        arraySeparator: mapValueOfType<String>(json, r'arraySeparator'),
        includeMetaDataColumns: json[r'includeMetaDataColumns'] is List
            ? (json[r'includeMetaDataColumns'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ExportTransformerOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportTransformerOptions> mapFromJson(dynamic json) {
    final map = <String, ExportTransformerOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportTransformerOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportTransformerOptions-objects as value to a dart map
  static Map<String, List<ExportTransformerOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportTransformerOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportTransformerOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'flattenArrays',
    'format',
    'includeMetaData',
  };
}


class ExportTransformerOptionsFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportTransformerOptionsFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CSV = ExportTransformerOptionsFormatEnum._(r'CSV');
  static const EXCEL = ExportTransformerOptionsFormatEnum._(r'EXCEL');
  static const XML = ExportTransformerOptionsFormatEnum._(r'XML');
  static const JSON = ExportTransformerOptionsFormatEnum._(r'JSON');

  /// List of all possible values in this [enum][ExportTransformerOptionsFormatEnum].
  static const values = <ExportTransformerOptionsFormatEnum>[
    CSV,
    EXCEL,
    XML,
    JSON,
  ];

  static ExportTransformerOptionsFormatEnum? fromJson(dynamic value) => ExportTransformerOptionsFormatEnumTypeTransformer().decode(value);

  static List<ExportTransformerOptionsFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerOptionsFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerOptionsFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportTransformerOptionsFormatEnum] to String,
/// and [decode] dynamic data back to [ExportTransformerOptionsFormatEnum].
class ExportTransformerOptionsFormatEnumTypeTransformer {
  factory ExportTransformerOptionsFormatEnumTypeTransformer() => _instance ??= const ExportTransformerOptionsFormatEnumTypeTransformer._();

  const ExportTransformerOptionsFormatEnumTypeTransformer._();

  String encode(ExportTransformerOptionsFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportTransformerOptionsFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportTransformerOptionsFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CSV': return ExportTransformerOptionsFormatEnum.CSV;
        case r'EXCEL': return ExportTransformerOptionsFormatEnum.EXCEL;
        case r'XML': return ExportTransformerOptionsFormatEnum.XML;
        case r'JSON': return ExportTransformerOptionsFormatEnum.JSON;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportTransformerOptionsFormatEnumTypeTransformer] instance.
  static ExportTransformerOptionsFormatEnumTypeTransformer? _instance;
}


