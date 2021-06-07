//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SimpleSendEmailOptions {
  /// Returns a new [SimpleSendEmailOptions] instance.
  SimpleSendEmailOptions({
    this.body,
    this.senderId,
    this.subject,
    this.to,
  });

  /// Body of the email message. Supports HTML
  String body;

  /// ID of inbox to send from. If null an inbox will be created for sending
  String senderId;

  /// Subject line of the email
  String subject;

  /// Email address to send to
  String to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SimpleSendEmailOptions &&
     other.body == body &&
     other.senderId == senderId &&
     other.subject == subject &&
     other.to == to;

  @override
  int get hashCode =>
    (body == null ? 0 : body.hashCode) +
    (senderId == null ? 0 : senderId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode);

  @override
  String toString() => 'SimpleSendEmailOptions[body=$body, senderId=$senderId, subject=$subject, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (body != null) {
      json[r'body'] = body;
    }
    if (senderId != null) {
      json[r'senderId'] = senderId;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    return json;
  }

  /// Returns a new [SimpleSendEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SimpleSendEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SimpleSendEmailOptions(
        body: json[r'body'],
        senderId: json[r'senderId'],
        subject: json[r'subject'],
        to: json[r'to'],
    );

  static List<SimpleSendEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SimpleSendEmailOptions>[]
      : json.map((v) => SimpleSendEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, SimpleSendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SimpleSendEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SimpleSendEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SimpleSendEmailOptions-objects as value to a dart map
  static Map<String, List<SimpleSendEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SimpleSendEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SimpleSendEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

