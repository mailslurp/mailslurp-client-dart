//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformResultProjectionDto {
  /// Returns a new [AITransformResultProjectionDto] instance.
  AITransformResultProjectionDto({
    required this.id,
    required this.aiTransformId,
    this.aiTransformMappingId,
    required this.userId,
    this.value,
    this.entityId,
    this.entityType,
    required this.createdAt,
  });

  String id;

  String aiTransformId;

  String? aiTransformMappingId;

  String userId;

  Object? value;

  String? entityId;

  AITransformResultProjectionDtoEntityTypeEnum? entityType;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformResultProjectionDto &&
     other.id == id &&
     other.aiTransformId == aiTransformId &&
     other.aiTransformMappingId == aiTransformMappingId &&
     other.userId == userId &&
     other.value == value &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (aiTransformId.hashCode) +
    (aiTransformMappingId == null ? 0 : aiTransformMappingId!.hashCode) +
    (userId.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AITransformResultProjectionDto[id=$id, aiTransformId=$aiTransformId, aiTransformMappingId=$aiTransformMappingId, userId=$userId, value=$value, entityId=$entityId, entityType=$entityType, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'aiTransformId'] = this.aiTransformId;
    if (this.aiTransformMappingId != null) {
      json[r'aiTransformMappingId'] = this.aiTransformMappingId;
    } else {
      json[r'aiTransformMappingId'] = null;
    }
      json[r'userId'] = this.userId;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AITransformResultProjectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformResultProjectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformResultProjectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformResultProjectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformResultProjectionDto(
        id: mapValueOfType<String>(json, r'id')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        aiTransformMappingId: mapValueOfType<String>(json, r'aiTransformMappingId'),
        userId: mapValueOfType<String>(json, r'userId')!,
        value: mapValueOfType<Object>(json, r'value'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: AITransformResultProjectionDtoEntityTypeEnum.fromJson(json[r'entityType']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<AITransformResultProjectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultProjectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultProjectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformResultProjectionDto> mapFromJson(dynamic json) {
    final map = <String, AITransformResultProjectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformResultProjectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformResultProjectionDto-objects as value to a dart map
  static Map<String, List<AITransformResultProjectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformResultProjectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformResultProjectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'aiTransformId',
    'userId',
    'createdAt',
  };
}


class AITransformResultProjectionDtoEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformResultProjectionDtoEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = AITransformResultProjectionDtoEntityTypeEnum._(r'INBOX');
  static const PHONE = AITransformResultProjectionDtoEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][AITransformResultProjectionDtoEntityTypeEnum].
  static const values = <AITransformResultProjectionDtoEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static AITransformResultProjectionDtoEntityTypeEnum? fromJson(dynamic value) => AITransformResultProjectionDtoEntityTypeEnumTypeTransformer().decode(value);

  static List<AITransformResultProjectionDtoEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultProjectionDtoEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultProjectionDtoEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformResultProjectionDtoEntityTypeEnum] to String,
/// and [decode] dynamic data back to [AITransformResultProjectionDtoEntityTypeEnum].
class AITransformResultProjectionDtoEntityTypeEnumTypeTransformer {
  factory AITransformResultProjectionDtoEntityTypeEnumTypeTransformer() => _instance ??= const AITransformResultProjectionDtoEntityTypeEnumTypeTransformer._();

  const AITransformResultProjectionDtoEntityTypeEnumTypeTransformer._();

  String encode(AITransformResultProjectionDtoEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformResultProjectionDtoEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformResultProjectionDtoEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return AITransformResultProjectionDtoEntityTypeEnum.INBOX;
        case r'PHONE': return AITransformResultProjectionDtoEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformResultProjectionDtoEntityTypeEnumTypeTransformer] instance.
  static AITransformResultProjectionDtoEntityTypeEnumTypeTransformer? _instance;
}


