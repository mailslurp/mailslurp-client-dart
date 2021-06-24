//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetProjection {
  /// Returns a new [InboxRulesetProjection] instance.
  InboxRulesetProjection({
    @required this.action,
    @required this.handler,
    @required this.id,
    @required this.inboxId,
    @required this.scope,
    @required this.target,
  });

  InboxRulesetProjectionActionEnum action;

  InboxRulesetProjectionHandlerEnum handler;

  String id;

  String inboxId;

  InboxRulesetProjectionScopeEnum scope;

  String target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetProjection &&
     other.action == action &&
     other.handler == handler &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.scope == scope &&
     other.target == target;

  @override
  int get hashCode =>
    (action == null ? 0 : action.hashCode) +
    (handler == null ? 0 : handler.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (scope == null ? 0 : scope.hashCode) +
    (target == null ? 0 : target.hashCode);

  @override
  String toString() => 'InboxRulesetProjection[action=$action, handler=$handler, id=$id, inboxId=$inboxId, scope=$scope, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = action;
      json[r'handler'] = handler;
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
      json[r'scope'] = scope;
      json[r'target'] = target;
    return json;
  }

  /// Returns a new [InboxRulesetProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxRulesetProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxRulesetProjection(
        action: InboxRulesetProjectionActionEnum.fromJson(json[r'action']),
        handler: InboxRulesetProjectionHandlerEnum.fromJson(json[r'handler']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        scope: InboxRulesetProjectionScopeEnum.fromJson(json[r'scope']),
        target: json[r'target'],
    );

  static List<InboxRulesetProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetProjection>[]
      : json.map((v) => InboxRulesetProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxRulesetProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxRulesetProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxRulesetProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetProjection-objects as value to a dart map
  static Map<String, List<InboxRulesetProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxRulesetProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxRulesetProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxRulesetProjectionActionEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetProjectionActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BLOCK = InboxRulesetProjectionActionEnum._(r'BLOCK');
  static const ALLOW = InboxRulesetProjectionActionEnum._(r'ALLOW');
  static const FORWARD = InboxRulesetProjectionActionEnum._(r'FORWARD');

  /// List of all possible values in this [enum][InboxRulesetProjectionActionEnum].
  static const values = <InboxRulesetProjectionActionEnum>[
    BLOCK,
    ALLOW,
    FORWARD,
  ];

  static InboxRulesetProjectionActionEnum fromJson(dynamic value) =>
    InboxRulesetProjectionActionEnumTypeTransformer().decode(value);

  static List<InboxRulesetProjectionActionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetProjectionActionEnum>[]
      : json
          .map((value) => InboxRulesetProjectionActionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetProjectionActionEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetProjectionActionEnum].
class InboxRulesetProjectionActionEnumTypeTransformer {
  const InboxRulesetProjectionActionEnumTypeTransformer._();

  factory InboxRulesetProjectionActionEnumTypeTransformer() => _instance ??= InboxRulesetProjectionActionEnumTypeTransformer._();

  String encode(InboxRulesetProjectionActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetProjectionActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetProjectionActionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BLOCK': return InboxRulesetProjectionActionEnum.BLOCK;
      case r'ALLOW': return InboxRulesetProjectionActionEnum.ALLOW;
      case r'FORWARD': return InboxRulesetProjectionActionEnum.FORWARD;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetProjectionActionEnumTypeTransformer] instance.
  static InboxRulesetProjectionActionEnumTypeTransformer _instance;
}


class InboxRulesetProjectionHandlerEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetProjectionHandlerEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXCEPTION = InboxRulesetProjectionHandlerEnum._(r'EXCEPTION');

  /// List of all possible values in this [enum][InboxRulesetProjectionHandlerEnum].
  static const values = <InboxRulesetProjectionHandlerEnum>[
    EXCEPTION,
  ];

  static InboxRulesetProjectionHandlerEnum fromJson(dynamic value) =>
    InboxRulesetProjectionHandlerEnumTypeTransformer().decode(value);

  static List<InboxRulesetProjectionHandlerEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetProjectionHandlerEnum>[]
      : json
          .map((value) => InboxRulesetProjectionHandlerEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetProjectionHandlerEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetProjectionHandlerEnum].
class InboxRulesetProjectionHandlerEnumTypeTransformer {
  const InboxRulesetProjectionHandlerEnumTypeTransformer._();

  factory InboxRulesetProjectionHandlerEnumTypeTransformer() => _instance ??= InboxRulesetProjectionHandlerEnumTypeTransformer._();

  String encode(InboxRulesetProjectionHandlerEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetProjectionHandlerEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetProjectionHandlerEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EXCEPTION': return InboxRulesetProjectionHandlerEnum.EXCEPTION;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetProjectionHandlerEnumTypeTransformer] instance.
  static InboxRulesetProjectionHandlerEnumTypeTransformer _instance;
}


class InboxRulesetProjectionScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRulesetProjectionScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVING_EMAILS = InboxRulesetProjectionScopeEnum._(r'RECEIVING_EMAILS');
  static const SENDING_EMAILS = InboxRulesetProjectionScopeEnum._(r'SENDING_EMAILS');

  /// List of all possible values in this [enum][InboxRulesetProjectionScopeEnum].
  static const values = <InboxRulesetProjectionScopeEnum>[
    RECEIVING_EMAILS,
    SENDING_EMAILS,
  ];

  static InboxRulesetProjectionScopeEnum fromJson(dynamic value) =>
    InboxRulesetProjectionScopeEnumTypeTransformer().decode(value);

  static List<InboxRulesetProjectionScopeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxRulesetProjectionScopeEnum>[]
      : json
          .map((value) => InboxRulesetProjectionScopeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxRulesetProjectionScopeEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetProjectionScopeEnum].
class InboxRulesetProjectionScopeEnumTypeTransformer {
  const InboxRulesetProjectionScopeEnumTypeTransformer._();

  factory InboxRulesetProjectionScopeEnumTypeTransformer() => _instance ??= InboxRulesetProjectionScopeEnumTypeTransformer._();

  String encode(InboxRulesetProjectionScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetProjectionScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetProjectionScopeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECEIVING_EMAILS': return InboxRulesetProjectionScopeEnum.RECEIVING_EMAILS;
      case r'SENDING_EMAILS': return InboxRulesetProjectionScopeEnum.SENDING_EMAILS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxRulesetProjectionScopeEnumTypeTransformer] instance.
  static InboxRulesetProjectionScopeEnumTypeTransformer _instance;
}

