//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ForwardEmailOptions {
  /// Returns a new [ForwardEmailOptions] instance.
  ForwardEmailOptions({
    this.bcc = const [],
    this.cc = const [],
    this.from,
    this.subject,
    this.to = const [],
    this.useInboxName,
  });

  /// Optional bcc recipients
  List<String> bcc;

  /// Optional cc recipients
  List<String> cc;

  /// Optional from override
  String from;

  /// Subject for forwarded email
  String subject;

  /// To recipients for forwarded email
  List<String> to;

  /// Optionally use inbox name as display name for sender email address
  bool useInboxName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ForwardEmailOptions &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.from == from &&
     other.subject == subject &&
     other.to == to &&
     other.useInboxName == useInboxName;

  @override
  int get hashCode =>
    (bcc == null ? 0 : bcc.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (useInboxName == null ? 0 : useInboxName.hashCode);

  @override
  String toString() => 'ForwardEmailOptions[bcc=$bcc, cc=$cc, from=$from, subject=$subject, to=$to, useInboxName=$useInboxName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (useInboxName != null) {
      json[r'useInboxName'] = useInboxName;
    }
    return json;
  }

  /// Returns a new [ForwardEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ForwardEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ForwardEmailOptions(
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        from: json[r'from'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        useInboxName: json[r'useInboxName'],
    );

  static List<ForwardEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ForwardEmailOptions>[]
      : json.map((v) => ForwardEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, ForwardEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ForwardEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ForwardEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ForwardEmailOptions-objects as value to a dart map
  static Map<String, List<ForwardEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ForwardEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ForwardEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

