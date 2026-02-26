//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformResultDto {
  /// Returns a new [AITransformResultDto] instance.
  AITransformResultDto({
    required this.id,
    required this.userId,
    required this.aiTransformId,
    this.aiTransformMappingId,
    this.value,
    this.entityId,
    this.entityType,
    this.columns = const [],
    this.emailId,
    this.smsId,
    this.attachmentId,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String aiTransformId;

  String? aiTransformMappingId;

  Object? value;

  String? entityId;

  AITransformResultDtoEntityTypeEnum? entityType;

  List<String>? columns;

  String? emailId;

  String? smsId;

  String? attachmentId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformResultDto &&
     other.id == id &&
     other.userId == userId &&
     other.aiTransformId == aiTransformId &&
     other.aiTransformMappingId == aiTransformMappingId &&
     other.value == value &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.columns == columns &&
     other.emailId == emailId &&
     other.smsId == smsId &&
     other.attachmentId == attachmentId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (aiTransformId.hashCode) +
    (aiTransformMappingId == null ? 0 : aiTransformMappingId!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (columns == null ? 0 : columns!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (smsId == null ? 0 : smsId!.hashCode) +
    (attachmentId == null ? 0 : attachmentId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AITransformResultDto[id=$id, userId=$userId, aiTransformId=$aiTransformId, aiTransformMappingId=$aiTransformMappingId, value=$value, entityId=$entityId, entityType=$entityType, columns=$columns, emailId=$emailId, smsId=$smsId, attachmentId=$attachmentId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'aiTransformId'] = this.aiTransformId;
    if (this.aiTransformMappingId != null) {
      json[r'aiTransformMappingId'] = this.aiTransformMappingId;
    } else {
      json[r'aiTransformMappingId'] = null;
    }
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
    if (this.columns != null) {
      json[r'columns'] = this.columns;
    } else {
      json[r'columns'] = null;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AITransformResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformResultDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        aiTransformMappingId: mapValueOfType<String>(json, r'aiTransformMappingId'),
        value: mapValueOfType<Object>(json, r'value'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: AITransformResultDtoEntityTypeEnum.fromJson(json[r'entityType']),
        columns: json[r'columns'] is List
            ? (json[r'columns'] as List).cast<String>()
            : const [],
        emailId: mapValueOfType<String>(json, r'emailId'),
        smsId: mapValueOfType<String>(json, r'smsId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AITransformResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformResultDto> mapFromJson(dynamic json) {
    final map = <String, AITransformResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformResultDto-objects as value to a dart map
  static Map<String, List<AITransformResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'aiTransformId',
    'columns',
    'createdAt',
    'updatedAt',
  };
}


class AITransformResultDtoEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformResultDtoEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = AITransformResultDtoEntityTypeEnum._(r'INBOX');
  static const PHONE = AITransformResultDtoEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][AITransformResultDtoEntityTypeEnum].
  static const values = <AITransformResultDtoEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static AITransformResultDtoEntityTypeEnum? fromJson(dynamic value) => AITransformResultDtoEntityTypeEnumTypeTransformer().decode(value);

  static List<AITransformResultDtoEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultDtoEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultDtoEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformResultDtoEntityTypeEnum] to String,
/// and [decode] dynamic data back to [AITransformResultDtoEntityTypeEnum].
class AITransformResultDtoEntityTypeEnumTypeTransformer {
  factory AITransformResultDtoEntityTypeEnumTypeTransformer() => _instance ??= const AITransformResultDtoEntityTypeEnumTypeTransformer._();

  const AITransformResultDtoEntityTypeEnumTypeTransformer._();

  String encode(AITransformResultDtoEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformResultDtoEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformResultDtoEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return AITransformResultDtoEntityTypeEnum.INBOX;
        case r'PHONE': return AITransformResultDtoEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformResultDtoEntityTypeEnumTypeTransformer] instance.
  static AITransformResultDtoEntityTypeEnumTypeTransformer? _instance;
}


