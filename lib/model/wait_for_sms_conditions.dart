//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForSmsConditions {
  /// Returns a new [WaitForSmsConditions] instance.
  WaitForSmsConditions({
    required this.phoneNumberId,
    this.limit,
    required this.count,
    this.delayTimeout,
    required this.timeout,
    this.unreadOnly,
    this.countType,
    this.matches = const [],
    this.sortDirection,
    this.since,
    this.before,
  });

  /// ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count.
  String phoneNumberId;

  /// Limit results
  int? limit;

  /// Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
  int count;

  /// Max time in milliseconds to wait between retries if a `timeout` is specified.
  int? delayTimeout;

  /// Max time in milliseconds to retry the `waitFor` operation until conditions are met.
  int timeout;

  /// Apply conditions only to **unread** SMS. All SMS messages begin with `read=false`. An SMS is marked `read=true` when an `SMS` has been returned to the user at least once. For example you have called `getSms` or `waitForSms` etc., or you have viewed the SMS in the dashboard.
  bool? unreadOnly;

  /// How result size should be compared with the expected size. Exactly or at-least matching result?
  WaitForSmsConditionsCountTypeEnum? countType;

  /// Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for.
  List<SmsMatchOption>? matches;

  /// Direction to sort matching SMSs by created time
  WaitForSmsConditionsSortDirectionEnum? sortDirection;

  /// ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date
  DateTime? since;

  /// ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date
  DateTime? before;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForSmsConditions &&
     other.phoneNumberId == phoneNumberId &&
     other.limit == limit &&
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
    (phoneNumberId.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (count.hashCode) +
    (delayTimeout == null ? 0 : delayTimeout!.hashCode) +
    (timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly!.hashCode) +
    (countType == null ? 0 : countType!.hashCode) +
    (matches == null ? 0 : matches!.hashCode) +
    (sortDirection == null ? 0 : sortDirection!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode);

  @override
  String toString() => 'WaitForSmsConditions[phoneNumberId=$phoneNumberId, limit=$limit, count=$count, delayTimeout=$delayTimeout, timeout=$timeout, unreadOnly=$unreadOnly, countType=$countType, matches=$matches, sortDirection=$sortDirection, since=$since, before=$before]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumberId'] = this.phoneNumberId;
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
      json[r'count'] = this.count;
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

  /// Returns a new [WaitForSmsConditions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitForSmsConditions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitForSmsConditions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitForSmsConditions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitForSmsConditions(
        phoneNumberId: mapValueOfType<String>(json, r'phoneNumberId')!,
        limit: mapValueOfType<int>(json, r'limit'),
        count: mapValueOfType<int>(json, r'count')!,
        delayTimeout: mapValueOfType<int>(json, r'delayTimeout'),
        timeout: mapValueOfType<int>(json, r'timeout')!,
        unreadOnly: mapValueOfType<bool>(json, r'unreadOnly'),
        countType: WaitForSmsConditionsCountTypeEnum.fromJson(json[r'countType']),
        matches: SmsMatchOption.listFromJson(json[r'matches']),
        sortDirection: WaitForSmsConditionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
      );
    }
    return null;
  }

  static List<WaitForSmsConditions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForSmsConditions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForSmsConditions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitForSmsConditions> mapFromJson(dynamic json) {
    final map = <String, WaitForSmsConditions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForSmsConditions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitForSmsConditions-objects as value to a dart map
  static Map<String, List<WaitForSmsConditions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitForSmsConditions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WaitForSmsConditions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumberId',
    'count',
    'timeout',
  };
}

/// How result size should be compared with the expected size. Exactly or at-least matching result?
class WaitForSmsConditionsCountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForSmsConditionsCountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EXACTLY = WaitForSmsConditionsCountTypeEnum._(r'EXACTLY');
  static const ATLEAST = WaitForSmsConditionsCountTypeEnum._(r'ATLEAST');

  /// List of all possible values in this [enum][WaitForSmsConditionsCountTypeEnum].
  static const values = <WaitForSmsConditionsCountTypeEnum>[
    EXACTLY,
    ATLEAST,
  ];

  static WaitForSmsConditionsCountTypeEnum? fromJson(dynamic value) => WaitForSmsConditionsCountTypeEnumTypeTransformer().decode(value);

  static List<WaitForSmsConditionsCountTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForSmsConditionsCountTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForSmsConditionsCountTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForSmsConditionsCountTypeEnum] to String,
/// and [decode] dynamic data back to [WaitForSmsConditionsCountTypeEnum].
class WaitForSmsConditionsCountTypeEnumTypeTransformer {
  factory WaitForSmsConditionsCountTypeEnumTypeTransformer() => _instance ??= const WaitForSmsConditionsCountTypeEnumTypeTransformer._();

  const WaitForSmsConditionsCountTypeEnumTypeTransformer._();

  String encode(WaitForSmsConditionsCountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSmsConditionsCountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSmsConditionsCountTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EXACTLY': return WaitForSmsConditionsCountTypeEnum.EXACTLY;
        case r'ATLEAST': return WaitForSmsConditionsCountTypeEnum.ATLEAST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForSmsConditionsCountTypeEnumTypeTransformer] instance.
  static WaitForSmsConditionsCountTypeEnumTypeTransformer? _instance;
}


/// Direction to sort matching SMSs by created time
class WaitForSmsConditionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForSmsConditionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = WaitForSmsConditionsSortDirectionEnum._(r'ASC');
  static const DESC = WaitForSmsConditionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][WaitForSmsConditionsSortDirectionEnum].
  static const values = <WaitForSmsConditionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static WaitForSmsConditionsSortDirectionEnum? fromJson(dynamic value) => WaitForSmsConditionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForSmsConditionsSortDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForSmsConditionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForSmsConditionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForSmsConditionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForSmsConditionsSortDirectionEnum].
class WaitForSmsConditionsSortDirectionEnumTypeTransformer {
  factory WaitForSmsConditionsSortDirectionEnumTypeTransformer() => _instance ??= const WaitForSmsConditionsSortDirectionEnumTypeTransformer._();

  const WaitForSmsConditionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForSmsConditionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSmsConditionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSmsConditionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return WaitForSmsConditionsSortDirectionEnum.ASC;
        case r'DESC': return WaitForSmsConditionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForSmsConditionsSortDirectionEnumTypeTransformer] instance.
  static WaitForSmsConditionsSortDirectionEnumTypeTransformer? _instance;
}


