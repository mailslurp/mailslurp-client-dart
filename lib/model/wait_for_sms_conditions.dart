//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForSmsConditions {
  /// Returns a new [WaitForSmsConditions] instance.
  WaitForSmsConditions({
    @required this.phoneNumberId,
    this.limit,
    @required this.count,
    this.delayTimeout,
    @required this.timeout,
    this.unreadOnly,
    this.countType,
    this.matches,
    this.sortDirection,
    this.since,
    this.before,
  });

  /// ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count.
  String phoneNumberId;

  /// Limit results
  int limit;

  /// Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
  int count;

  /// Max time in milliseconds to wait between retries if a `timeout` is specified.
  int delayTimeout;

  /// Max time in milliseconds to retry the `waitFor` operation until conditions are met.
  int timeout;

  /// Apply conditions only to **unread** SMS. All SMS messages begin with `read=false`. An SMS is marked `read=true` when an `SMS` has been returned to the user at least once. For example you have called `getSms` or `waitForSms` etc., or you have viewed the SMS in the dashboard.
  bool unreadOnly;

  /// How result size should be compared with the expected size. Exactly or at-least matching result?
  WaitForSmsConditionsCountTypeEnum countType;

  /// Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for.
  List<SmsMatchOption> matches;

  /// Direction to sort matching SMSs by created time
  WaitForSmsConditionsSortDirectionEnum sortDirection;

  /// ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date
  DateTime since;

  /// ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date
  DateTime before;

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
    (phoneNumberId == null ? 0 : phoneNumberId.hashCode) +
    (limit == null ? 0 : limit.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (delayTimeout == null ? 0 : delayTimeout.hashCode) +
    (timeout == null ? 0 : timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly.hashCode) +
    (countType == null ? 0 : countType.hashCode) +
    (matches == null ? 0 : matches.hashCode) +
    (sortDirection == null ? 0 : sortDirection.hashCode) +
    (since == null ? 0 : since.hashCode) +
    (before == null ? 0 : before.hashCode);

  @override
  String toString() => 'WaitForSmsConditions[phoneNumberId=$phoneNumberId, limit=$limit, count=$count, delayTimeout=$delayTimeout, timeout=$timeout, unreadOnly=$unreadOnly, countType=$countType, matches=$matches, sortDirection=$sortDirection, since=$since, before=$before]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumberId'] = phoneNumberId;
    if (limit != null) {
      json[r'limit'] = limit;
    }
      json[r'count'] = count;
    if (delayTimeout != null) {
      json[r'delayTimeout'] = delayTimeout;
    }
      json[r'timeout'] = timeout;
    if (unreadOnly != null) {
      json[r'unreadOnly'] = unreadOnly;
    }
    if (countType != null) {
      json[r'countType'] = countType;
    }
    if (matches != null) {
      json[r'matches'] = matches;
    }
    if (sortDirection != null) {
      json[r'sortDirection'] = sortDirection;
    }
    if (since != null) {
      json[r'since'] = since.toUtc().toIso8601String();
    }
    if (before != null) {
      json[r'before'] = before.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [WaitForSmsConditions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WaitForSmsConditions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WaitForSmsConditions(
        phoneNumberId: json[r'phoneNumberId'],
        limit: json[r'limit'],
        count: json[r'count'],
        delayTimeout: json[r'delayTimeout'],
        timeout: json[r'timeout'],
        unreadOnly: json[r'unreadOnly'],
        countType: WaitForSmsConditionsCountTypeEnum.fromJson(json[r'countType']),
        matches: SmsMatchOption.listFromJson(json[r'matches']),
        sortDirection: WaitForSmsConditionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        since: json[r'since'] == null
          ? null
          : DateTime.parse(json[r'since']),
        before: json[r'before'] == null
          ? null
          : DateTime.parse(json[r'before']),
    );

  static List<WaitForSmsConditions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForSmsConditions>[]
      : json.map((v) => WaitForSmsConditions.fromJson(v)).toList(growable: true == growable);

  static Map<String, WaitForSmsConditions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WaitForSmsConditions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WaitForSmsConditions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WaitForSmsConditions-objects as value to a dart map
  static Map<String, List<WaitForSmsConditions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WaitForSmsConditions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WaitForSmsConditions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static WaitForSmsConditionsCountTypeEnum fromJson(dynamic value) =>
    WaitForSmsConditionsCountTypeEnumTypeTransformer().decode(value);

  static List<WaitForSmsConditionsCountTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForSmsConditionsCountTypeEnum>[]
      : json
          .map((value) => WaitForSmsConditionsCountTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WaitForSmsConditionsCountTypeEnum] to String,
/// and [decode] dynamic data back to [WaitForSmsConditionsCountTypeEnum].
class WaitForSmsConditionsCountTypeEnumTypeTransformer {
  const WaitForSmsConditionsCountTypeEnumTypeTransformer._();

  factory WaitForSmsConditionsCountTypeEnumTypeTransformer() => _instance ??= WaitForSmsConditionsCountTypeEnumTypeTransformer._();

  String encode(WaitForSmsConditionsCountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSmsConditionsCountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSmsConditionsCountTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EXACTLY': return WaitForSmsConditionsCountTypeEnum.EXACTLY;
      case r'ATLEAST': return WaitForSmsConditionsCountTypeEnum.ATLEAST;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WaitForSmsConditionsCountTypeEnumTypeTransformer] instance.
  static WaitForSmsConditionsCountTypeEnumTypeTransformer _instance;
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

  static WaitForSmsConditionsSortDirectionEnum fromJson(dynamic value) =>
    WaitForSmsConditionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForSmsConditionsSortDirectionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForSmsConditionsSortDirectionEnum>[]
      : json
          .map((value) => WaitForSmsConditionsSortDirectionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WaitForSmsConditionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForSmsConditionsSortDirectionEnum].
class WaitForSmsConditionsSortDirectionEnumTypeTransformer {
  const WaitForSmsConditionsSortDirectionEnumTypeTransformer._();

  factory WaitForSmsConditionsSortDirectionEnumTypeTransformer() => _instance ??= WaitForSmsConditionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForSmsConditionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSmsConditionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSmsConditionsSortDirectionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ASC': return WaitForSmsConditionsSortDirectionEnum.ASC;
      case r'DESC': return WaitForSmsConditionsSortDirectionEnum.DESC;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WaitForSmsConditionsSortDirectionEnumTypeTransformer] instance.
  static WaitForSmsConditionsSortDirectionEnumTypeTransformer _instance;
}

