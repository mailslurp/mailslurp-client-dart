//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForConditions {
  /// Returns a new [WaitForConditions] instance.
  WaitForConditions({
    required this.inboxId,
    this.count,
    this.delayTimeout,
    required this.timeout,
    this.unreadOnly,
    this.countType,
    this.matches = const [],
    this.sortDirection,
    this.since,
    this.before,
  });

  /// ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count.
  String inboxId;

  /// Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
  int? count;

  /// Max time in milliseconds to wait between retries if a `timeout` is specified.
  int? delayTimeout;

  /// Max time in milliseconds to retry the `waitFor` operation until conditions are met.
  int timeout;

  /// Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard.
  bool? unreadOnly;

  /// How result size should be compared with the expected size. Exactly or at-least matching result?
  WaitForConditionsCountTypeEnum? countType;

  /// Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for.
  List<MatchOption>? matches;

  /// Direction to sort matching emails by created time
  WaitForConditionsSortDirectionEnum? sortDirection;

  /// ISO Date Time earliest time of email to consider. Filter for matching emails that were received after this date
  DateTime? since;

  /// ISO Date Time latest time of email to consider. Filter for matching emails that were received before this date
  DateTime? before;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForConditions &&
     other.inboxId == inboxId &&
     other.count == count &&
     other.delayTimeout == delayTimeout &&
     other.timeout == timeout &&
     other.unreadOnly == unreadOnly &&
     other.countType == countType &&
     other.matches == matches &&
     other.sortDirection == sortDirection &&
     other.since == since &&
     other.before == before;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (delayTimeout == null ? 0 : delayTimeout!.hashCode) +
    (timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly!.hashCode) +
    (countType == null ? 0 : countType!.hashCode) +
    (matches == null ? 0 : matches!.hashCode) +
    (sortDirection == null ? 0 : sortDirection!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode);

  @override
  String toString() => 'WaitForConditions[inboxId=$inboxId, count=$count, delayTimeout=$delayTimeout, timeout=$timeout, unreadOnly=$unreadOnly, countType=$countType, matches=$matches, sortDirection=$sortDirection, since=$since, before=$before]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = this.inboxId;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.delayTimeout != null) {
      json[r'delayTimeout'] = this.delayTimeout;
    } else {
      json[r'delayTimeout'] = null;
    }
      json[r'timeout'] = this.timeout;
    if (this.unreadOnly != null) {
      json[r'unreadOnly'] = this.unreadOnly;
    } else {
      json[r'unreadOnly'] = null;
    }
    if (this.countType != null) {
      json[r'countType'] = this.countType;
    } else {
      json[r'countType'] = null;
    }
    if (this.matches != null) {
      json[r'matches'] = this.matches;
    } else {
      json[r'matches'] = null;
    }
    if (this.sortDirection != null) {
      json[r'sortDirection'] = this.sortDirection;
    } else {
      json[r'sortDirection'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    return json;
  }

  /// Returns a new [WaitForConditions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitForConditions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitForConditions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitForConditions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitForConditions(
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        count: mapValueOfType<int>(json, r'count'),
        delayTimeout: mapValueOfType<int>(json, r'delayTimeout'),
        timeout: mapValueOfType<int>(json, r'timeout')!,
        unreadOnly: mapValueOfType<bool>(json, r'unreadOnly'),
        countType: WaitForConditionsCountTypeEnum.fromJson(json[r'countType']),
        matches: MatchOption.listFromJson(json[r'matches']) ?? const [],
        sortDirection: WaitForConditionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
      );
    }
    return null;
  }

  static List<WaitForConditions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForConditions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForConditions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitForConditions> mapFromJson(dynamic json) {
    final map = <String, WaitForConditions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForConditions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitForConditions-objects as value to a dart map
  static Map<String, List<WaitForConditions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitForConditions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForConditions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'timeout',
  };
}

/// How result size should be compared with the expected size. Exactly or at-least matching result?
class WaitForConditionsCountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForConditionsCountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXACTLY = WaitForConditionsCountTypeEnum._(r'EXACTLY');
  static const ATLEAST = WaitForConditionsCountTypeEnum._(r'ATLEAST');

  /// List of all possible values in this [enum][WaitForConditionsCountTypeEnum].
  static const values = <WaitForConditionsCountTypeEnum>[
    EXACTLY,
    ATLEAST,
  ];

  static WaitForConditionsCountTypeEnum? fromJson(dynamic value) => WaitForConditionsCountTypeEnumTypeTransformer().decode(value);

  static List<WaitForConditionsCountTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForConditionsCountTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForConditionsCountTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForConditionsCountTypeEnum] to String,
/// and [decode] dynamic data back to [WaitForConditionsCountTypeEnum].
class WaitForConditionsCountTypeEnumTypeTransformer {
  factory WaitForConditionsCountTypeEnumTypeTransformer() => _instance ??= const WaitForConditionsCountTypeEnumTypeTransformer._();

  const WaitForConditionsCountTypeEnumTypeTransformer._();

  String encode(WaitForConditionsCountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForConditionsCountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForConditionsCountTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EXACTLY': return WaitForConditionsCountTypeEnum.EXACTLY;
        case r'ATLEAST': return WaitForConditionsCountTypeEnum.ATLEAST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForConditionsCountTypeEnumTypeTransformer] instance.
  static WaitForConditionsCountTypeEnumTypeTransformer? _instance;
}


/// Direction to sort matching emails by created time
class WaitForConditionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForConditionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = WaitForConditionsSortDirectionEnum._(r'ASC');
  static const DESC = WaitForConditionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][WaitForConditionsSortDirectionEnum].
  static const values = <WaitForConditionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static WaitForConditionsSortDirectionEnum? fromJson(dynamic value) => WaitForConditionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForConditionsSortDirectionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForConditionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForConditionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForConditionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForConditionsSortDirectionEnum].
class WaitForConditionsSortDirectionEnumTypeTransformer {
  factory WaitForConditionsSortDirectionEnumTypeTransformer() => _instance ??= const WaitForConditionsSortDirectionEnumTypeTransformer._();

  const WaitForConditionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForConditionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForConditionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForConditionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return WaitForConditionsSortDirectionEnum.ASC;
        case r'DESC': return WaitForConditionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForConditionsSortDirectionEnumTypeTransformer] instance.
  static WaitForConditionsSortDirectionEnumTypeTransformer? _instance;
}


