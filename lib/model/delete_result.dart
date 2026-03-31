//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteResult {
  /// Returns a new [DeleteResult] instance.
  DeleteResult({
    required this.status,
  });

  DeleteResultStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteResult &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'DeleteResult[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [DeleteResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteResult(
        status: DeleteResultStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<DeleteResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteResult> mapFromJson(dynamic json) {
    final map = <String, DeleteResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteResult-objects as value to a dart map
  static Map<String, List<DeleteResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}


class DeleteResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DeleteResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = DeleteResultStatusEnum._(r'SUCCESS');

  /// List of all possible values in this [enum][DeleteResultStatusEnum].
  static const values = <DeleteResultStatusEnum>[
    SUCCESS,
  ];

  static DeleteResultStatusEnum? fromJson(dynamic value) => DeleteResultStatusEnumTypeTransformer().decode(value);

  static List<DeleteResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeleteResultStatusEnum] to String,
/// and [decode] dynamic data back to [DeleteResultStatusEnum].
class DeleteResultStatusEnumTypeTransformer {
  factory DeleteResultStatusEnumTypeTransformer() => _instance ??= const DeleteResultStatusEnumTypeTransformer._();

  const DeleteResultStatusEnumTypeTransformer._();

  String encode(DeleteResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeleteResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeleteResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return DeleteResultStatusEnum.SUCCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeleteResultStatusEnumTypeTransformer] instance.
  static DeleteResultStatusEnumTypeTransformer? _instance;
}


