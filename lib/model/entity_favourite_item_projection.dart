//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityFavouriteItemProjection {
  /// Returns a new [EntityFavouriteItemProjection] instance.
  EntityFavouriteItemProjection({
    required this.createdAt,
    required this.entityType,
    required this.name,
    required this.id,
    this.description,
  });

  DateTime createdAt;

  EntityFavouriteItemProjectionEntityTypeEnum entityType;

  String name;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityFavouriteItemProjection &&
     other.createdAt == createdAt &&
     other.entityType == entityType &&
     other.name == name &&
     other.id == id &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (entityType.hashCode) +
    (name.hashCode) +
    (id.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'EntityFavouriteItemProjection[createdAt=$createdAt, entityType=$entityType, name=$name, id=$id, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'entityType'] = this.entityType;
      json[r'name'] = this.name;
      json[r'id'] = this.id;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [EntityFavouriteItemProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityFavouriteItemProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityFavouriteItemProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityFavouriteItemProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityFavouriteItemProjection(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        entityType: EntityFavouriteItemProjectionEntityTypeEnum.fromJson(json[r'entityType'])!,
        name: mapValueOfType<String>(json, r'name')!,
        id: mapValueOfType<String>(json, r'id')!,
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<EntityFavouriteItemProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityFavouriteItemProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityFavouriteItemProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityFavouriteItemProjection> mapFromJson(dynamic json) {
    final map = <String, EntityFavouriteItemProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityFavouriteItemProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityFavouriteItemProjection-objects as value to a dart map
  static Map<String, List<EntityFavouriteItemProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityFavouriteItemProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityFavouriteItemProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'entityType',
    'name',
    'id',
  };
}


class EntityFavouriteItemProjectionEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityFavouriteItemProjectionEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = EntityFavouriteItemProjectionEntityTypeEnum._(r'INBOX');
  static const EMAIL = EntityFavouriteItemProjectionEntityTypeEnum._(r'EMAIL');
  static const ATTACHMENT = EntityFavouriteItemProjectionEntityTypeEnum._(r'ATTACHMENT');
  static const PHONE = EntityFavouriteItemProjectionEntityTypeEnum._(r'PHONE');
  static const SMS = EntityFavouriteItemProjectionEntityTypeEnum._(r'SMS');

  /// List of all possible values in this [enum][EntityFavouriteItemProjectionEntityTypeEnum].
  static const values = <EntityFavouriteItemProjectionEntityTypeEnum>[
    INBOX,
    EMAIL,
    ATTACHMENT,
    PHONE,
    SMS,
  ];

  static EntityFavouriteItemProjectionEntityTypeEnum? fromJson(dynamic value) => EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer().decode(value);

  static List<EntityFavouriteItemProjectionEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityFavouriteItemProjectionEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityFavouriteItemProjectionEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityFavouriteItemProjectionEntityTypeEnum] to String,
/// and [decode] dynamic data back to [EntityFavouriteItemProjectionEntityTypeEnum].
class EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer {
  factory EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer() => _instance ??= const EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer._();

  const EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer._();

  String encode(EntityFavouriteItemProjectionEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityFavouriteItemProjectionEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityFavouriteItemProjectionEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return EntityFavouriteItemProjectionEntityTypeEnum.INBOX;
        case r'EMAIL': return EntityFavouriteItemProjectionEntityTypeEnum.EMAIL;
        case r'ATTACHMENT': return EntityFavouriteItemProjectionEntityTypeEnum.ATTACHMENT;
        case r'PHONE': return EntityFavouriteItemProjectionEntityTypeEnum.PHONE;
        case r'SMS': return EntityFavouriteItemProjectionEntityTypeEnum.SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer] instance.
  static EntityFavouriteItemProjectionEntityTypeEnumTypeTransformer? _instance;
}


