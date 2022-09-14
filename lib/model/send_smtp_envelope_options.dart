//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendSMTPEnvelopeOptions {
  /// Returns a new [SendSMTPEnvelopeOptions] instance.
  SendSMTPEnvelopeOptions({
    this.rcptTo = const [],
    @required this.mailFrom,
    @required this.data,
  });

  List<String> rcptTo;

  String mailFrom;

  String data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendSMTPEnvelopeOptions &&
     other.rcptTo == rcptTo &&
     other.mailFrom == mailFrom &&
     other.data == data;

  @override
  int get hashCode =>
    (rcptTo == null ? 0 : rcptTo.hashCode) +
    (mailFrom == null ? 0 : mailFrom.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'SendSMTPEnvelopeOptions[rcptTo=$rcptTo, mailFrom=$mailFrom, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rcptTo'] = rcptTo;
      json[r'mailFrom'] = mailFrom;
      json[r'data'] = data;
    return json;
  }

  /// Returns a new [SendSMTPEnvelopeOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendSMTPEnvelopeOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SendSMTPEnvelopeOptions(
        rcptTo: json[r'rcptTo'] == null
          ? null
          : (json[r'rcptTo'] as List).cast<String>(),
        mailFrom: json[r'mailFrom'],
        data: json[r'data'],
    );

  static List<SendSMTPEnvelopeOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SendSMTPEnvelopeOptions>[]
      : json.map((v) => SendSMTPEnvelopeOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, SendSMTPEnvelopeOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SendSMTPEnvelopeOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SendSMTPEnvelopeOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SendSMTPEnvelopeOptions-objects as value to a dart map
  static Map<String, List<SendSMTPEnvelopeOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SendSMTPEnvelopeOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SendSMTPEnvelopeOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

