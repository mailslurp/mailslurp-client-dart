//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  String? name;

  /// Description of an inbox for labelling and searching purposes
  String? description;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String>? tags;

  /// Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
  DateTime? expiresAt;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool? favourite;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateInboxOptions &&
     other.name == name &&
     other.description == description &&
     other.tags == tags &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (favourite == null ? 0 : favourite!.hashCode);

  @override
  String toString() => 'UpdateInboxOptions[name=$name, description=$description, tags=$tags, expiresAt=$expiresAt, favourite=$favourite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.favourite != null) {
      json[r'favourite'] = this.favourite;
    } else {
      json[r'favourite'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateInboxOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateInboxOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateInboxOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateInboxOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateInboxOptions(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        favourite: mapValueOfType<bool>(json, r'favourite'),
      );
    }
    return null;
  }

  static List<UpdateInboxOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateInboxOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateInboxOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateInboxOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateInboxOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateInboxOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateInboxOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateInboxOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

