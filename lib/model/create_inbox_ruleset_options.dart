//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxRulesetOptions {
  /// Returns a new [CreateInboxRulesetOptions] instance.
  CreateInboxRulesetOptions({
    @required this.scope,
    @required this.action,
    @required this.target,
  });

  /// What type of emails actions to apply ruleset to. Either `SENDING_EMAILS` or `RECEIVING_EMAILS` will apply action and target to any sending or receiving of emails respectively.
  CreateInboxRulesetOptionsScopeEnum scope;

  /// Action to be taken when the ruleset matches an email for the given scope. For example: `BLOCK` action with target `*` and scope `SENDING_EMAILS` blocks sending to all recipients. Note `ALLOW` takes precedent over `BLOCK`. `FILTER_REMOVE` is like block but will remove offending email addresses during a send or receive event instead of blocking the action.
  CreateInboxRulesetOptionsActionEnum action;

  /// Target to match emails with. Can be a wild-card type pattern or a valid email address. For instance `*@gmail.com` matches all gmail addresses while `test@gmail.com` matches one address exactly. The target is applied to every recipient field email address when `SENDING_EMAILS` is the scope and is applied to sender of email when `RECEIVING_EMAILS`.
  String target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxRulesetOptions &&
     other.scope == scope &&
     other.action == action &&
     other.target == target;

  @override
  int get hashCode =>
    (scope == null ? 0 : scope.hashCode) +
    (action == null ? 0 : action.hashCode) +
    (target == null ? 0 : target.hashCode);

  @override
  String toString() => 'CreateInboxRulesetOptions[scope=$scope, action=$action, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scope'] = scope;
      json[r'action'] = action;
      json[r'target'] = target;
    return json;
  }

  /// Returns a new [CreateInboxRulesetOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInboxRulesetOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInboxRulesetOptions(
        scope: CreateInboxRulesetOptionsScopeEnum.fromJson(json[r'scope']),
        action: CreateInboxRulesetOptionsActionEnum.fromJson(json[r'action']),
        target: json[r'target'],
    );

  static List<CreateInboxRulesetOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxRulesetOptions>[]
      : json.map((v) => CreateInboxRulesetOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateInboxRulesetOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateInboxRulesetOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateInboxRulesetOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateInboxRulesetOptions-objects as value to a dart map
  static Map<String, List<CreateInboxRulesetOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateInboxRulesetOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateInboxRulesetOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// What type of emails actions to apply ruleset to. Either `SENDING_EMAILS` or `RECEIVING_EMAILS` will apply action and target to any sending or receiving of emails respectively.
class CreateInboxRulesetOptionsScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxRulesetOptionsScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVING_EMAILS = CreateInboxRulesetOptionsScopeEnum._(r'RECEIVING_EMAILS');
  static const SENDING_EMAILS = CreateInboxRulesetOptionsScopeEnum._(r'SENDING_EMAILS');

  /// List of all possible values in this [enum][CreateInboxRulesetOptionsScopeEnum].
  static const values = <CreateInboxRulesetOptionsScopeEnum>[
    RECEIVING_EMAILS,
    SENDING_EMAILS,
  ];

  static CreateInboxRulesetOptionsScopeEnum fromJson(dynamic value) =>
    CreateInboxRulesetOptionsScopeEnumTypeTransformer().decode(value);

  static List<CreateInboxRulesetOptionsScopeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxRulesetOptionsScopeEnum>[]
      : json
          .map((value) => CreateInboxRulesetOptionsScopeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateInboxRulesetOptionsScopeEnum] to String,
/// and [decode] dynamic data back to [CreateInboxRulesetOptionsScopeEnum].
class CreateInboxRulesetOptionsScopeEnumTypeTransformer {
  const CreateInboxRulesetOptionsScopeEnumTypeTransformer._();

  factory CreateInboxRulesetOptionsScopeEnumTypeTransformer() => _instance ??= CreateInboxRulesetOptionsScopeEnumTypeTransformer._();

  String encode(CreateInboxRulesetOptionsScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxRulesetOptionsScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxRulesetOptionsScopeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECEIVING_EMAILS': return CreateInboxRulesetOptionsScopeEnum.RECEIVING_EMAILS;
      case r'SENDING_EMAILS': return CreateInboxRulesetOptionsScopeEnum.SENDING_EMAILS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateInboxRulesetOptionsScopeEnumTypeTransformer] instance.
  static CreateInboxRulesetOptionsScopeEnumTypeTransformer _instance;
}

/// Action to be taken when the ruleset matches an email for the given scope. For example: `BLOCK` action with target `*` and scope `SENDING_EMAILS` blocks sending to all recipients. Note `ALLOW` takes precedent over `BLOCK`. `FILTER_REMOVE` is like block but will remove offending email addresses during a send or receive event instead of blocking the action.
class CreateInboxRulesetOptionsActionEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxRulesetOptionsActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BLOCK = CreateInboxRulesetOptionsActionEnum._(r'BLOCK');
  static const ALLOW = CreateInboxRulesetOptionsActionEnum._(r'ALLOW');
  static const FILTER_REMOVE = CreateInboxRulesetOptionsActionEnum._(r'FILTER_REMOVE');

  /// List of all possible values in this [enum][CreateInboxRulesetOptionsActionEnum].
  static const values = <CreateInboxRulesetOptionsActionEnum>[
    BLOCK,
    ALLOW,
    FILTER_REMOVE,
  ];

  static CreateInboxRulesetOptionsActionEnum fromJson(dynamic value) =>
    CreateInboxRulesetOptionsActionEnumTypeTransformer().decode(value);

  static List<CreateInboxRulesetOptionsActionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxRulesetOptionsActionEnum>[]
      : json
          .map((value) => CreateInboxRulesetOptionsActionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateInboxRulesetOptionsActionEnum] to String,
/// and [decode] dynamic data back to [CreateInboxRulesetOptionsActionEnum].
class CreateInboxRulesetOptionsActionEnumTypeTransformer {
  const CreateInboxRulesetOptionsActionEnumTypeTransformer._();

  factory CreateInboxRulesetOptionsActionEnumTypeTransformer() => _instance ??= CreateInboxRulesetOptionsActionEnumTypeTransformer._();

  String encode(CreateInboxRulesetOptionsActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxRulesetOptionsActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxRulesetOptionsActionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'BLOCK': return CreateInboxRulesetOptionsActionEnum.BLOCK;
      case r'ALLOW': return CreateInboxRulesetOptionsActionEnum.ALLOW;
      case r'FILTER_REMOVE': return CreateInboxRulesetOptionsActionEnum.FILTER_REMOVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateInboxRulesetOptionsActionEnumTypeTransformer] instance.
  static CreateInboxRulesetOptionsActionEnumTypeTransformer _instance;
}

