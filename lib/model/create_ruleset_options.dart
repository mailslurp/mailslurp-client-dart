//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateRulesetOptions {
  /// Returns a new [CreateRulesetOptions] instance.
  CreateRulesetOptions({
    required this.scope,
    required this.action,
    required this.target,
  });

  /// What type of emails actions to apply ruleset to. Either `SENDING_EMAILS` or `RECEIVING_EMAILS` will apply action and target to any sending or receiving of emails respectively.
  CreateRulesetOptionsScopeEnum scope;

  /// Action to be taken when the ruleset matches an email for the given scope. For example: `BLOCK` action with target `*` and scope `SENDING_EMAILS` blocks sending to all recipients. Note `ALLOW` takes precedent over `BLOCK`. `FILTER_REMOVE` is like block but will remove offending email addresses during a send or receive event instead of blocking the action.
  CreateRulesetOptionsActionEnum action;

  /// Target to match emails with. Can be a wild-card type pattern or a valid email address. For instance `*@gmail.com` matches all gmail addresses while `test@gmail.com` matches one address exactly. The target is applied to every recipient field email address when `SENDING_EMAILS` is the scope and is applied to sender of email when `RECEIVING_EMAILS`.
  String target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRulesetOptions &&
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
  String toString() => 'CreateRulesetOptions[scope=$scope, action=$action, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scope'] = this.scope;
      json[r'action'] = this.action;
      json[r'target'] = this.target;
    return json;
  }

  /// Returns a new [CreateRulesetOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRulesetOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRulesetOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRulesetOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRulesetOptions(
        scope: CreateRulesetOptionsScopeEnum.fromJson(json[r'scope'])!,
        action: CreateRulesetOptionsActionEnum.fromJson(json[r'action'])!,
        target: mapValueOfType<String>(json, r'target')!,
      );
    }
    return null;
  }

  static List<CreateRulesetOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRulesetOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRulesetOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRulesetOptions> mapFromJson(dynamic json) {
    final map = <String, CreateRulesetOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRulesetOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRulesetOptions-objects as value to a dart map
  static Map<String, List<CreateRulesetOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRulesetOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRulesetOptions.listFromJson(entry.value, growable: growable,);
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
class CreateRulesetOptionsScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateRulesetOptionsScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVING_EMAILS = CreateRulesetOptionsScopeEnum._(r'RECEIVING_EMAILS');
  static const SENDING_EMAILS = CreateRulesetOptionsScopeEnum._(r'SENDING_EMAILS');
  static const RECEIVING_SMS = CreateRulesetOptionsScopeEnum._(r'RECEIVING_SMS');
  static const SENDING_SMS = CreateRulesetOptionsScopeEnum._(r'SENDING_SMS');

  /// List of all possible values in this [enum][CreateRulesetOptionsScopeEnum].
  static const values = <CreateRulesetOptionsScopeEnum>[
    RECEIVING_EMAILS,
    SENDING_EMAILS,
    RECEIVING_SMS,
    SENDING_SMS,
  ];

  static CreateRulesetOptionsScopeEnum? fromJson(dynamic value) => CreateRulesetOptionsScopeEnumTypeTransformer().decode(value);

  static List<CreateRulesetOptionsScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRulesetOptionsScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRulesetOptionsScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateRulesetOptionsScopeEnum] to String,
/// and [decode] dynamic data back to [CreateRulesetOptionsScopeEnum].
class CreateRulesetOptionsScopeEnumTypeTransformer {
  factory CreateRulesetOptionsScopeEnumTypeTransformer() => _instance ??= const CreateRulesetOptionsScopeEnumTypeTransformer._();

  const CreateRulesetOptionsScopeEnumTypeTransformer._();

  String encode(CreateRulesetOptionsScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateRulesetOptionsScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateRulesetOptionsScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVING_EMAILS': return CreateRulesetOptionsScopeEnum.RECEIVING_EMAILS;
        case r'SENDING_EMAILS': return CreateRulesetOptionsScopeEnum.SENDING_EMAILS;
        case r'RECEIVING_SMS': return CreateRulesetOptionsScopeEnum.RECEIVING_SMS;
        case r'SENDING_SMS': return CreateRulesetOptionsScopeEnum.SENDING_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateRulesetOptionsScopeEnumTypeTransformer] instance.
  static CreateRulesetOptionsScopeEnumTypeTransformer? _instance;
}


/// Action to be taken when the ruleset matches an email for the given scope. For example: `BLOCK` action with target `*` and scope `SENDING_EMAILS` blocks sending to all recipients. Note `ALLOW` takes precedent over `BLOCK`. `FILTER_REMOVE` is like block but will remove offending email addresses during a send or receive event instead of blocking the action.
class CreateRulesetOptionsActionEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateRulesetOptionsActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BLOCK = CreateRulesetOptionsActionEnum._(r'BLOCK');
  static const ALLOW = CreateRulesetOptionsActionEnum._(r'ALLOW');
  static const FILTER_REMOVE = CreateRulesetOptionsActionEnum._(r'FILTER_REMOVE');
  static const BOUNCE_SOFT = CreateRulesetOptionsActionEnum._(r'BOUNCE_SOFT');
  static const BOUNCE_HARD = CreateRulesetOptionsActionEnum._(r'BOUNCE_HARD');

  /// List of all possible values in this [enum][CreateRulesetOptionsActionEnum].
  static const values = <CreateRulesetOptionsActionEnum>[
    BLOCK,
    ALLOW,
    FILTER_REMOVE,
    BOUNCE_SOFT,
    BOUNCE_HARD,
  ];

  static CreateRulesetOptionsActionEnum? fromJson(dynamic value) => CreateRulesetOptionsActionEnumTypeTransformer().decode(value);

  static List<CreateRulesetOptionsActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRulesetOptionsActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRulesetOptionsActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateRulesetOptionsActionEnum] to String,
/// and [decode] dynamic data back to [CreateRulesetOptionsActionEnum].
class CreateRulesetOptionsActionEnumTypeTransformer {
  factory CreateRulesetOptionsActionEnumTypeTransformer() => _instance ??= const CreateRulesetOptionsActionEnumTypeTransformer._();

  const CreateRulesetOptionsActionEnumTypeTransformer._();

  String encode(CreateRulesetOptionsActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateRulesetOptionsActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateRulesetOptionsActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BLOCK': return CreateRulesetOptionsActionEnum.BLOCK;
        case r'ALLOW': return CreateRulesetOptionsActionEnum.ALLOW;
        case r'FILTER_REMOVE': return CreateRulesetOptionsActionEnum.FILTER_REMOVE;
        case r'BOUNCE_SOFT': return CreateRulesetOptionsActionEnum.BOUNCE_SOFT;
        case r'BOUNCE_HARD': return CreateRulesetOptionsActionEnum.BOUNCE_HARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateRulesetOptionsActionEnumTypeTransformer] instance.
  static CreateRulesetOptionsActionEnumTypeTransformer? _instance;
}


