//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BulkSendEmailOptions {
  /// Returns a new [BulkSendEmailOptions] instance.
  BulkSendEmailOptions({
    this.inboxIds = const [],
    @required this.sendEmailOptions,
  });

  /// Inboxes to send the email from
  List<String> inboxIds;

  SendEmailOptions sendEmailOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkSendEmailOptions &&
     other.inboxIds == inboxIds &&
     other.sendEmailOptions == sendEmailOptions;

  @override
  int get hashCode =>
    (inboxIds == null ? 0 : inboxIds.hashCode) +
    (sendEmailOptions == null ? 0 : sendEmailOptions.hashCode);

  @override
  String toString() => 'BulkSendEmailOptions[inboxIds=$inboxIds, sendEmailOptions=$sendEmailOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxIds'] = inboxIds;
      json[r'sendEmailOptions'] = sendEmailOptions;
    return json;
  }

  /// Returns a new [BulkSendEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BulkSendEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BulkSendEmailOptions(
        inboxIds: json[r'inboxIds'] == null
          ? null
          : (json[r'inboxIds'] as List).cast<String>(),
        sendEmailOptions: SendEmailOptions.fromJson(json[r'sendEmailOptions']),
    );

  static List<BulkSendEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BulkSendEmailOptions>[]
      : json.map((v) => BulkSendEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, BulkSendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BulkSendEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BulkSendEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BulkSendEmailOptions-objects as value to a dart map
  static Map<String, List<BulkSendEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BulkSendEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BulkSendEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

