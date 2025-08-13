//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RulesetDto {
  /// Returns a new [RulesetDto] instance.
  RulesetDto({
    required this.id,
    this.inboxId,
    this.phoneId,
    required this.scope,
    required this.action,
    required this.target,
    required this.handler,
    required this.createdAt,
  });

  String id;

  String? inboxId;

  String? phoneId;

  RulesetDtoScopeEnum scope;

  RulesetDtoActionEnum action;

  String target;

  RulesetDtoHandlerEnum handler;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RulesetDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.phoneId == phoneId &&
     other.scope == scope &&
     other.action == action &&
     other.target == target &&
     other.handler == handler &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (phoneId == null ? 0 : phoneId!.hashCode) +
    (scope.hashCode) +
    (action.hashCode) +
    (target.hashCode) +
    (handler.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'RulesetDto[id=$id, inboxId=$inboxId, phoneId=$phoneId, scope=$scope, action=$action, target=$target, handler=$handler, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.phoneId != null) {
      json[r'phoneId'] = this.phoneId;
    } else {
      json[r'phoneId'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'action'] = this.action;
      json[r'target'] = this.target;
      json[r'handler'] = this.handler;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [RulesetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RulesetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RulesetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RulesetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RulesetDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        phoneId: mapValueOfType<String>(json, r'phoneId'),
        scope: RulesetDtoScopeEnum.fromJson(json[r'scope'])!,
        action: RulesetDtoActionEnum.fromJson(json[r'action'])!,
        target: mapValueOfType<String>(json, r'target')!,
        handler: RulesetDtoHandlerEnum.fromJson(json[r'handler'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<RulesetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RulesetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RulesetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RulesetDto> mapFromJson(dynamic json) {
    final map = <String, RulesetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RulesetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RulesetDto-objects as value to a dart map
  static Map<String, List<RulesetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RulesetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RulesetDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scope',
    'action',
    'target',
    'handler',
    'createdAt',
  };
}


class RulesetDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const RulesetDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVING_EMAILS = RulesetDtoScopeEnum._(r'RECEIVING_EMAILS');
  static const SENDING_EMAILS = RulesetDtoScopeEnum._(r'SENDING_EMAILS');
  static const RECEIVING_SMS = RulesetDtoScopeEnum._(r'RECEIVING_SMS');
  static const SENDING_SMS = RulesetDtoScopeEnum._(r'SENDING_SMS');

  /// List of all possible values in this [enum][RulesetDtoScopeEnum].
  static const values = <RulesetDtoScopeEnum>[
    RECEIVING_EMAILS,
    SENDING_EMAILS,
    RECEIVING_SMS,
    SENDING_SMS,
  ];

  static RulesetDtoScopeEnum? fromJson(dynamic value) => RulesetDtoScopeEnumTypeTransformer().decode(value);

  static List<RulesetDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RulesetDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RulesetDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RulesetDtoScopeEnum] to String,
/// and [decode] dynamic data back to [RulesetDtoScopeEnum].
class RulesetDtoScopeEnumTypeTransformer {
  factory RulesetDtoScopeEnumTypeTransformer() => _instance ??= const RulesetDtoScopeEnumTypeTransformer._();

  const RulesetDtoScopeEnumTypeTransformer._();

  String encode(RulesetDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RulesetDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RulesetDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVING_EMAILS': return RulesetDtoScopeEnum.RECEIVING_EMAILS;
        case r'SENDING_EMAILS': return RulesetDtoScopeEnum.SENDING_EMAILS;
        case r'RECEIVING_SMS': return RulesetDtoScopeEnum.RECEIVING_SMS;
        case r'SENDING_SMS': return RulesetDtoScopeEnum.SENDING_SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RulesetDtoScopeEnumTypeTransformer] instance.
  static RulesetDtoScopeEnumTypeTransformer? _instance;
}



class RulesetDtoActionEnum {
  /// Instantiate a new enum with the provided [value].
  const RulesetDtoActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BLOCK = RulesetDtoActionEnum._(r'BLOCK');
  static const ALLOW = RulesetDtoActionEnum._(r'ALLOW');
  static const FILTER_REMOVE = RulesetDtoActionEnum._(r'FILTER_REMOVE');
  static const BOUNCE_SOFT = RulesetDtoActionEnum._(r'BOUNCE_SOFT');
  static const BOUNCE_HARD = RulesetDtoActionEnum._(r'BOUNCE_HARD');

  /// List of all possible values in this [enum][RulesetDtoActionEnum].
  static const values = <RulesetDtoActionEnum>[
    BLOCK,
    ALLOW,
    FILTER_REMOVE,
    BOUNCE_SOFT,
    BOUNCE_HARD,
  ];

  static RulesetDtoActionEnum? fromJson(dynamic value) => RulesetDtoActionEnumTypeTransformer().decode(value);

  static List<RulesetDtoActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RulesetDtoActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RulesetDtoActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RulesetDtoActionEnum] to String,
/// and [decode] dynamic data back to [RulesetDtoActionEnum].
class RulesetDtoActionEnumTypeTransformer {
  factory RulesetDtoActionEnumTypeTransformer() => _instance ??= const RulesetDtoActionEnumTypeTransformer._();

  const RulesetDtoActionEnumTypeTransformer._();

  String encode(RulesetDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RulesetDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RulesetDtoActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BLOCK': return RulesetDtoActionEnum.BLOCK;
        case r'ALLOW': return RulesetDtoActionEnum.ALLOW;
        case r'FILTER_REMOVE': return RulesetDtoActionEnum.FILTER_REMOVE;
        case r'BOUNCE_SOFT': return RulesetDtoActionEnum.BOUNCE_SOFT;
        case r'BOUNCE_HARD': return RulesetDtoActionEnum.BOUNCE_HARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RulesetDtoActionEnumTypeTransformer] instance.
  static RulesetDtoActionEnumTypeTransformer? _instance;
}



class RulesetDtoHandlerEnum {
  /// Instantiate a new enum with the provided [value].
  const RulesetDtoHandlerEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXCEPTION = RulesetDtoHandlerEnum._(r'EXCEPTION');

  /// List of all possible values in this [enum][RulesetDtoHandlerEnum].
  static const values = <RulesetDtoHandlerEnum>[
    EXCEPTION,
  ];

  static RulesetDtoHandlerEnum? fromJson(dynamic value) => RulesetDtoHandlerEnumTypeTransformer().decode(value);

  static List<RulesetDtoHandlerEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RulesetDtoHandlerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RulesetDtoHandlerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RulesetDtoHandlerEnum] to String,
/// and [decode] dynamic data back to [RulesetDtoHandlerEnum].
class RulesetDtoHandlerEnumTypeTransformer {
  factory RulesetDtoHandlerEnumTypeTransformer() => _instance ??= const RulesetDtoHandlerEnumTypeTransformer._();

  const RulesetDtoHandlerEnumTypeTransformer._();

  String encode(RulesetDtoHandlerEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RulesetDtoHandlerEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RulesetDtoHandlerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EXCEPTION': return RulesetDtoHandlerEnum.EXCEPTION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RulesetDtoHandlerEnumTypeTransformer] instance.
  static RulesetDtoHandlerEnumTypeTransformer? _instance;
}


