//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxRulesetOptions {
  /// Returns a new [CreateInboxRulesetOptions] instance.
  CreateInboxRulesetOptions({
    required this.scope,
    required this.action,
    required this.target,
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
    // ignore: unnecessary_parenthesis
    (scope.hashCode) +
    (action.hashCode) +
    (target.hashCode);

  @override
  String toString() => 'CreateInboxRulesetOptions[scope=$scope, action=$action, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scope'] = this.scope;
      json[r'action'] = this.action;
      json[r'target'] = this.target;
    return json;
  }

  /// Returns a new [CreateInboxRulesetOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxRulesetOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxRulesetOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxRulesetOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxRulesetOptions(
        scope: CreateInboxRulesetOptionsScopeEnum.fromJson(json[r'scope'])!,
        action: CreateInboxRulesetOptionsActionEnum.fromJson(json[r'action'])!,
        target: mapValueOfType<String>(json, r'target')!,
      );
    }
    return null;
  }

  static List<CreateInboxRulesetOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRulesetOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRulesetOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxRulesetOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxRulesetOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxRulesetOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxRulesetOptions-objects as value to a dart map
  static Map<String, List<CreateInboxRulesetOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxRulesetOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxRulesetOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scope',
    'action',
    'target',
  };
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

  static CreateInboxRulesetOptionsScopeEnum? fromJson(dynamic value) => CreateInboxRulesetOptionsScopeEnumTypeTransformer().decode(value);

  static List<CreateInboxRulesetOptionsScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRulesetOptionsScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRulesetOptionsScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxRulesetOptionsScopeEnum] to String,
/// and [decode] dynamic data back to [CreateInboxRulesetOptionsScopeEnum].
class CreateInboxRulesetOptionsScopeEnumTypeTransformer {
  factory CreateInboxRulesetOptionsScopeEnumTypeTransformer() => _instance ??= const CreateInboxRulesetOptionsScopeEnumTypeTransformer._();

  const CreateInboxRulesetOptionsScopeEnumTypeTransformer._();

  String encode(CreateInboxRulesetOptionsScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxRulesetOptionsScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxRulesetOptionsScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVING_EMAILS': return CreateInboxRulesetOptionsScopeEnum.RECEIVING_EMAILS;
        case r'SENDING_EMAILS': return CreateInboxRulesetOptionsScopeEnum.SENDING_EMAILS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxRulesetOptionsScopeEnumTypeTransformer] instance.
  static CreateInboxRulesetOptionsScopeEnumTypeTransformer? _instance;
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
  static const BOUNCE_SOFT = CreateInboxRulesetOptionsActionEnum._(r'BOUNCE_SOFT');
  static const BOUNCE_HARD = CreateInboxRulesetOptionsActionEnum._(r'BOUNCE_HARD');

  /// List of all possible values in this [enum][CreateInboxRulesetOptionsActionEnum].
  static const values = <CreateInboxRulesetOptionsActionEnum>[
    BLOCK,
    ALLOW,
    FILTER_REMOVE,
    BOUNCE_SOFT,
    BOUNCE_HARD,
  ];

  static CreateInboxRulesetOptionsActionEnum? fromJson(dynamic value) => CreateInboxRulesetOptionsActionEnumTypeTransformer().decode(value);

  static List<CreateInboxRulesetOptionsActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRulesetOptionsActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRulesetOptionsActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxRulesetOptionsActionEnum] to String,
/// and [decode] dynamic data back to [CreateInboxRulesetOptionsActionEnum].
class CreateInboxRulesetOptionsActionEnumTypeTransformer {
  factory CreateInboxRulesetOptionsActionEnumTypeTransformer() => _instance ??= const CreateInboxRulesetOptionsActionEnumTypeTransformer._();

  const CreateInboxRulesetOptionsActionEnumTypeTransformer._();

  String encode(CreateInboxRulesetOptionsActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxRulesetOptionsActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxRulesetOptionsActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BLOCK': return CreateInboxRulesetOptionsActionEnum.BLOCK;
        case r'ALLOW': return CreateInboxRulesetOptionsActionEnum.ALLOW;
        case r'FILTER_REMOVE': return CreateInboxRulesetOptionsActionEnum.FILTER_REMOVE;
        case r'BOUNCE_SOFT': return CreateInboxRulesetOptionsActionEnum.BOUNCE_SOFT;
        case r'BOUNCE_HARD': return CreateInboxRulesetOptionsActionEnum.BOUNCE_HARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxRulesetOptionsActionEnumTypeTransformer] instance.
  static CreateInboxRulesetOptionsActionEnumTypeTransformer? _instance;
}


