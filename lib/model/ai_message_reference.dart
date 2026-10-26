//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageReference {
  /// Returns a new [AIMessageReference] instance.
  AIMessageReference({
    required this.type,
    required this.id,
  });

  AIMessageReferenceTypeEnum type;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageReference &&
     other.type == type &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'AIMessageReference[type=$type, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [AIMessageReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageReference(
        type: AIMessageReferenceTypeEnum.fromJson(json[r'type'])!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<AIMessageReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageReference> mapFromJson(dynamic json) {
    final map = <String, AIMessageReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageReference-objects as value to a dart map
  static Map<String, List<AIMessageReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'id',
  };
}


class AIMessageReferenceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageReferenceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL = AIMessageReferenceTypeEnum._(r'EMAIL');
  static const SMS = AIMessageReferenceTypeEnum._(r'SMS');

  /// List of all possible values in this [enum][AIMessageReferenceTypeEnum].
  static const values = <AIMessageReferenceTypeEnum>[
    EMAIL,
    SMS,
  ];

  static AIMessageReferenceTypeEnum? fromJson(dynamic value) => AIMessageReferenceTypeEnumTypeTransformer().decode(value);

  static List<AIMessageReferenceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageReferenceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageReferenceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageReferenceTypeEnum] to String,
/// and [decode] dynamic data back to [AIMessageReferenceTypeEnum].
class AIMessageReferenceTypeEnumTypeTransformer {
  factory AIMessageReferenceTypeEnumTypeTransformer() => _instance ??= const AIMessageReferenceTypeEnumTypeTransformer._();

  const AIMessageReferenceTypeEnumTypeTransformer._();

  String encode(AIMessageReferenceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageReferenceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageReferenceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL': return AIMessageReferenceTypeEnum.EMAIL;
        case r'SMS': return AIMessageReferenceTypeEnum.SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageReferenceTypeEnumTypeTransformer] instance.
  static AIMessageReferenceTypeEnumTypeTransformer? _instance;
}


