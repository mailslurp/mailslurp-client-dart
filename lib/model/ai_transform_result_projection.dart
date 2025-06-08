//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AITransformResultProjection {
  /// Returns a new [AITransformResultProjection] instance.
  AITransformResultProjection({
    required this.userId,
    required this.aiTransformId,
    required this.entityId,
    required this.entityType,
    required this.aiTransformMappingId,
    this.value,
    required this.id,
  });

  String userId;

  String aiTransformId;

  String entityId;

  AITransformResultProjectionEntityTypeEnum entityType;

  String aiTransformMappingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AITransformResultProjection &&
     other.userId == userId &&
     other.aiTransformId == aiTransformId &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.aiTransformMappingId == aiTransformMappingId &&
     other.value == value &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (aiTransformId.hashCode) +
    (entityId.hashCode) +
    (entityType.hashCode) +
    (aiTransformMappingId.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'AITransformResultProjection[userId=$userId, aiTransformId=$aiTransformId, entityId=$entityId, entityType=$entityType, aiTransformMappingId=$aiTransformMappingId, value=$value, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'aiTransformId'] = this.aiTransformId;
      json[r'entityId'] = this.entityId;
      json[r'entityType'] = this.entityType;
      json[r'aiTransformMappingId'] = this.aiTransformMappingId;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [AITransformResultProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AITransformResultProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AITransformResultProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AITransformResultProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AITransformResultProjection(
        userId: mapValueOfType<String>(json, r'userId')!,
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        entityId: mapValueOfType<String>(json, r'entityId')!,
        entityType: AITransformResultProjectionEntityTypeEnum.fromJson(json[r'entityType'])!,
        aiTransformMappingId: mapValueOfType<String>(json, r'aiTransformMappingId')!,
        value: mapValueOfType<String>(json, r'value'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<AITransformResultProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AITransformResultProjection> mapFromJson(dynamic json) {
    final map = <String, AITransformResultProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AITransformResultProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AITransformResultProjection-objects as value to a dart map
  static Map<String, List<AITransformResultProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AITransformResultProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AITransformResultProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'aiTransformId',
    'entityId',
    'entityType',
    'aiTransformMappingId',
    'id',
  };
}


class AITransformResultProjectionEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AITransformResultProjectionEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = AITransformResultProjectionEntityTypeEnum._(r'INBOX');
  static const PHONE = AITransformResultProjectionEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][AITransformResultProjectionEntityTypeEnum].
  static const values = <AITransformResultProjectionEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static AITransformResultProjectionEntityTypeEnum? fromJson(dynamic value) => AITransformResultProjectionEntityTypeEnumTypeTransformer().decode(value);

  static List<AITransformResultProjectionEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AITransformResultProjectionEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AITransformResultProjectionEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AITransformResultProjectionEntityTypeEnum] to String,
/// and [decode] dynamic data back to [AITransformResultProjectionEntityTypeEnum].
class AITransformResultProjectionEntityTypeEnumTypeTransformer {
  factory AITransformResultProjectionEntityTypeEnumTypeTransformer() => _instance ??= const AITransformResultProjectionEntityTypeEnumTypeTransformer._();

  const AITransformResultProjectionEntityTypeEnumTypeTransformer._();

  String encode(AITransformResultProjectionEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AITransformResultProjectionEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AITransformResultProjectionEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return AITransformResultProjectionEntityTypeEnum.INBOX;
        case r'PHONE': return AITransformResultProjectionEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AITransformResultProjectionEntityTypeEnumTypeTransformer] instance.
  static AITransformResultProjectionEntityTypeEnumTypeTransformer? _instance;
}


