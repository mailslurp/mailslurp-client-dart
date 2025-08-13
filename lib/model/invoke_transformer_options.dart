//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvokeTransformerOptions {
  /// Returns a new [InvokeTransformerOptions] instance.
  InvokeTransformerOptions({
    this.aiTransformId,
    this.aiTransformMappingId,
    this.rawInput,
    this.entityId,
    this.entityType,
    this.rawConditions = const [],
    this.rawInstructions = const [],
    this.rawOutputSchema,
    this.contentSelector,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aiTransformId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aiTransformMappingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rawInput;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  InvokeTransformerOptionsEntityTypeEnum? entityType;

  List<String> rawConditions;

  List<String> rawInstructions;

  StructuredOutputSchema? rawOutputSchema;

  InvokeTransformerOptionsContentSelectorEnum? contentSelector;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvokeTransformerOptions &&
     other.aiTransformId == aiTransformId &&
     other.aiTransformMappingId == aiTransformMappingId &&
     other.rawInput == rawInput &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.rawConditions == rawConditions &&
     other.rawInstructions == rawInstructions &&
     other.rawOutputSchema == rawOutputSchema &&
     other.contentSelector == contentSelector;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aiTransformId == null ? 0 : aiTransformId!.hashCode) +
    (aiTransformMappingId == null ? 0 : aiTransformMappingId!.hashCode) +
    (rawInput == null ? 0 : rawInput!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (rawConditions.hashCode) +
    (rawInstructions.hashCode) +
    (rawOutputSchema == null ? 0 : rawOutputSchema!.hashCode) +
    (contentSelector == null ? 0 : contentSelector!.hashCode);

  @override
  String toString() => 'InvokeTransformerOptions[aiTransformId=$aiTransformId, aiTransformMappingId=$aiTransformMappingId, rawInput=$rawInput, entityId=$entityId, entityType=$entityType, rawConditions=$rawConditions, rawInstructions=$rawInstructions, rawOutputSchema=$rawOutputSchema, contentSelector=$contentSelector]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aiTransformId != null) {
      json[r'aiTransformId'] = this.aiTransformId;
    } else {
      json[r'aiTransformId'] = null;
    }
    if (this.aiTransformMappingId != null) {
      json[r'aiTransformMappingId'] = this.aiTransformMappingId;
    } else {
      json[r'aiTransformMappingId'] = null;
    }
    if (this.rawInput != null) {
      json[r'rawInput'] = this.rawInput;
    } else {
      json[r'rawInput'] = null;
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
      json[r'rawConditions'] = this.rawConditions;
      json[r'rawInstructions'] = this.rawInstructions;
    if (this.rawOutputSchema != null) {
      json[r'rawOutputSchema'] = this.rawOutputSchema;
    } else {
      json[r'rawOutputSchema'] = null;
    }
    if (this.contentSelector != null) {
      json[r'contentSelector'] = this.contentSelector;
    } else {
      json[r'contentSelector'] = null;
    }
    return json;
  }

  /// Returns a new [InvokeTransformerOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvokeTransformerOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvokeTransformerOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvokeTransformerOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvokeTransformerOptions(
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId'),
        aiTransformMappingId: mapValueOfType<String>(json, r'aiTransformMappingId'),
        rawInput: mapValueOfType<String>(json, r'rawInput'),
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: InvokeTransformerOptionsEntityTypeEnum.fromJson(json[r'entityType']),
        rawConditions: json[r'rawConditions'] is List
            ? (json[r'rawConditions'] as List).cast<String>()
            : const [],
        rawInstructions: json[r'rawInstructions'] is List
            ? (json[r'rawInstructions'] as List).cast<String>()
            : const [],
        rawOutputSchema: StructuredOutputSchema.fromJson(json[r'rawOutputSchema']),
        contentSelector: InvokeTransformerOptionsContentSelectorEnum.fromJson(json[r'contentSelector']),
      );
    }
    return null;
  }

  static List<InvokeTransformerOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvokeTransformerOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvokeTransformerOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvokeTransformerOptions> mapFromJson(dynamic json) {
    final map = <String, InvokeTransformerOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvokeTransformerOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvokeTransformerOptions-objects as value to a dart map
  static Map<String, List<InvokeTransformerOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvokeTransformerOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvokeTransformerOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class InvokeTransformerOptionsEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvokeTransformerOptionsEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL = InvokeTransformerOptionsEntityTypeEnum._(r'EMAIL');
  static const SMS = InvokeTransformerOptionsEntityTypeEnum._(r'SMS');
  static const ATTACHMENT = InvokeTransformerOptionsEntityTypeEnum._(r'ATTACHMENT');

  /// List of all possible values in this [enum][InvokeTransformerOptionsEntityTypeEnum].
  static const values = <InvokeTransformerOptionsEntityTypeEnum>[
    EMAIL,
    SMS,
    ATTACHMENT,
  ];

  static InvokeTransformerOptionsEntityTypeEnum? fromJson(dynamic value) => InvokeTransformerOptionsEntityTypeEnumTypeTransformer().decode(value);

  static List<InvokeTransformerOptionsEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvokeTransformerOptionsEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvokeTransformerOptionsEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvokeTransformerOptionsEntityTypeEnum] to String,
