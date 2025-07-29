//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformMappingProjection {
  /// Returns a new [AITransformMappingProjection] instance.
  AITransformMappingProjection({
    required this.userId,
    required this.createdAt,
    required this.aiTransformId,
    this.entityId,
    required this.entityType,
    this.contentSelector,
    this.triggerSelector,
    this.name,
    required this.id,
  });

  String userId;

  DateTime createdAt;

  String aiTransformId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  AITransformMappingProjectionEntityTypeEnum entityType;

  AITransformMappingProjectionContentSelectorEnum? contentSelector;

  AITransformMappingProjectionTriggerSelectorEnum? triggerSelector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformMappingProjection &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.aiTransformId == aiTransformId &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.contentSelector == contentSelector &&
     other.triggerSelector == triggerSelector &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (createdAt.hashCode) +
    (aiTransformId.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType.hashCode) +
    (contentSelector == null ? 0 : contentSelector!.hashCode) +
    (triggerSelector == null ? 0 : triggerSelector!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'AITransformMappingProjection[userId=$userId, createdAt=$createdAt, aiTransformId=$aiTransformId, entityId=$entityId, entityType=$entityType, contentSelector=$contentSelector, triggerSelector=$triggerSelector, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'aiTransformId'] = this.aiTransformId;
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
      json[r'entityType'] = this.entityType;
    if (this.contentSelector != null) {
      json[r'contentSelector'] = this.contentSelector;
    } else {
      json[r'contentSelector'] = null;
    }
    if (this.triggerSelector != null) {
      json[r'triggerSelector'] = this.triggerSelector;
    } else {
      json[r'triggerSelector'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [AITransformMappingProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformMappingProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformMappingProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformMappingProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformMappingProjection(
        userId: mapValueOfType<String>(json, r'userId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: AITransformMappingProjectionEntityTypeEnum.fromJson(json[r'entityType'])!,
        contentSelector: AITransformMappingProjectionContentSelectorEnum.fromJson(json[r'contentSelector']),
        triggerSelector: AITransformMappingProjectionTriggerSelectorEnum.fromJson(json[r'triggerSelector']),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<AITransformMappingProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformMappingProjection> mapFromJson(dynamic json) {
    final map = <String, AITransformMappingProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformMappingProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformMappingProjection-objects as value to a dart map
  static Map<String, List<AITransformMappingProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformMappingProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformMappingProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'createdAt',
    'aiTransformId',
    'entityType',
    'id',
  };
}


class AITransformMappingProjectionEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformMappingProjectionEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = AITransformMappingProjectionEntityTypeEnum._(r'INBOX');
  static const PHONE = AITransformMappingProjectionEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][AITransformMappingProjectionEntityTypeEnum].
  static const values = <AITransformMappingProjectionEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static AITransformMappingProjectionEntityTypeEnum? fromJson(dynamic value) => AITransformMappingProjectionEntityTypeEnumTypeTransformer().decode(value);

  static List<AITransformMappingProjectionEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingProjectionEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingProjectionEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformMappingProjectionEntityTypeEnum] to String,
/// and [decode] dynamic data back to [AITransformMappingProjectionEntityTypeEnum].
class AITransformMappingProjectionEntityTypeEnumTypeTransformer {
  factory AITransformMappingProjectionEntityTypeEnumTypeTransformer() => _instance ??= const AITransformMappingProjectionEntityTypeEnumTypeTransformer._();

  const AITransformMappingProjectionEntityTypeEnumTypeTransformer._();

  String encode(AITransformMappingProjectionEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformMappingProjectionEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformMappingProjectionEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return AITransformMappingProjectionEntityTypeEnum.INBOX;
        case r'PHONE': return AITransformMappingProjectionEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformMappingProjectionEntityTypeEnumTypeTransformer] instance.
  static AITransformMappingProjectionEntityTypeEnumTypeTransformer? _instance;
}



class AITransformMappingProjectionContentSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformMappingProjectionContentSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RAW = AITransformMappingProjectionContentSelectorEnum._(r'RAW');
  static const BODY = AITransformMappingProjectionContentSelectorEnum._(r'BODY');
  static const BODY_ATTACHMENTS = AITransformMappingProjectionContentSelectorEnum._(r'BODY_ATTACHMENTS');

  /// List of all possible values in this [enum][AITransformMappingProjectionContentSelectorEnum].
  static const values = <AITransformMappingProjectionContentSelectorEnum>[
    RAW,
    BODY,
    BODY_ATTACHMENTS,
  ];

  static AITransformMappingProjectionContentSelectorEnum? fromJson(dynamic value) => AITransformMappingProjectionContentSelectorEnumTypeTransformer().decode(value);

  static List<AITransformMappingProjectionContentSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingProjectionContentSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingProjectionContentSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformMappingProjectionContentSelectorEnum] to String,
/// and [decode] dynamic data back to [AITransformMappingProjectionContentSelectorEnum].
class AITransformMappingProjectionContentSelectorEnumTypeTransformer {
  factory AITransformMappingProjectionContentSelectorEnumTypeTransformer() => _instance ??= const AITransformMappingProjectionContentSelectorEnumTypeTransformer._();

  const AITransformMappingProjectionContentSelectorEnumTypeTransformer._();

  String encode(AITransformMappingProjectionContentSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformMappingProjectionContentSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformMappingProjectionContentSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RAW': return AITransformMappingProjectionContentSelectorEnum.RAW;
        case r'BODY': return AITransformMappingProjectionContentSelectorEnum.BODY;
        case r'BODY_ATTACHMENTS': return AITransformMappingProjectionContentSelectorEnum.BODY_ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformMappingProjectionContentSelectorEnumTypeTransformer] instance.
  static AITransformMappingProjectionContentSelectorEnumTypeTransformer? _instance;
}



class AITransformMappingProjectionTriggerSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformMappingProjectionTriggerSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MESSAGE = AITransformMappingProjectionTriggerSelectorEnum._(r'PER_MESSAGE');
  static const ATTACHMENT = AITransformMappingProjectionTriggerSelectorEnum._(r'PER_ATTACHMENT');

  /// List of all possible values in this [enum][AITransformMappingProjectionTriggerSelectorEnum].
  static const values = <AITransformMappingProjectionTriggerSelectorEnum>[
    MESSAGE,
    ATTACHMENT,
  ];

  static AITransformMappingProjectionTriggerSelectorEnum? fromJson(dynamic value) => AITransformMappingProjectionTriggerSelectorEnumTypeTransformer().decode(value);

  static List<AITransformMappingProjectionTriggerSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformMappingProjectionTriggerSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformMappingProjectionTriggerSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformMappingProjectionTriggerSelectorEnum] to String,
/// and [decode] dynamic data back to [AITransformMappingProjectionTriggerSelectorEnum].
class AITransformMappingProjectionTriggerSelectorEnumTypeTransformer {
  factory AITransformMappingProjectionTriggerSelectorEnumTypeTransformer() => _instance ??= const AITransformMappingProjectionTriggerSelectorEnumTypeTransformer._();

  const AITransformMappingProjectionTriggerSelectorEnumTypeTransformer._();

  String encode(AITransformMappingProjectionTriggerSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformMappingProjectionTriggerSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformMappingProjectionTriggerSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_MESSAGE': return AITransformMappingProjectionTriggerSelectorEnum.MESSAGE;
        case r'PER_ATTACHMENT': return AITransformMappingProjectionTriggerSelectorEnum.ATTACHMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformMappingProjectionTriggerSelectorEnumTypeTransformer] instance.
  static AITransformMappingProjectionTriggerSelectorEnumTypeTransformer? _instance;
}


