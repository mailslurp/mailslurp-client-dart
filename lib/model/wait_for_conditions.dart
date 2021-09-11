//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForConditions {
  /// Returns a new [WaitForConditions] instance.
  WaitForConditions({
    this.before,
    this.count,
    this.countType,
    this.delayTimeout,
    @required this.inboxId,
    this.matches = const [],
    this.since,
    this.sortDirection,
    @required this.timeout,
    this.unreadOnly,
  });

  /// ISO Date Time latest time of email to consider. Filter for matching emails that were received before this date
  DateTime before;

  /// Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
  int count;

  /// How should the found count be compared to the expected count.
  WaitForConditionsCountTypeEnum countType;

  /// Max time in milliseconds to wait between retries if a `timeout` is specified.
  int delayTimeout;

  /// ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count.
  String inboxId;

  /// Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for.
  List<MatchOption> matches;

  /// ISO Date Time earliest time of email to consider. Filter for matching emails that were received after this date
  DateTime since;

  /// Direction to sort matching emails by created time
  WaitForConditionsSortDirectionEnum sortDirection;

  /// Max time in milliseconds to retry the `waitFor` operation until conditions are met.
  int timeout;

  /// Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard.
  bool unreadOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForConditions &&
     other.before == before &&
     other.count == count &&
     other.countType == countType &&
     other.delayTimeout == delayTimeout &&
     other.inboxId == inboxId &&
     other.matches == matches &&
     other.since == since &&
     other.sortDirection == sortDirection &&
     other.timeout == timeout &&
     other.unreadOnly == unreadOnly;

  @override
  int get hashCode =>
    (before == null ? 0 : before.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (countType == null ? 0 : countType.hashCode) +
    (delayTimeout == null ? 0 : delayTimeout.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (matches == null ? 0 : matches.hashCode) +
    (since == null ? 0 : since.hashCode) +
    (sortDirection == null ? 0 : sortDirection.hashCode) +
    (timeout == null ? 0 : timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly.hashCode);

  @override
  String toString() => 'WaitForConditions[before=$before, count=$count, countType=$countType, delayTimeout=$delayTimeout, inboxId=$inboxId, matches=$matches, since=$since, sortDirection=$sortDirection, timeout=$timeout, unreadOnly=$unreadOnly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (before != null) {
      json[r'before'] = before.toUtc().toIso8601String();
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (countType != null) {
      json[r'countType'] = countType;
    }
    if (delayTimeout != null) {
      json[r'delayTimeout'] = delayTimeout;
    }
      json[r'inboxId'] = inboxId;
    if (matches != null) {
      json[r'matches'] = matches;
    }
    if (since != null) {
      json[r'since'] = since.toUtc().toIso8601String();
    }
    if (sortDirection != null) {
      json[r'sortDirection'] = sortDirection;
    }
      json[r'timeout'] = timeout;
    if (unreadOnly != null) {
      json[r'unreadOnly'] = unreadOnly;
    }
    return json;
  }

  /// Returns a new [WaitForConditions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WaitForConditions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WaitForConditions(
        before: json[r'before'] == null
          ? null
          : DateTime.parse(json[r'before']),
        count: json[r'count'],
        countType: WaitForConditionsCountTypeEnum.fromJson(json[r'countType']),
        delayTimeout: json[r'delayTimeout'],
        inboxId: json[r'inboxId'],
        matches: MatchOption.listFromJson(json[r'matches']),
        since: json[r'since'] == null
          ? null
          : DateTime.parse(json[r'since']),
        sortDirection: WaitForConditionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        timeout: json[r'timeout'],
        unreadOnly: json[r'unreadOnly'],
    );

  static List<WaitForConditions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForConditions>[]
      : json.map((v) => WaitForConditions.fromJson(v)).toList(growable: true == growable);

  static Map<String, WaitForConditions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WaitForConditions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WaitForConditions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WaitForConditions-objects as value to a dart map
  static Map<String, List<WaitForConditions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WaitForConditions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WaitForConditions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// How should the found count be compared to the expected count.
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

  static WaitForConditionsCountTypeEnum fromJson(dynamic value) =>
    WaitForConditionsCountTypeEnumTypeTransformer().decode(value);

  static List<WaitForConditionsCountTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForConditionsCountTypeEnum>[]
      : json
          .map((value) => WaitForConditionsCountTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WaitForConditionsCountTypeEnum] to String,
/// and [decode] dynamic data back to [WaitForConditionsCountTypeEnum].
class WaitForConditionsCountTypeEnumTypeTransformer {
  const WaitForConditionsCountTypeEnumTypeTransformer._();

  factory WaitForConditionsCountTypeEnumTypeTransformer() => _instance ??= WaitForConditionsCountTypeEnumTypeTransformer._();

  String encode(WaitForConditionsCountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForConditionsCountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForConditionsCountTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EXACTLY': return WaitForConditionsCountTypeEnum.EXACTLY;
      case r'ATLEAST': return WaitForConditionsCountTypeEnum.ATLEAST;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WaitForConditionsCountTypeEnumTypeTransformer] instance.
  static WaitForConditionsCountTypeEnumTypeTransformer _instance;
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

  static WaitForConditionsSortDirectionEnum fromJson(dynamic value) =>
    WaitForConditionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForConditionsSortDirectionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForConditionsSortDirectionEnum>[]
      : json
          .map((value) => WaitForConditionsSortDirectionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WaitForConditionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForConditionsSortDirectionEnum].
class WaitForConditionsSortDirectionEnumTypeTransformer {
  const WaitForConditionsSortDirectionEnumTypeTransformer._();

  factory WaitForConditionsSortDirectionEnumTypeTransformer() => _instance ??= WaitForConditionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForConditionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForConditionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForConditionsSortDirectionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ASC': return WaitForConditionsSortDirectionEnum.ASC;
      case r'DESC': return WaitForConditionsSortDirectionEnum.DESC;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WaitForConditionsSortDirectionEnumTypeTransformer] instance.
  static WaitForConditionsSortDirectionEnumTypeTransformer _instance;
}