/// and [decode] dynamic data back to [InvokeTransformerOptionsEntityTypeEnum].
class InvokeTransformerOptionsEntityTypeEnumTypeTransformer {
  factory InvokeTransformerOptionsEntityTypeEnumTypeTransformer() => _instance ??= const InvokeTransformerOptionsEntityTypeEnumTypeTransformer._();

  const InvokeTransformerOptionsEntityTypeEnumTypeTransformer._();

  String encode(InvokeTransformerOptionsEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvokeTransformerOptionsEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvokeTransformerOptionsEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL': return InvokeTransformerOptionsEntityTypeEnum.EMAIL;
        case r'SMS': return InvokeTransformerOptionsEntityTypeEnum.SMS;
        case r'ATTACHMENT': return InvokeTransformerOptionsEntityTypeEnum.ATTACHMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvokeTransformerOptionsEntityTypeEnumTypeTransformer] instance.
  static InvokeTransformerOptionsEntityTypeEnumTypeTransformer? _instance;
}



class InvokeTransformerOptionsContentSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const InvokeTransformerOptionsContentSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RAW = InvokeTransformerOptionsContentSelectorEnum._(r'RAW');
  static const BODY = InvokeTransformerOptionsContentSelectorEnum._(r'BODY');
  static const BODY_ATTACHMENTS = InvokeTransformerOptionsContentSelectorEnum._(r'BODY_ATTACHMENTS');

  /// List of all possible values in this [enum][InvokeTransformerOptionsContentSelectorEnum].
  static const values = <InvokeTransformerOptionsContentSelectorEnum>[
    RAW,
    BODY,
    BODY_ATTACHMENTS,
  ];

  static InvokeTransformerOptionsContentSelectorEnum? fromJson(dynamic value) => InvokeTransformerOptionsContentSelectorEnumTypeTransformer().decode(value);

  static List<InvokeTransformerOptionsContentSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvokeTransformerOptionsContentSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvokeTransformerOptionsContentSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvokeTransformerOptionsContentSelectorEnum] to String,
/// and [decode] dynamic data back to [InvokeTransformerOptionsContentSelectorEnum].
class InvokeTransformerOptionsContentSelectorEnumTypeTransformer {
  factory InvokeTransformerOptionsContentSelectorEnumTypeTransformer() => _instance ??= const InvokeTransformerOptionsContentSelectorEnumTypeTransformer._();

  const InvokeTransformerOptionsContentSelectorEnumTypeTransformer._();

  String encode(InvokeTransformerOptionsContentSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvokeTransformerOptionsContentSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvokeTransformerOptionsContentSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RAW': return InvokeTransformerOptionsContentSelectorEnum.RAW;
        case r'BODY': return InvokeTransformerOptionsContentSelectorEnum.BODY;
        case r'BODY_ATTACHMENTS': return InvokeTransformerOptionsContentSelectorEnum.BODY_ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvokeTransformerOptionsContentSelectorEnumTypeTransformer] instance.
  static InvokeTransformerOptionsContentSelectorEnumTypeTransformer? _instance;
}


