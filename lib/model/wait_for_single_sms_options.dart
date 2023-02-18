//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForSingleSmsOptions {
  /// Returns a new [WaitForSingleSmsOptions] instance.
  WaitForSingleSmsOptions({
    @required this.phoneNumberId,
    @required this.timeout,
    this.unreadOnly,
    this.before,
    this.since,
    this.sortDirection,
    this.delay,
  });

  String phoneNumberId;

  int timeout;

  bool unreadOnly;

  DateTime before;

  DateTime since;

  WaitForSingleSmsOptionsSortDirectionEnum sortDirection;

  int delay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForSingleSmsOptions &&
     other.phoneNumberId == phoneNumberId &&
     other.timeout == timeout &&
     other.unreadOnly == unreadOnly &&
     other.before == before &&
     other.since == since &&
     other.sortDirection == sortDirection &&
     other.delay == delay;

  @override
  int get hashCode =>
    (phoneNumberId == null ? 0 : phoneNumberId.hashCode) +
    (timeout == null ? 0 : timeout.hashCode) +
    (unreadOnly == null ? 0 : unreadOnly.hashCode) +
    (before == null ? 0 : before.hashCode) +
    (since == null ? 0 : since.hashCode) +
    (sortDirection == null ? 0 : sortDirection.hashCode) +
    (delay == null ? 0 : delay.hashCode);

  @override
  String toString() => 'WaitForSingleSmsOptions[phoneNumberId=$phoneNumberId, timeout=$timeout, unreadOnly=$unreadOnly, before=$before, since=$since, sortDirection=$sortDirection, delay=$delay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumberId'] = phoneNumberId;
      json[r'timeout'] = timeout;
    if (unreadOnly != null) {
      json[r'unreadOnly'] = unreadOnly;
    }
    if (before != null) {
      json[r'before'] = before.toUtc().toIso8601String();
    }
    if (since != null) {
      json[r'since'] = since.toUtc().toIso8601String();
    }
    if (sortDirection != null) {
      json[r'sortDirection'] = sortDirection;
    }
    if (delay != null) {
      json[r'delay'] = delay;
    }
    return json;
  }

  /// Returns a new [WaitForSingleSmsOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WaitForSingleSmsOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WaitForSingleSmsOptions(
        phoneNumberId: json[r'phoneNumberId'],
        timeout: json[r'timeout'],
        unreadOnly: json[r'unreadOnly'],
        before: json[r'before'] == null
          ? null
          : DateTime.parse(json[r'before']),
        since: json[r'since'] == null
          ? null
          : DateTime.parse(json[r'since']),
        sortDirection: WaitForSingleSmsOptionsSortDirectionEnum.fromJson(json[r'sortDirection']),
        delay: json[r'delay'],
    );

  static List<WaitForSingleSmsOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForSingleSmsOptions>[]
      : json.map((v) => WaitForSingleSmsOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, WaitForSingleSmsOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WaitForSingleSmsOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WaitForSingleSmsOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WaitForSingleSmsOptions-objects as value to a dart map
  static Map<String, List<WaitForSingleSmsOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WaitForSingleSmsOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WaitForSingleSmsOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class WaitForSingleSmsOptionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForSingleSmsOptionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = WaitForSingleSmsOptionsSortDirectionEnum._(r'ASC');
  static const DESC = WaitForSingleSmsOptionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][WaitForSingleSmsOptionsSortDirectionEnum].
  static const values = <WaitForSingleSmsOptionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static WaitForSingleSmsOptionsSortDirectionEnum fromJson(dynamic value) =>
    WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForSingleSmsOptionsSortDirectionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WaitForSingleSmsOptionsSortDirectionEnum>[]
      : json
          .map((value) => WaitForSingleSmsOptionsSortDirectionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [WaitForSingleSmsOptionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForSingleSmsOptionsSortDirectionEnum].
class WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer {
  const WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer._();

  factory WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer() => _instance ??= WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForSingleSmsOptionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForSingleSmsOptionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForSingleSmsOptionsSortDirectionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ASC': return WaitForSingleSmsOptionsSortDirectionEnum.ASC;
      case r'DESC': return WaitForSingleSmsOptionsSortDirectionEnum.DESC;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer] instance.
  static WaitForSingleSmsOptionsSortDirectionEnumTypeTransformer _instance;
}

