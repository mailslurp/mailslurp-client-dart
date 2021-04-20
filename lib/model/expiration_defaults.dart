//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpirationDefaults {
  /// Returns a new [ExpirationDefaults] instance.
  ExpirationDefaults({
    @required this.canPermanentInbox,
    this.defaultExpirationMillis,
    this.defaultExpiresAt,
    this.maxExpirationMillis,
  });

  bool canPermanentInbox;

  int defaultExpirationMillis;

  DateTime defaultExpiresAt;

  int maxExpirationMillis;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpirationDefaults &&
     other.canPermanentInbox == canPermanentInbox &&
     other.defaultExpirationMillis == defaultExpirationMillis &&
     other.defaultExpiresAt == defaultExpiresAt &&
     other.maxExpirationMillis == maxExpirationMillis;

  @override
  int get hashCode =>
    (canPermanentInbox == null ? 0 : canPermanentInbox.hashCode) +
    (defaultExpirationMillis == null ? 0 : defaultExpirationMillis.hashCode) +
    (defaultExpiresAt == null ? 0 : defaultExpiresAt.hashCode) +
    (maxExpirationMillis == null ? 0 : maxExpirationMillis.hashCode);

  @override
  String toString() => 'ExpirationDefaults[canPermanentInbox=$canPermanentInbox, defaultExpirationMillis=$defaultExpirationMillis, defaultExpiresAt=$defaultExpiresAt, maxExpirationMillis=$maxExpirationMillis]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'canPermanentInbox'] = canPermanentInbox;
    if (defaultExpirationMillis != null) {
      json[r'defaultExpirationMillis'] = defaultExpirationMillis;
    }
    if (defaultExpiresAt != null) {
      json[r'defaultExpiresAt'] = defaultExpiresAt.toUtc().toIso8601String();
    }
    if (maxExpirationMillis != null) {
      json[r'maxExpirationMillis'] = maxExpirationMillis;
    }
    return json;
  }

  /// Returns a new [ExpirationDefaults] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExpirationDefaults fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExpirationDefaults(
        canPermanentInbox: json[r'canPermanentInbox'],
        defaultExpirationMillis: json[r'defaultExpirationMillis'],
        defaultExpiresAt: json[r'defaultExpiresAt'] == null
          ? null
          : DateTime.parse(json[r'defaultExpiresAt']),
        maxExpirationMillis: json[r'maxExpirationMillis'],
    );

  static List<ExpirationDefaults> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExpirationDefaults>[]
      : json.map((v) => ExpirationDefaults.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExpirationDefaults> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExpirationDefaults>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExpirationDefaults.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExpirationDefaults-objects as value to a dart map
  static Map<String, List<ExpirationDefaults>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExpirationDefaults>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExpirationDefaults.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

