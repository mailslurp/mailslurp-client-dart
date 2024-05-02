//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRulesetDto {
  /// Returns a new [InboxRulesetDto] instance.
  InboxRulesetDto({
    required this.id,
    this.inboxId,
    required this.scope,
    required this.action,
    required this.target,
    required this.handler,
    required this.createdAt,
  });

  String id;

  String? inboxId;

  InboxRulesetDtoScopeEnum scope;

  InboxRulesetDtoActionEnum action;

  String target;

  InboxRulesetDtoHandlerEnum handler;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRulesetDto &&
     other.id == id &&
     other.inboxId == inboxId &&
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
    (scope.hashCode) +
    (action.hashCode) +
    (target.hashCode) +
    (handler.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'InboxRulesetDto[id=$id, inboxId=$inboxId, scope=$scope, action=$action, target=$target, handler=$handler, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'action'] = this.action;
      json[r'target'] = this.target;
      json[r'handler'] = this.handler;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxRulesetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRulesetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRulesetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRulesetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRulesetDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        scope: InboxRulesetDtoScopeEnum.fromJson(json[r'scope'])!,
        action: InboxRulesetDtoActionEnum.fromJson(json[r'action'])!,
        target: mapValueOfType<String>(json, r'target')!,
        handler: InboxRulesetDtoHandlerEnum.fromJson(json[r'handler'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<InboxRulesetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRulesetDto> mapFromJson(dynamic json) {
    final map = <String, InboxRulesetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRulesetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRulesetDto-objects as value to a dart map
  static Map<String, List<InboxRulesetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRulesetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRulesetDto.listFromJson(entry.value, growable: growable,);
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

  static InboxRulesetDtoScopeEnum? fromJson(dynamic value) => InboxRulesetDtoScopeEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoScopeEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoScopeEnum].
class InboxRulesetDtoScopeEnumTypeTransformer {
  factory InboxRulesetDtoScopeEnumTypeTransformer() => _instance ??= const InboxRulesetDtoScopeEnumTypeTransformer._();

  const InboxRulesetDtoScopeEnumTypeTransformer._();

  String encode(InboxRulesetDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVING_EMAILS': return InboxRulesetDtoScopeEnum.RECEIVING_EMAILS;
        case r'SENDING_EMAILS': return InboxRulesetDtoScopeEnum.SENDING_EMAILS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoScopeEnumTypeTransformer] instance.
  static InboxRulesetDtoScopeEnumTypeTransformer? _instance;
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

  static InboxRulesetDtoActionEnum? fromJson(dynamic value) => InboxRulesetDtoActionEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetDtoActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetDtoActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoActionEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoActionEnum].
class InboxRulesetDtoActionEnumTypeTransformer {
  factory InboxRulesetDtoActionEnumTypeTransformer() => _instance ??= const InboxRulesetDtoActionEnumTypeTransformer._();

  const InboxRulesetDtoActionEnumTypeTransformer._();

  String encode(InboxRulesetDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BLOCK': return InboxRulesetDtoActionEnum.BLOCK;
        case r'ALLOW': return InboxRulesetDtoActionEnum.ALLOW;
        case r'FILTER_REMOVE': return InboxRulesetDtoActionEnum.FILTER_REMOVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoActionEnumTypeTransformer] instance.
  static InboxRulesetDtoActionEnumTypeTransformer? _instance;
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

  static InboxRulesetDtoHandlerEnum? fromJson(dynamic value) => InboxRulesetDtoHandlerEnumTypeTransformer().decode(value);

  static List<InboxRulesetDtoHandlerEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRulesetDtoHandlerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRulesetDtoHandlerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRulesetDtoHandlerEnum] to String,
/// and [decode] dynamic data back to [InboxRulesetDtoHandlerEnum].
class InboxRulesetDtoHandlerEnumTypeTransformer {
  factory InboxRulesetDtoHandlerEnumTypeTransformer() => _instance ??= const InboxRulesetDtoHandlerEnumTypeTransformer._();

  const InboxRulesetDtoHandlerEnumTypeTransformer._();

  String encode(InboxRulesetDtoHandlerEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRulesetDtoHandlerEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRulesetDtoHandlerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EXCEPTION': return InboxRulesetDtoHandlerEnum.EXCEPTION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRulesetDtoHandlerEnumTypeTransformer] instance.
  static InboxRulesetDtoHandlerEnumTypeTransformer? _instance;
}


