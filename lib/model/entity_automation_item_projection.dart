//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityAutomationItemProjection {
  /// Returns a new [EntityAutomationItemProjection] instance.
  EntityAutomationItemProjection({
    this.inboxId,
    this.phoneId,
    this.action,
    required this.automationType,
    this.name,
    required this.id,
  });

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  EntityAutomationItemProjectionAutomationTypeEnum automationType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityAutomationItemProjection &&
     other.inboxId == inboxId &&
     other.phoneId == phoneId &&
     other.action == action &&
     other.automationType == automationType &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (automationType.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'EntityAutomationItemProjection[inboxId=$inboxId, phoneId=$phoneId, action=$action, automationType=$automationType, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
      json[r'automationType'] = this.automationType;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [EntityAutomationItemProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityAutomationItemProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityAutomationItemProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityAutomationItemProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityAutomationItemProjection(
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        action: mapValueOfType<String>(json, r'action'),
        automationType: EntityAutomationItemProjectionAutomationTypeEnum.fromJson(json[r'automationType'])!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<EntityAutomationItemProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityAutomationItemProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityAutomationItemProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityAutomationItemProjection> mapFromJson(dynamic json) {
    final map = <String, EntityAutomationItemProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityAutomationItemProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityAutomationItemProjection-objects as value to a dart map
  static Map<String, List<EntityAutomationItemProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityAutomationItemProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityAutomationItemProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'automationType',
    'id',
  };
}


class EntityAutomationItemProjectionAutomationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityAutomationItemProjectionAutomationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FORWARDER = EntityAutomationItemProjectionAutomationTypeEnum._(r'INBOX_FORWARDER');
  static const REPLIER = EntityAutomationItemProjectionAutomationTypeEnum._(r'INBOX_REPLIER');
  static const RULESET = EntityAutomationItemProjectionAutomationTypeEnum._(r'INBOX_RULESET');

  /// List of all possible values in this [enum][EntityAutomationItemProjectionAutomationTypeEnum].
  static const values = <EntityAutomationItemProjectionAutomationTypeEnum>[
    FORWARDER,
    REPLIER,
    RULESET,
  ];

  static EntityAutomationItemProjectionAutomationTypeEnum? fromJson(dynamic value) => EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer().decode(value);

  static List<EntityAutomationItemProjectionAutomationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityAutomationItemProjectionAutomationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityAutomationItemProjectionAutomationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityAutomationItemProjectionAutomationTypeEnum] to String,
/// and [decode] dynamic data back to [EntityAutomationItemProjectionAutomationTypeEnum].
class EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer {
  factory EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer() => _instance ??= const EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer._();

  const EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer._();

  String encode(EntityAutomationItemProjectionAutomationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityAutomationItemProjectionAutomationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityAutomationItemProjectionAutomationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX_FORWARDER': return EntityAutomationItemProjectionAutomationTypeEnum.FORWARDER;
        case r'INBOX_REPLIER': return EntityAutomationItemProjectionAutomationTypeEnum.REPLIER;
        case r'INBOX_RULESET': return EntityAutomationItemProjectionAutomationTypeEnum.RULESET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer] instance.
  static EntityAutomationItemProjectionAutomationTypeEnumTypeTransformer? _instance;
}


