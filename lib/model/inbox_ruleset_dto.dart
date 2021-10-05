//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetDto {
  /// Returns a new [InboxRulesetDto] instance.
  InboxRulesetDto({
    @required this.action,
    @required this.createdAt,
    @required this.handler,
    @required this.id,
    @required this.inboxId,
    @required this.scope,
    @required this.target,
  });

  InboxRulesetDtoActionEnum action;

  DateTime createdAt;

  InboxRulesetDtoHandlerEnum handler;

  String id;

  String inboxId;

  InboxRulesetDtoScopeEnum scope;

  String target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetDto &&
     other.action == action &&
     other.createdAt == createdAt &&
     other.handler == handler &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.scope == scope &&
     other.target == target;

  @override
  int get hashCode =>
    (action == null ? 0 : action.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (handler == null ? 0 : handler.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (scope == null ? 0 : scope.hashCode) +
    (target == null ? 0 : target.hashCode);

  @override
  String toString() => 'InboxRulesetDto[action=$action, createdAt=$createdAt, handler=$handler, id=$id, inboxId=$inboxId, scope=$scope, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = action;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'handler'] = handler;
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
      json[r'scope'] = scope;
      json[r'target'] = target;
    return json;
  }

  /// Returns a new [InboxRulesetDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxRulesetDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxRulesetDto(
        action: InboxRulesetDtoActionEnum.fromJson(json[r'action']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        handler: InboxRulesetDtoHandlerEnum.fromJson(json[r'handler']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        scope: InboxRulesetDtoScopeEnum.fromJson(json[r'scope']),
        target: json[r'target'],
    );

  static List<InboxRulesetDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetDto>[]
      : json.map((v) => InboxRulesetDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxRulesetDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxRulesetDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxRulesetDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetDto-objects as value to a dart map
  static Map<String, List<InboxRulesetDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxRulesetDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxRulesetDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxRulesetDtoActionEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetDtoActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BLOCK = InboxRulesetDtoActionEnum._(r'BLOCK');
  static const ALLOW = InboxRulesetDtoActionEnum._(r'ALLOW');
  static const FILTER_REMOVE = InboxRulesetDtoActionEnum._(r'FILTER_REMOVE');

  /// List of all possible values in this [enum][InboxRulesetDtoActionEnum].
  static const values = <InboxRulesetDtoActionEnum>[
    BLOCK,
    ALLOW,
    FILTER_REMOVE,
  ];

  static InboxRulesetDtoActionEnum fromJson(dynamic value) =>
    InboxRulesetDtoActionEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoActionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetDtoActionEnum>[]
      : json
          .map((value) => InboxRulesetDtoActionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoActionEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoActionEnum].
class InboxRulesetDtoActionEnumTypeTransformer {
  const InboxRulesetDtoActionEnumTypeTransformer._();

  factory InboxRulesetDtoActionEnumTypeTransformer() => _instance ??= InboxRulesetDtoActionEnumTypeTransformer._();

  String encode(InboxRulesetDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoActionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BLOCK': return InboxRulesetDtoActionEnum.BLOCK;
      case r'ALLOW': return InboxRulesetDtoActionEnum.ALLOW;
      case r'FILTER_REMOVE': return InboxRulesetDtoActionEnum.FILTER_REMOVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoActionEnumTypeTransformer] instance.
  static InboxRulesetDtoActionEnumTypeTransformer _instance;
}


class InboxRulesetDtoHandlerEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetDtoHandlerEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXCEPTION = InboxRulesetDtoHandlerEnum._(r'EXCEPTION');

  /// List of all possible values in this [enum][InboxRulesetDtoHandlerEnum].
  static const values = <InboxRulesetDtoHandlerEnum>[
    EXCEPTION,
  ];

  static InboxRulesetDtoHandlerEnum fromJson(dynamic value) =>
    InboxRulesetDtoHandlerEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoHandlerEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetDtoHandlerEnum>[]
      : json
          .map((value) => InboxRulesetDtoHandlerEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoHandlerEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoHandlerEnum].
class InboxRulesetDtoHandlerEnumTypeTransformer {
  const InboxRulesetDtoHandlerEnumTypeTransformer._();

  factory InboxRulesetDtoHandlerEnumTypeTransformer() => _instance ??= InboxRulesetDtoHandlerEnumTypeTransformer._();

  String encode(InboxRulesetDtoHandlerEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoHandlerEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoHandlerEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EXCEPTION': return InboxRulesetDtoHandlerEnum.EXCEPTION;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoHandlerEnumTypeTransformer] instance.
  static InboxRulesetDtoHandlerEnumTypeTransformer _instance;
}


class InboxRulesetDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVING_EMAILS = InboxRulesetDtoScopeEnum._(r'RECEIVING_EMAILS');
  static const SENDING_EMAILS = InboxRulesetDtoScopeEnum._(r'SENDING_EMAILS');

  /// List of all possible values in this [enum][InboxRulesetDtoScopeEnum].
  static const values = <InboxRulesetDtoScopeEnum>[
    RECEIVING_EMAILS,
    SENDING_EMAILS,
  ];

  static InboxRulesetDtoScopeEnum fromJson(dynamic value) =>
    InboxRulesetDtoScopeEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoScopeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetDtoScopeEnum>[]
      : json
          .map((value) => InboxRulesetDtoScopeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoScopeEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoScopeEnum].
class InboxRulesetDtoScopeEnumTypeTransformer {
  const InboxRulesetDtoScopeEnumTypeTransformer._();

  factory InboxRulesetDtoScopeEnumTypeTransformer() => _instance ??= InboxRulesetDtoScopeEnumTypeTransformer._();

  String encode(InboxRulesetDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoScopeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECEIVING_EMAILS': return InboxRulesetDtoScopeEnum.RECEIVING_EMAILS;
      case r'SENDING_EMAILS': return InboxRulesetDtoScopeEnum.SENDING_EMAILS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoScopeEnumTypeTransformer] instance.
  static InboxRulesetDtoScopeEnumTypeTransformer _instance;
}

