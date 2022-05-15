//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailRecipients {
  /// Returns a new [EmailRecipients] instance.
  EmailRecipients({
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
  });

  List<Recipient> to;

  List<Recipient> cc;

  List<Recipient> bcc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailRecipients &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc;

  @override
  int get hashCode =>
    (to == null ? 0 : to.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode);

  @override
  String toString() => 'EmailRecipients[to=$to, cc=$cc, bcc=$bcc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (to != null) {
      json[r'to'] = to;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    return json;
  }

  /// Returns a new [EmailRecipients] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailRecipients fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailRecipients(
        to: Recipient.listFromJson(json[r'to']),
        cc: Recipient.listFromJson(json[r'cc']),
        bcc: Recipient.listFromJson(json[r'bcc']),
    );

  static List<EmailRecipients> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailRecipients>[]
      : json.map((v) => EmailRecipients.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailRecipients> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailRecipients>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailRecipients.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailRecipients-objects as value to a dart map
  static Map<String, List<EmailRecipients>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailRecipients>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailRecipients.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

