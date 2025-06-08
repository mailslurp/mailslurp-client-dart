//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityEventItemProjection {
  /// Returns a new [EntityEventItemProjection] instance.
  EntityEventItemProjection({
    required this.eventType,
    this.inboxId,
    this.phoneId,
    required this.id,
    required this.severity,
  });

  EntityEventItemProjectionEventTypeEnum eventType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneId;

  String id;

  EntityEventItemProjectionSeverityEnum severity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityEventItemProjection &&
     other.eventType == eventType &&
     other.inboxId == inboxId &&
     other.phoneId == phoneId &&
     other.id == id &&
     other.severity == severity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventType.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (id.hashCode) +
    (severity.hashCode);

  @override
  String toString() => 'EntityEventItemProjection[eventType=$eventType, inboxId=$inboxId, phoneId=$phoneId, id=$id, severity=$severity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'eventType'] = this.eventType;
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
      json[r'id'] = this.id;
      json[r'severity'] = this.severity;
    return json;
  }

  /// Returns a new [EntityEventItemProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityEventItemProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityEventItemProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityEventItemProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityEventItemProjection(
        eventType: EntityEventItemProjectionEventTypeEnum.fromJson(json[r'eventType'])!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        id: mapValueOfType<String>(json, r'id')!,
        severity: EntityEventItemProjectionSeverityEnum.fromJson(json[r'severity'])!,
      );
    }
    return null;
  }

  static List<EntityEventItemProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityEventItemProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityEventItemProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityEventItemProjection> mapFromJson(dynamic json) {
    final map = <String, EntityEventItemProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityEventItemProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityEventItemProjection-objects as value to a dart map
  static Map<String, List<EntityEventItemProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityEventItemProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityEventItemProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventType',
    'id',
    'severity',
  };
}


class EntityEventItemProjectionEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityEventItemProjectionEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WEBHOOK_EVENT = EntityEventItemProjectionEventTypeEnum._(r'WEBHOOK_EVENT');
  static const INBOX_FORWARDER_EVENT = EntityEventItemProjectionEventTypeEnum._(r'INBOX_FORWARDER_EVENT');
  static const INBOX_REPLIER_EVENT = EntityEventItemProjectionEventTypeEnum._(r'INBOX_REPLIER_EVENT');
  static const INBOX_RULESET_EVENT = EntityEventItemProjectionEventTypeEnum._(r'INBOX_RULESET_EVENT');
  static const ALIAS_EVENT = EntityEventItemProjectionEventTypeEnum._(r'ALIAS_EVENT');

  /// List of all possible values in this [enum][EntityEventItemProjectionEventTypeEnum].
  static const values = <EntityEventItemProjectionEventTypeEnum>[
    WEBHOOK_EVENT,
    INBOX_FORWARDER_EVENT,
    INBOX_REPLIER_EVENT,
    INBOX_RULESET_EVENT,
    ALIAS_EVENT,
  ];

  static EntityEventItemProjectionEventTypeEnum? fromJson(dynamic value) => EntityEventItemProjectionEventTypeEnumTypeTransformer().decode(value);

  static List<EntityEventItemProjectionEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityEventItemProjectionEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityEventItemProjectionEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityEventItemProjectionEventTypeEnum] to String,
/// and [decode] dynamic data back to [EntityEventItemProjectionEventTypeEnum].
class EntityEventItemProjectionEventTypeEnumTypeTransformer {
  factory EntityEventItemProjectionEventTypeEnumTypeTransformer() => _instance ??= const EntityEventItemProjectionEventTypeEnumTypeTransformer._();

  const EntityEventItemProjectionEventTypeEnumTypeTransformer._();

  String encode(EntityEventItemProjectionEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityEventItemProjectionEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityEventItemProjectionEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WEBHOOK_EVENT': return EntityEventItemProjectionEventTypeEnum.WEBHOOK_EVENT;
        case r'INBOX_FORWARDER_EVENT': return EntityEventItemProjectionEventTypeEnum.INBOX_FORWARDER_EVENT;
        case r'INBOX_REPLIER_EVENT': return EntityEventItemProjectionEventTypeEnum.INBOX_REPLIER_EVENT;
        case r'INBOX_RULESET_EVENT': return EntityEventItemProjectionEventTypeEnum.INBOX_RULESET_EVENT;
        case r'ALIAS_EVENT': return EntityEventItemProjectionEventTypeEnum.ALIAS_EVENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityEventItemProjectionEventTypeEnumTypeTransformer] instance.
  static EntityEventItemProjectionEventTypeEnumTypeTransformer? _instance;
}



class EntityEventItemProjectionSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityEventItemProjectionSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INFO = EntityEventItemProjectionSeverityEnum._(r'INFO');
  static const SUCCESS = EntityEventItemProjectionSeverityEnum._(r'SUCCESS');
  static const WARNING = EntityEventItemProjectionSeverityEnum._(r'WARNING');
  static const DANGER = EntityEventItemProjectionSeverityEnum._(r'DANGER');

  /// List of all possible values in this [enum][EntityEventItemProjectionSeverityEnum].
  static const values = <EntityEventItemProjectionSeverityEnum>[
    INFO,
    SUCCESS,
    WARNING,
    DANGER,
  ];

  static EntityEventItemProjectionSeverityEnum? fromJson(dynamic value) => EntityEventItemProjectionSeverityEnumTypeTransformer().decode(value);

  static List<EntityEventItemProjectionSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityEventItemProjectionSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityEventItemProjectionSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityEventItemProjectionSeverityEnum] to String,
/// and [decode] dynamic data back to [EntityEventItemProjectionSeverityEnum].
class EntityEventItemProjectionSeverityEnumTypeTransformer {
  factory EntityEventItemProjectionSeverityEnumTypeTransformer() => _instance ??= const EntityEventItemProjectionSeverityEnumTypeTransformer._();

  const EntityEventItemProjectionSeverityEnumTypeTransformer._();

  String encode(EntityEventItemProjectionSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityEventItemProjectionSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityEventItemProjectionSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INFO': return EntityEventItemProjectionSeverityEnum.INFO;
        case r'SUCCESS': return EntityEventItemProjectionSeverityEnum.SUCCESS;
        case r'WARNING': return EntityEventItemProjectionSeverityEnum.WARNING;
        case r'DANGER': return EntityEventItemProjectionSeverityEnum.DANGER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityEventItemProjectionSeverityEnumTypeTransformer] instance.
  static EntityEventItemProjectionSeverityEnumTypeTransformer? _instance;
}


