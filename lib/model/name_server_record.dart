//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NameServerRecord {
  /// Returns a new [NameServerRecord] instance.
  NameServerRecord({
    this.raw,
    this.recordType,
    this.priority,
    this.value,
  });

  String raw;

  String recordType;

  String priority;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NameServerRecord &&
     other.raw == raw &&
     other.recordType == recordType &&
     other.priority == priority &&
     other.value == value;

  @override
  int get hashCode =>
    (raw == null ? 0 : raw.hashCode) +
    (recordType == null ? 0 : recordType.hashCode) +
    (priority == null ? 0 : priority.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'NameServerRecord[raw=$raw, recordType=$recordType, priority=$priority, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (raw != null) {
      json[r'raw'] = raw;
    }
    if (recordType != null) {
      json[r'recordType'] = recordType;
    }
    if (priority != null) {
      json[r'priority'] = priority;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [NameServerRecord] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NameServerRecord fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NameServerRecord(
        raw: json[r'raw'],
        recordType: json[r'recordType'],
        priority: json[r'priority'],
        value: json[r'value'],
    );

  static List<NameServerRecord> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NameServerRecord>[]
      : json.map((v) => NameServerRecord.fromJson(v)).toList(growable: true == growable);

  static Map<String, NameServerRecord> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NameServerRecord>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NameServerRecord.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NameServerRecord-objects as value to a dart map
  static Map<String, List<NameServerRecord>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NameServerRecord>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NameServerRecord.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

