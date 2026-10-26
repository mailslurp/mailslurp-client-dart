//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRetentionPolicyRunDto {
  /// Returns a new [InboxRetentionPolicyRunDto] instance.
  InboxRetentionPolicyRunDto({
    required this.id,
    required this.status,
    required this.source_,
    required this.matchedPolicies,
    required this.appliedPolicies,
    this.errorMessage,
    this.startedAt,
    this.completedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  InboxRetentionPolicyRunDtoStatusEnum status;

  InboxRetentionPolicyRunDtoSource_Enum source_;

  int matchedPolicies;

  int appliedPolicies;

  String? errorMessage;

  DateTime? startedAt;

  DateTime? completedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRetentionPolicyRunDto &&
     other.id == id &&
     other.status == status &&
     other.source_ == source_ &&
     other.matchedPolicies == matchedPolicies &&
     other.appliedPolicies == appliedPolicies &&
     other.errorMessage == errorMessage &&
     other.startedAt == startedAt &&
     other.completedAt == completedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status.hashCode) +
    (source_.hashCode) +
    (matchedPolicies.hashCode) +
    (appliedPolicies.hashCode) +
    (errorMessage == null ? 0 : errorMessage!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'InboxRetentionPolicyRunDto[id=$id, status=$status, source_=$source_, matchedPolicies=$matchedPolicies, appliedPolicies=$appliedPolicies, errorMessage=$errorMessage, startedAt=$startedAt, completedAt=$completedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'status'] = this.status;
      json[r'source'] = this.source_;
      json[r'matchedPolicies'] = this.matchedPolicies;
      json[r'appliedPolicies'] = this.appliedPolicies;
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxRetentionPolicyRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRetentionPolicyRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRetentionPolicyRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRetentionPolicyRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRetentionPolicyRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        status: InboxRetentionPolicyRunDtoStatusEnum.fromJson(json[r'status'])!,
        source_: InboxRetentionPolicyRunDtoSource_Enum.fromJson(json[r'source'])!,
        matchedPolicies: mapValueOfType<int>(json, r'matchedPolicies')!,
        appliedPolicies: mapValueOfType<int>(json, r'appliedPolicies')!,
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
        startedAt: mapDateTime(json, r'startedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<InboxRetentionPolicyRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRetentionPolicyRunDto> mapFromJson(dynamic json) {
    final map = <String, InboxRetentionPolicyRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRetentionPolicyRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRetentionPolicyRunDto-objects as value to a dart map
  static Map<String, List<InboxRetentionPolicyRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRetentionPolicyRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRetentionPolicyRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
    'source',
    'matchedPolicies',
    'appliedPolicies',
    'createdAt',
    'updatedAt',
  };
}


class InboxRetentionPolicyRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRetentionPolicyRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUBMITTED = InboxRetentionPolicyRunDtoStatusEnum._(r'SUBMITTED');
  static const RUNNING = InboxRetentionPolicyRunDtoStatusEnum._(r'RUNNING');
  static const COMPLETED = InboxRetentionPolicyRunDtoStatusEnum._(r'COMPLETED');
  static const FAILED = InboxRetentionPolicyRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][InboxRetentionPolicyRunDtoStatusEnum].
  static const values = <InboxRetentionPolicyRunDtoStatusEnum>[
    SUBMITTED,
    RUNNING,
    COMPLETED,
    FAILED,
  ];

  static InboxRetentionPolicyRunDtoStatusEnum? fromJson(dynamic value) => InboxRetentionPolicyRunDtoStatusEnumTypeTransformer().decode(value);

  static List<InboxRetentionPolicyRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRetentionPolicyRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [InboxRetentionPolicyRunDtoStatusEnum].
class InboxRetentionPolicyRunDtoStatusEnumTypeTransformer {
  factory InboxRetentionPolicyRunDtoStatusEnumTypeTransformer() => _instance ??= const InboxRetentionPolicyRunDtoStatusEnumTypeTransformer._();

  const InboxRetentionPolicyRunDtoStatusEnumTypeTransformer._();

  String encode(InboxRetentionPolicyRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRetentionPolicyRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRetentionPolicyRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUBMITTED': return InboxRetentionPolicyRunDtoStatusEnum.SUBMITTED;
        case r'RUNNING': return InboxRetentionPolicyRunDtoStatusEnum.RUNNING;
        case r'COMPLETED': return InboxRetentionPolicyRunDtoStatusEnum.COMPLETED;
        case r'FAILED': return InboxRetentionPolicyRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRetentionPolicyRunDtoStatusEnumTypeTransformer] instance.
  static InboxRetentionPolicyRunDtoStatusEnumTypeTransformer? _instance;
}



class InboxRetentionPolicyRunDtoSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const InboxRetentionPolicyRunDtoSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const USER_API = InboxRetentionPolicyRunDtoSource_Enum._(r'USER_API');

  /// List of all possible values in this [enum][InboxRetentionPolicyRunDtoSource_Enum].
  static const values = <InboxRetentionPolicyRunDtoSource_Enum>[
    USER_API,
  ];

  static InboxRetentionPolicyRunDtoSource_Enum? fromJson(dynamic value) => InboxRetentionPolicyRunDtoSource_EnumTypeTransformer().decode(value);

  static List<InboxRetentionPolicyRunDtoSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyRunDtoSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyRunDtoSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRetentionPolicyRunDtoSource_Enum] to String,
/// and [decode] dynamic data back to [InboxRetentionPolicyRunDtoSource_Enum].
class InboxRetentionPolicyRunDtoSource_EnumTypeTransformer {
  factory InboxRetentionPolicyRunDtoSource_EnumTypeTransformer() => _instance ??= const InboxRetentionPolicyRunDtoSource_EnumTypeTransformer._();

  const InboxRetentionPolicyRunDtoSource_EnumTypeTransformer._();

  String encode(InboxRetentionPolicyRunDtoSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRetentionPolicyRunDtoSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRetentionPolicyRunDtoSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'USER_API': return InboxRetentionPolicyRunDtoSource_Enum.USER_API;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRetentionPolicyRunDtoSource_EnumTypeTransformer] instance.
  static InboxRetentionPolicyRunDtoSource_EnumTypeTransformer? _instance;
}


