//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportTransformerResultJobDto {
  /// Returns a new [ExportTransformerResultJobDto] instance.
  ExportTransformerResultJobDto({
    required this.id,
    required this.status,
    required this.format,
    this.fileName,
    this.downloadUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  ExportTransformerResultJobDtoStatusEnum status;

  ExportTransformerResultJobDtoFormatEnum format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? downloadUrl;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportTransformerResultJobDto &&
     other.id == id &&
     other.status == status &&
     other.format == format &&
     other.fileName == fileName &&
     other.downloadUrl == downloadUrl &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status.hashCode) +
    (format.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode) +
    (downloadUrl == null ? 0 : downloadUrl!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ExportTransformerResultJobDto[id=$id, status=$status, format=$format, fileName=$fileName, downloadUrl=$downloadUrl, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'status'] = this.status;
      json[r'format'] = this.format;
    if (this.fileName != null) {
      json[r'fileName'] = this.fileName;
    } else {
      json[r'fileName'] = null;
    }
    if (this.downloadUrl != null) {
      json[r'downloadUrl'] = this.downloadUrl;
    } else {
      json[r'downloadUrl'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ExportTransformerResultJobDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportTransformerResultJobDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportTransformerResultJobDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportTransformerResultJobDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportTransformerResultJobDto(
        id: mapValueOfType<String>(json, r'id')!,
        status: ExportTransformerResultJobDtoStatusEnum.fromJson(json[r'status'])!,
        format: ExportTransformerResultJobDtoFormatEnum.fromJson(json[r'format'])!,
        fileName: mapValueOfType<String>(json, r'fileName'),
        downloadUrl: mapValueOfType<String>(json, r'downloadUrl'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<ExportTransformerResultJobDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerResultJobDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerResultJobDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportTransformerResultJobDto> mapFromJson(dynamic json) {
    final map = <String, ExportTransformerResultJobDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportTransformerResultJobDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportTransformerResultJobDto-objects as value to a dart map
  static Map<String, List<ExportTransformerResultJobDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportTransformerResultJobDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportTransformerResultJobDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
    'format',
    'createdAt',
    'updatedAt',
  };
}


class ExportTransformerResultJobDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportTransformerResultJobDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = ExportTransformerResultJobDtoStatusEnum._(r'PENDING');
  static const IN_PROGRESS = ExportTransformerResultJobDtoStatusEnum._(r'IN_PROGRESS');
  static const ERROR = ExportTransformerResultJobDtoStatusEnum._(r'ERROR');
  static const SUCCESS = ExportTransformerResultJobDtoStatusEnum._(r'SUCCESS');

  /// List of all possible values in this [enum][ExportTransformerResultJobDtoStatusEnum].
  static const values = <ExportTransformerResultJobDtoStatusEnum>[
    PENDING,
    IN_PROGRESS,
    ERROR,
    SUCCESS,
  ];

  static ExportTransformerResultJobDtoStatusEnum? fromJson(dynamic value) => ExportTransformerResultJobDtoStatusEnumTypeTransformer().decode(value);

  static List<ExportTransformerResultJobDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerResultJobDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerResultJobDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportTransformerResultJobDtoStatusEnum] to String,
/// and [decode] dynamic data back to [ExportTransformerResultJobDtoStatusEnum].
class ExportTransformerResultJobDtoStatusEnumTypeTransformer {
  factory ExportTransformerResultJobDtoStatusEnumTypeTransformer() => _instance ??= const ExportTransformerResultJobDtoStatusEnumTypeTransformer._();

  const ExportTransformerResultJobDtoStatusEnumTypeTransformer._();

  String encode(ExportTransformerResultJobDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportTransformerResultJobDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportTransformerResultJobDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return ExportTransformerResultJobDtoStatusEnum.PENDING;
        case r'IN_PROGRESS': return ExportTransformerResultJobDtoStatusEnum.IN_PROGRESS;
        case r'ERROR': return ExportTransformerResultJobDtoStatusEnum.ERROR;
        case r'SUCCESS': return ExportTransformerResultJobDtoStatusEnum.SUCCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportTransformerResultJobDtoStatusEnumTypeTransformer] instance.
  static ExportTransformerResultJobDtoStatusEnumTypeTransformer? _instance;
}



class ExportTransformerResultJobDtoFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportTransformerResultJobDtoFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CSV = ExportTransformerResultJobDtoFormatEnum._(r'CSV');
  static const EXCEL = ExportTransformerResultJobDtoFormatEnum._(r'EXCEL');
  static const XML = ExportTransformerResultJobDtoFormatEnum._(r'XML');
  static const JSON = ExportTransformerResultJobDtoFormatEnum._(r'JSON');

  /// List of all possible values in this [enum][ExportTransformerResultJobDtoFormatEnum].
  static const values = <ExportTransformerResultJobDtoFormatEnum>[
    CSV,
    EXCEL,
    XML,
    JSON,
  ];

  static ExportTransformerResultJobDtoFormatEnum? fromJson(dynamic value) => ExportTransformerResultJobDtoFormatEnumTypeTransformer().decode(value);

  static List<ExportTransformerResultJobDtoFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerResultJobDtoFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerResultJobDtoFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportTransformerResultJobDtoFormatEnum] to String,
/// and [decode] dynamic data back to [ExportTransformerResultJobDtoFormatEnum].
class ExportTransformerResultJobDtoFormatEnumTypeTransformer {
  factory ExportTransformerResultJobDtoFormatEnumTypeTransformer() => _instance ??= const ExportTransformerResultJobDtoFormatEnumTypeTransformer._();

  const ExportTransformerResultJobDtoFormatEnumTypeTransformer._();

  String encode(ExportTransformerResultJobDtoFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportTransformerResultJobDtoFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportTransformerResultJobDtoFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CSV': return ExportTransformerResultJobDtoFormatEnum.CSV;
        case r'EXCEL': return ExportTransformerResultJobDtoFormatEnum.EXCEL;
        case r'XML': return ExportTransformerResultJobDtoFormatEnum.XML;
        case r'JSON': return ExportTransformerResultJobDtoFormatEnum.JSON;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportTransformerResultJobDtoFormatEnumTypeTransformer] instance.
  static ExportTransformerResultJobDtoFormatEnumTypeTransformer? _instance;
}


