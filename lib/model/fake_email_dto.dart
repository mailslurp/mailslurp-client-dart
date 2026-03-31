//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FakeEmailDto {
  /// Returns a new [FakeEmailDto] instance.
  FakeEmailDto({
    required this.id,
    required this.emailAddress,
    this.sender,
    this.recipients,
    this.attachmentNames = const [],
    this.subject,
    this.preview,
    required this.body,
    required this.seen,
    required this.createdAt,
    required this.contentType,
    required this.bodyUrl,
  });

  String id;

  String emailAddress;

  Sender? sender;

  EmailRecipients? recipients;

  List<String> attachmentNames;

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

  /// use read content endpoints instead
  String body;

  bool seen;

  DateTime createdAt;

  String contentType;

  String bodyUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FakeEmailDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.sender == sender &&
     other.recipients == recipients &&
     other.attachmentNames == attachmentNames &&
     other.subject == subject &&
     other.preview == preview &&
     other.body == body &&
     other.seen == seen &&
     other.createdAt == createdAt &&
     other.contentType == contentType &&
     other.bodyUrl == bodyUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (sender == null ? 0 : sender!.hashCode) +
    (recipients == null ? 0 : recipients!.hashCode) +
    (attachmentNames.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (body.hashCode) +
    (seen.hashCode) +
    (createdAt.hashCode) +
    (contentType.hashCode) +
    (bodyUrl.hashCode);

  @override
  String toString() => 'FakeEmailDto[id=$id, emailAddress=$emailAddress, sender=$sender, recipients=$recipients, attachmentNames=$attachmentNames, subject=$subject, preview=$preview, body=$body, seen=$seen, createdAt=$createdAt, contentType=$contentType, bodyUrl=$bodyUrl]';

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
      json[r'attachmentNames'] = this.attachmentNames;
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
      json[r'body'] = this.body;
      json[r'seen'] = this.seen;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'contentType'] = this.contentType;
      json[r'bodyUrl'] = this.bodyUrl;
    return json;
  }

  /// Returns a new [FakeEmailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FakeEmailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FakeEmailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FakeEmailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FakeEmailDto(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        sender: Sender.fromJson(json[r'sender']),
        recipients: EmailRecipients.fromJson(json[r'recipients']),
        attachmentNames: json[r'attachmentNames'] is List
            ? (json[r'attachmentNames'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        preview: mapValueOfType<String>(json, r'preview'),
        body: mapValueOfType<String>(json, r'body')!,
        seen: mapValueOfType<bool>(json, r'seen')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        bodyUrl: mapValueOfType<String>(json, r'bodyUrl')!,
      );
    }
    return null;
  }

  static List<FakeEmailDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FakeEmailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FakeEmailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FakeEmailDto> mapFromJson(dynamic json) {
    final map = <String, FakeEmailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FakeEmailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FakeEmailDto-objects as value to a dart map
  static Map<String, List<FakeEmailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FakeEmailDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FakeEmailDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'attachmentNames',
    'body',
    'seen',
    'createdAt',
    'contentType',
    'bodyUrl',
  };
}

