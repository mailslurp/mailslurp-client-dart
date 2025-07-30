//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformMappingDto {
  /// Returns a new [AITransformMappingDto] instance.
  AITransformMappingDto({
    required this.id,
    required this.aiTransformId,
    required this.userId,
    this.name,
    this.entityId,
    required this.entityType,
    required this.createdAt,
  });

  String id;

  String aiTransformId;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  AITransformMappingDtoEntityTypeEnum entityType;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformMappingDto &&
     other.id == id &&
     other.aiTransformId == aiTransformId &&
     other.userId == userId &&
     other.name == name &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (aiTransformId.hashCode) +
    (userId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AITransformMappingDto[id=$id, aiTransformId=$aiTransformId, userId=$userId, name=$name, entityId=$entityId, entityType=$entityType, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'aiTransformId'] = this.aiTransformId;
      json[r'userId'] = this.userId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
      json[r'entityType'] = this.entityType;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AITransformMappingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformMappingDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformMappingDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformMappingDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformMappingDto(
        id: mapValueOfType<String>(json, r'id')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        name: mapValueOfType<String>(json, r'name'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: AITransformMappingDtoEntityTypeEnum.fromJson(json[r'entityType'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<AITransformMappingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformMappingDto> mapFromJson(dynamic json) {
    final map = <String, AITransformMappingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformMappingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformMappingDto-objects as value to a dart map
  static Map<String, List<AITransformMappingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformMappingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformMappingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'aiTransformId',
    'userId',
    'entityType',
    'createdAt',
  };
}


class AITransformMappingDtoEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformMappingDtoEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = AITransformMappingDtoEntityTypeEnum._(r'INBOX');
  static const PHONE = AITransformMappingDtoEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][AITransformMappingDtoEntityTypeEnum].
  static const values = <AITransformMappingDtoEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static AITransformMappingDtoEntityTypeEnum? fromJson(dynamic value) => AITransformMappingDtoEntityTypeEnumTypeTransformer().decode(value);

  static List<AITransformMappingDtoEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingDtoEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingDtoEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformMappingDtoEntityTypeEnum] to String,
/// and [decode] dynamic data back to [AITransformMappingDtoEntityTypeEnum].
class AITransformMappingDtoEntityTypeEnumTypeTransformer {
  factory AITransformMappingDtoEntityTypeEnumTypeTransformer() => _instance ??= const AITransformMappingDtoEntityTypeEnumTypeTransformer._();

  const AITransformMappingDtoEntityTypeEnumTypeTransformer._();

  String encode(AITransformMappingDtoEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformMappingDtoEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformMappingDtoEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return AITransformMappingDtoEntityTypeEnum.INBOX;
        case r'PHONE': return AITransformMappingDtoEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformMappingDtoEntityTypeEnumTypeTransformer] instance.
  static AITransformMappingDtoEntityTypeEnumTypeTransformer? _instance;
}


