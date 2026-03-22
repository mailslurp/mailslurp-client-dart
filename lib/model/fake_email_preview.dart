//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FakeEmailPreview {
  /// Returns a new [FakeEmailPreview] instance.
  FakeEmailPreview({
    required this.id,
    required this.emailAddress,
    this.sender,
    this.recipients,
    required this.hasAttachments,
    this.subject,
    this.preview,
    required this.createdAt,
    required this.seen,
  });

  String id;

  String emailAddress;

  Sender? sender;

  EmailRecipients? recipients;

  bool hasAttachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preview;

  DateTime createdAt;

  bool seen;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FakeEmailPreview &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.hasAttachments == hasAttachments &&
     other.subject == subject &&
     other.preview == preview &&
     other.createdAt == createdAt &&
     other.seen == seen;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (hasAttachments.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (createdAt.hashCode) +
    (seen.hashCode);

  @override
  String toString() => 'FakeEmailPreview[id=$id, emailAddress=$emailAddress, sender=$sender, recipients=$recipients, hasAttachments=$hasAttachments, subject=$subject, preview=$preview, createdAt=$createdAt, seen=$seen]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'emailAddress'] = this.emailAddress;
    if (this.sender != null) {
      json[r'sender'] = this.sender;
    } else {
      json[r'sender'] = null;
    }
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
    }
      json[r'hasAttachments'] = this.hasAttachments;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'seen'] = this.seen;
    return json;
  }

  /// Returns a new [FakeEmailPreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FakeEmailPreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FakeEmailPreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FakeEmailPreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FakeEmailPreview(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        hasAttachments: mapValueOfType<bool>(json, r'hasAttachments')!,
        subject: mapValueOfType<String>(json, r'subject'),
        preview: mapValueOfType<String>(json, r'preview'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        seen: mapValueOfType<bool>(json, r'seen')!,
      );
    }
    return null;
  }

  static List<FakeEmailPreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FakeEmailPreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FakeEmailPreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FakeEmailPreview> mapFromJson(dynamic json) {
    final map = <String, FakeEmailPreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FakeEmailPreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FakeEmailPreview-objects as value to a dart map
  static Map<String, List<FakeEmailPreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FakeEmailPreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FakeEmailPreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'hasAttachments',
    'createdAt',
    'seen',
  };
}

