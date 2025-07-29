//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAITransformerMappingOptions {
  /// Returns a new [CreateAITransformerMappingOptions] instance.
  CreateAITransformerMappingOptions({
    this.name,
    required this.aiTransformId,
    this.entityId,
    required this.entityType,
    this.contentSelector,
    this.triggerSelector,
    this.spreadRootArray,
  });

  String? name;

  String aiTransformId;

  String? entityId;

  CreateAITransformerMappingOptionsEntityTypeEnum entityType;

  CreateAITransformerMappingOptionsContentSelectorEnum? contentSelector;

  CreateAITransformerMappingOptionsTriggerSelectorEnum? triggerSelector;

  bool? spreadRootArray;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAITransformerMappingOptions &&
     other.name == name &&
     other.aiTransformId == aiTransformId &&
     other.entityId == entityId &&
     other.entityType == entityType &&
     other.contentSelector == contentSelector &&
     other.triggerSelector == triggerSelector &&
     other.spreadRootArray == spreadRootArray;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (aiTransformId.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (entityType.hashCode) +
    (contentSelector == null ? 0 : contentSelector!.hashCode) +
    (triggerSelector == null ? 0 : triggerSelector!.hashCode) +
    (spreadRootArray == null ? 0 : spreadRootArray!.hashCode);

  @override
  String toString() => 'CreateAITransformerMappingOptions[name=$name, aiTransformId=$aiTransformId, entityId=$entityId, entityType=$entityType, contentSelector=$contentSelector, triggerSelector=$triggerSelector, spreadRootArray=$spreadRootArray]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.spreadRootArray != null) {
      json[r'spreadRootArray'] = this.spreadRootArray;
    } else {
      json[r'spreadRootArray'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAITransformerMappingOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAITransformerMappingOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAITransformerMappingOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAITransformerMappingOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAITransformerMappingOptions(
        name: mapValueOfType<String>(json, r'name'),
        aiTransformId: mapValueOfType<String>(json, r'aiTransformId')!,
        entityId: mapValueOfType<String>(json, r'entityId'),
        entityType: CreateAITransformerMappingOptionsEntityTypeEnum.fromJson(json[r'entityType'])!,
        contentSelector: CreateAITransformerMappingOptionsContentSelectorEnum.fromJson(json[r'contentSelector']),
        triggerSelector: CreateAITransformerMappingOptionsTriggerSelectorEnum.fromJson(json[r'triggerSelector']),
        spreadRootArray: mapValueOfType<bool>(json, r'spreadRootArray'),
      );
    }
    return null;
  }

  static List<CreateAITransformerMappingOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAITransformerMappingOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAITransformerMappingOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAITransformerMappingOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAITransformerMappingOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAITransformerMappingOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAITransformerMappingOptions-objects as value to a dart map
  static Map<String, List<CreateAITransformerMappingOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAITransformerMappingOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAITransformerMappingOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aiTransformId',
    'entityType',
  };
}


class CreateAITransformerMappingOptionsEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAITransformerMappingOptionsEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = CreateAITransformerMappingOptionsEntityTypeEnum._(r'INBOX');
  static const PHONE = CreateAITransformerMappingOptionsEntityTypeEnum._(r'PHONE');

  /// List of all possible values in this [enum][CreateAITransformerMappingOptionsEntityTypeEnum].
  static const values = <CreateAITransformerMappingOptionsEntityTypeEnum>[
    INBOX,
    PHONE,
  ];

  static CreateAITransformerMappingOptionsEntityTypeEnum? fromJson(dynamic value) => CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer().decode(value);

  static List<CreateAITransformerMappingOptionsEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAITransformerMappingOptionsEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAITransformerMappingOptionsEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAITransformerMappingOptionsEntityTypeEnum] to String,
/// and [decode] dynamic data back to [CreateAITransformerMappingOptionsEntityTypeEnum].
class CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer {
  factory CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer() => _instance ??= const CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer._();

