//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAliasOptions {
  /// Returns a new [CreateAliasOptions] instance.
  CreateAliasOptions({
    required this.emailAddress,
    this.inboxId,
    this.name,
    required this.useThreads,
  });

  /// Email address to be hidden behind alias. Emails sent to the alias email address will be forwarded to this address. If you want to enable replies set useThreads true and the reply-to for the email will allow outbound communication via a thread. Some email addresses may require verification if they are not added as a contact first.
  String emailAddress;

  /// Optional inbox ID to attach to alias. Null by default means an a new inbox will be created for the alias. Use a custom inbox to control what email address the alias uses. To use custom email addresses create a domain and an inbox, the use the inbox ID with this call. Emails received by this inbox will be forwarded to the alias email address
  String? inboxId;

  /// Optional name for alias
  String? name;

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
    // ignore: unnecessary_parenthesis
    (emailAddress.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (useThreads.hashCode);

  @override
  String toString() => 'CreateAliasOptions[emailAddress=$emailAddress, inboxId=$inboxId, name=$name, useThreads=$useThreads]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = this.emailAddress;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'useThreads'] = this.useThreads;
    return json;
  }

  /// Returns a new [CreateAliasOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAliasOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAliasOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAliasOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAliasOptions(
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        name: mapValueOfType<String>(json, r'name'),
        useThreads: mapValueOfType<bool>(json, r'useThreads')!,
      );
    }
    return null;
  }

  static List<CreateAliasOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAliasOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAliasOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAliasOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAliasOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAliasOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAliasOptions-objects as value to a dart map
  static Map<String, List<CreateAliasOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAliasOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAliasOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
    'useThreads',
  };
}

