//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateInboxOptions {
  /// Returns a new [UpdateInboxOptions] instance.
  UpdateInboxOptions({
    this.name,
    this.description,
    this.tags = const [],
    this.expiresAt,
    this.favourite,
  });

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String name;

  /// Description of an inbox for labelling and searching purposes
  String description;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
  DateTime expiresAt;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateInboxOptions &&
     other.name == name &&
     other.description == description &&
     other.tags == tags &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (expiresAt == null ? 0 : expiresAt.hashCode) +
    (favourite == null ? 0 : favourite.hashCode);

  @override
  String toString() => 'UpdateInboxOptions[name=$name, description=$description, tags=$tags, expiresAt=$expiresAt, favourite=$favourite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (expiresAt != null) {
      json[r'expiresAt'] = expiresAt.toUtc().toIso8601String();
    }
    if (favourite != null) {
      json[r'favourite'] = favourite;
    }
    return json;
  }

  /// Returns a new [UpdateInboxOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateInboxOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateInboxOptions(
        name: json[r'name'],
        description: json[r'description'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        expiresAt: json[r'expiresAt'] == null
          ? null
          : DateTime.parse(json[r'expiresAt']),
        favourite: json[r'favourite'],
    );

  static List<UpdateInboxOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateInboxOptions>[]
      : json.map((v) => UpdateInboxOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateInboxOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateInboxOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateInboxOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateInboxOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateInboxOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

