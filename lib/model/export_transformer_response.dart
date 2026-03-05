//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExportTransformerResponse {
  /// Returns a new [ExportTransformerResponse] instance.
  ExportTransformerResponse({
    required this.jobId,
    required this.status,
  });

  String jobId;

  ExportTransformerResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportTransformerResponse &&
     other.jobId == jobId &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ExportTransformerResponse[jobId=$jobId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jobId'] = this.jobId;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ExportTransformerResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportTransformerResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportTransformerResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportTransformerResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportTransformerResponse(
        jobId: mapValueOfType<String>(json, r'jobId')!,
        status: ExportTransformerResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<ExportTransformerResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportTransformerResponse> mapFromJson(dynamic json) {
    final map = <String, ExportTransformerResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportTransformerResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportTransformerResponse-objects as value to a dart map
  static Map<String, List<ExportTransformerResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportTransformerResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportTransformerResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jobId',
    'status',
  };
}


class ExportTransformerResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportTransformerResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = ExportTransformerResponseStatusEnum._(r'PENDING');
  static const IN_PROGRESS = ExportTransformerResponseStatusEnum._(r'IN_PROGRESS');
  static const ERROR = ExportTransformerResponseStatusEnum._(r'ERROR');
  static const SUCCESS = ExportTransformerResponseStatusEnum._(r'SUCCESS');

  /// List of all possible values in this [enum][ExportTransformerResponseStatusEnum].
  static const values = <ExportTransformerResponseStatusEnum>[
    PENDING,
    IN_PROGRESS,
    ERROR,
    SUCCESS,
  ];

  static ExportTransformerResponseStatusEnum? fromJson(dynamic value) => ExportTransformerResponseStatusEnumTypeTransformer().decode(value);

  static List<ExportTransformerResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportTransformerResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportTransformerResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportTransformerResponseStatusEnum] to String,
/// and [decode] dynamic data back to [ExportTransformerResponseStatusEnum].
class ExportTransformerResponseStatusEnumTypeTransformer {
  factory ExportTransformerResponseStatusEnumTypeTransformer() => _instance ??= const ExportTransformerResponseStatusEnumTypeTransformer._();

  const ExportTransformerResponseStatusEnumTypeTransformer._();

  String encode(ExportTransformerResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportTransformerResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportTransformerResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return ExportTransformerResponseStatusEnum.PENDING;
        case r'IN_PROGRESS': return ExportTransformerResponseStatusEnum.IN_PROGRESS;
        case r'ERROR': return ExportTransformerResponseStatusEnum.ERROR;
        case r'SUCCESS': return ExportTransformerResponseStatusEnum.SUCCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportTransformerResponseStatusEnumTypeTransformer] instance.
  static ExportTransformerResponseStatusEnumTypeTransformer? _instance;
}


