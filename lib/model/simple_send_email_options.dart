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
    this.senderId,
    this.to,
    this.body,
    this.subject,
  });

  /// ID of inbox to send from. If null an inbox will be created for sending
  String senderId;

  /// Email address to send to
  String to;

  /// Body of the email message. Supports HTML
  String body;

  /// Subject line of the email
  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SimpleSendEmailOptions &&
     other.senderId == senderId &&
     other.to == to &&
     other.body == body &&
     other.subject == subject;

  @override
  int get hashCode =>
    (senderId == null ? 0 : senderId.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (subject == null ? 0 : subject.hashCode);

  @override
  String toString() => 'SimpleSendEmailOptions[senderId=$senderId, to=$to, body=$body, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (senderId != null) {
      json[r'senderId'] = senderId;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    return json;
  }

  /// Returns a new [SimpleSendEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SimpleSendEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SimpleSendEmailOptions(
        senderId: json[r'senderId'],
        to: json[r'to'],
        body: json[r'body'],
        subject: json[r'subject'],
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

