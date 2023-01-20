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
    this.to = const [],
    this.subject,
    this.cc,
    this.bcc,
    this.from,
    this.useInboxName,
    this.filterBouncedRecipients,
  });

  /// To recipients for forwarded email
  List<String> to;

  /// Subject for forwarded email
  String subject;

  /// Optional cc recipients
  List<String> cc;

  /// Optional bcc recipients
  List<String> bcc;

  /// Optional from override
  String from;

  /// Optionally use inbox name as display name for sender email address
  bool useInboxName;

  /// Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
  bool filterBouncedRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ForwardEmailOptions &&
     other.to == to &&
     other.subject == subject &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.from == from &&
     other.useInboxName == useInboxName &&
     other.filterBouncedRecipients == filterBouncedRecipients;

  @override
  int get hashCode =>
    (to == null ? 0 : to.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (useInboxName == null ? 0 : useInboxName.hashCode) +
    (filterBouncedRecipients == null ? 0 : filterBouncedRecipients.hashCode);

  @override
  String toString() => 'ForwardEmailOptions[to=$to, subject=$subject, cc=$cc, bcc=$bcc, from=$from, useInboxName=$useInboxName, filterBouncedRecipients=$filterBouncedRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = to;
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (useInboxName != null) {
      json[r'useInboxName'] = useInboxName;
    }
    if (filterBouncedRecipients != null) {
      json[r'filterBouncedRecipients'] = filterBouncedRecipients;
    }
    return json;
  }

  /// Returns a new [ForwardEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ForwardEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ForwardEmailOptions(
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        subject: json[r'subject'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        from: json[r'from'],
        useInboxName: json[r'useInboxName'],
        filterBouncedRecipients: json[r'filterBouncedRecipients'],
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