  const CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer._();

  String encode(CreateAITransformerMappingOptionsEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAITransformerMappingOptionsEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAITransformerMappingOptionsEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return CreateAITransformerMappingOptionsEntityTypeEnum.INBOX;
        case r'PHONE': return CreateAITransformerMappingOptionsEntityTypeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer] instance.
  static CreateAITransformerMappingOptionsEntityTypeEnumTypeTransformer? _instance;
}



class CreateAITransformerMappingOptionsContentSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAITransformerMappingOptionsContentSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RAW = CreateAITransformerMappingOptionsContentSelectorEnum._(r'RAW');
  static const BODY = CreateAITransformerMappingOptionsContentSelectorEnum._(r'BODY');
  static const BODY_ATTACHMENTS = CreateAITransformerMappingOptionsContentSelectorEnum._(r'BODY_ATTACHMENTS');

  /// List of all possible values in this [enum][CreateAITransformerMappingOptionsContentSelectorEnum].
  static const values = <CreateAITransformerMappingOptionsContentSelectorEnum>[
    RAW,
    BODY,
    BODY_ATTACHMENTS,
  ];

  static CreateAITransformerMappingOptionsContentSelectorEnum? fromJson(dynamic value) => CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer().decode(value);

  static List<CreateAITransformerMappingOptionsContentSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAITransformerMappingOptionsContentSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAITransformerMappingOptionsContentSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAITransformerMappingOptionsContentSelectorEnum] to String,
/// and [decode] dynamic data back to [CreateAITransformerMappingOptionsContentSelectorEnum].
class CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer {
  factory CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer() => _instance ??= const CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer._();

  const CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer._();

  String encode(CreateAITransformerMappingOptionsContentSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAITransformerMappingOptionsContentSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAITransformerMappingOptionsContentSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RAW': return CreateAITransformerMappingOptionsContentSelectorEnum.RAW;
        case r'BODY': return CreateAITransformerMappingOptionsContentSelectorEnum.BODY;
        case r'BODY_ATTACHMENTS': return CreateAITransformerMappingOptionsContentSelectorEnum.BODY_ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer] instance.
  static CreateAITransformerMappingOptionsContentSelectorEnumTypeTransformer? _instance;
}



class CreateAITransformerMappingOptionsTriggerSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAITransformerMappingOptionsTriggerSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MESSAGE = CreateAITransformerMappingOptionsTriggerSelectorEnum._(r'PER_MESSAGE');
  static const ATTACHMENT = CreateAITransformerMappingOptionsTriggerSelectorEnum._(r'PER_ATTACHMENT');

  /// List of all possible values in this [enum][CreateAITransformerMappingOptionsTriggerSelectorEnum].
  static const values = <CreateAITransformerMappingOptionsTriggerSelectorEnum>[
    MESSAGE,
    ATTACHMENT,
  ];

  static CreateAITransformerMappingOptionsTriggerSelectorEnum? fromJson(dynamic value) => CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer().decode(value);

  static List<CreateAITransformerMappingOptionsTriggerSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAITransformerMappingOptionsTriggerSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAITransformerMappingOptionsTriggerSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAITransformerMappingOptionsTriggerSelectorEnum] to String,
/// and [decode] dynamic data back to [CreateAITransformerMappingOptionsTriggerSelectorEnum].
class CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer {
  factory CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer() => _instance ??= const CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer._();

  const CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer._();

  String encode(CreateAITransformerMappingOptionsTriggerSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAITransformerMappingOptionsTriggerSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAITransformerMappingOptionsTriggerSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PER_MESSAGE': return CreateAITransformerMappingOptionsTriggerSelectorEnum.MESSAGE;
        case r'PER_ATTACHMENT': return CreateAITransformerMappingOptionsTriggerSelectorEnum.ATTACHMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer] instance.
  static CreateAITransformerMappingOptionsTriggerSelectorEnumTypeTransformer? _instance;
}


