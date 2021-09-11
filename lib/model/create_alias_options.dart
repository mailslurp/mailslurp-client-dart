//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAliasOptions {
  /// Returns a new [CreateAliasOptions] instance.
  CreateAliasOptions({
    this.emailAddress,
    this.inboxId,
    this.name,
    this.useThreads,
  });

  /// Email address to be hidden behind alias. Emails sent to the alias email address will be forwarded to this address. If you want to enable replies set useThreads true and the reply-to for the email will allow outbound communication via a thread.
  String emailAddress;

  /// Optional inbox ID to attach to alias. Null by default means an a new inbox will be created for the alias. Use a custom inbox to control what email address the alias uses. To use custom email addresses create a domain and an inbox, the use the inbox ID with this call. Emails received by this inbox will be forwarded to the alias email address
  String inboxId;

  /// Optional name for alias
  String name;

  /// Enable threads options. If true emails will be sent with a unique reply-to thread address. This means you can reply to the forwarded email and it will be sent to the recipients via your alias address. That way a thread conversation is preserved.
  bool useThreads;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAliasOptions &&
     other.emailAddress == emailAddress &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.useThreads == useThreads;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode);

  @override
  String toString() => 'CreateAliasOptions[emailAddress=$emailAddress, inboxId=$inboxId, name=$name, useThreads=$useThreads]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
    return json;
  }

  /// Returns a new [CreateAliasOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateAliasOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateAliasOptions(
        emailAddress: json[r'emailAddress'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        useThreads: json[r'useThreads'],
    );

  static List<CreateAliasOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateAliasOptions>[]
      : json.map((v) => CreateAliasOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateAliasOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateAliasOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateAliasOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateAliasOptions-objects as value to a dart map
  static Map<String, List<CreateAliasOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateAliasOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateAliasOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

