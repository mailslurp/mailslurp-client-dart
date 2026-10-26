//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentConversationNoteDto {
  /// Returns a new [AgentConversationNoteDto] instance.
  AgentConversationNoteDto({
    required this.id,
    required this.conversationId,
    required this.actorType,
    this.actorApiKeyEntityId,
    this.actorUserId,
    required this.body,
    this.sourceEmailId,
    this.draftId,
    this.handoffId,
    required this.createdAt,
    this.sourceSmsId,
    this.conversationVersion,
  });

  String id;

  String conversationId;

  AgentConversationNoteDtoActorTypeEnum actorType;

  String? actorApiKeyEntityId;

  String? actorUserId;

  String body;

  String? sourceEmailId;

  String? draftId;

  String? handoffId;

  DateTime createdAt;

  String? sourceSmsId;

  int? conversationVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationNoteDto &&
     other.id == id &&
     other.conversationId == conversationId &&
     other.actorType == actorType &&
     other.actorApiKeyEntityId == actorApiKeyEntityId &&
     other.actorUserId == actorUserId &&
     other.body == body &&
     other.sourceEmailId == sourceEmailId &&
     other.draftId == draftId &&
     other.handoffId == handoffId &&
     other.createdAt == createdAt &&
     other.sourceSmsId == sourceSmsId &&
     other.conversationVersion == conversationVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (conversationId.hashCode) +
    (actorType.hashCode) +
    (actorApiKeyEntityId == null ? 0 : actorApiKeyEntityId!.hashCode) +
    (actorUserId == null ? 0 : actorUserId!.hashCode) +
    (body.hashCode) +
    (sourceEmailId == null ? 0 : sourceEmailId!.hashCode) +
    (draftId == null ? 0 : draftId!.hashCode) +
    (handoffId == null ? 0 : handoffId!.hashCode) +
    (createdAt.hashCode) +
    (sourceSmsId == null ? 0 : sourceSmsId!.hashCode) +
    (conversationVersion == null ? 0 : conversationVersion!.hashCode);

  @override
  String toString() => 'AgentConversationNoteDto[id=$id, conversationId=$conversationId, actorType=$actorType, actorApiKeyEntityId=$actorApiKeyEntityId, actorUserId=$actorUserId, body=$body, sourceEmailId=$sourceEmailId, draftId=$draftId, handoffId=$handoffId, createdAt=$createdAt, sourceSmsId=$sourceSmsId, conversationVersion=$conversationVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'conversationId'] = this.conversationId;
      json[r'actorType'] = this.actorType;
    if (this.actorApiKeyEntityId != null) {
      json[r'actorApiKeyEntityId'] = this.actorApiKeyEntityId;
    } else {
      json[r'actorApiKeyEntityId'] = null;
    }
    if (this.actorUserId != null) {
      json[r'actorUserId'] = this.actorUserId;
    } else {
      json[r'actorUserId'] = null;
    }
      json[r'body'] = this.body;
    if (this.sourceEmailId != null) {
      json[r'sourceEmailId'] = this.sourceEmailId;
    } else {
      json[r'sourceEmailId'] = null;
    }
    if (this.draftId != null) {
      json[r'draftId'] = this.draftId;
    } else {
      json[r'draftId'] = null;
    }
    if (this.handoffId != null) {
      json[r'handoffId'] = this.handoffId;
    } else {
      json[r'handoffId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.sourceSmsId != null) {
      json[r'sourceSmsId'] = this.sourceSmsId;
    } else {
      json[r'sourceSmsId'] = null;
    }
    if (this.conversationVersion != null) {
      json[r'conversationVersion'] = this.conversationVersion;
    } else {
      json[r'conversationVersion'] = null;
    }
    return json;
  }

  /// Returns a new [AgentConversationNoteDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationNoteDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentConversationNoteDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentConversationNoteDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentConversationNoteDto(
        id: mapValueOfType<String>(json, r'id')!,
        conversationId: mapValueOfType<String>(json, r'conversationId')!,
        actorType: AgentConversationNoteDtoActorTypeEnum.fromJson(json[r'actorType'])!,
        actorApiKeyEntityId: mapValueOfType<String>(json, r'actorApiKeyEntityId'),
        actorUserId: mapValueOfType<String>(json, r'actorUserId'),
        body: mapValueOfType<String>(json, r'body')!,
        sourceEmailId: mapValueOfType<String>(json, r'sourceEmailId'),
        draftId: mapValueOfType<String>(json, r'draftId'),
        handoffId: mapValueOfType<String>(json, r'handoffId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        sourceSmsId: mapValueOfType<String>(json, r'sourceSmsId'),
        conversationVersion: mapValueOfType<int>(json, r'conversationVersion'),
      );
    }
    return null;
  }

  static List<AgentConversationNoteDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationNoteDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationNoteDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationNoteDto> mapFromJson(dynamic json) {
    final map = <String, AgentConversationNoteDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationNoteDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationNoteDto-objects as value to a dart map
  static Map<String, List<AgentConversationNoteDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationNoteDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationNoteDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'conversationId',
    'actorType',
    'body',
    'createdAt',
  };
}


class AgentConversationNoteDtoActorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentConversationNoteDtoActorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AGENT = AgentConversationNoteDtoActorTypeEnum._(r'AGENT');
  static const OPERATOR = AgentConversationNoteDtoActorTypeEnum._(r'OPERATOR');
  static const SYSTEM = AgentConversationNoteDtoActorTypeEnum._(r'SYSTEM');

  /// List of all possible values in this [enum][AgentConversationNoteDtoActorTypeEnum].
  static const values = <AgentConversationNoteDtoActorTypeEnum>[
    AGENT,
    OPERATOR,
    SYSTEM,
  ];

  static AgentConversationNoteDtoActorTypeEnum? fromJson(dynamic value) => AgentConversationNoteDtoActorTypeEnumTypeTransformer().decode(value);

  static List<AgentConversationNoteDtoActorTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationNoteDtoActorTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationNoteDtoActorTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentConversationNoteDtoActorTypeEnum] to String,
/// and [decode] dynamic data back to [AgentConversationNoteDtoActorTypeEnum].
class AgentConversationNoteDtoActorTypeEnumTypeTransformer {
  factory AgentConversationNoteDtoActorTypeEnumTypeTransformer() => _instance ??= const AgentConversationNoteDtoActorTypeEnumTypeTransformer._();

  const AgentConversationNoteDtoActorTypeEnumTypeTransformer._();

  String encode(AgentConversationNoteDtoActorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentConversationNoteDtoActorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentConversationNoteDtoActorTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AGENT': return AgentConversationNoteDtoActorTypeEnum.AGENT;
        case r'OPERATOR': return AgentConversationNoteDtoActorTypeEnum.OPERATOR;
        case r'SYSTEM': return AgentConversationNoteDtoActorTypeEnum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentConversationNoteDtoActorTypeEnumTypeTransformer] instance.
  static AgentConversationNoteDtoActorTypeEnumTypeTransformer? _instance;
}


