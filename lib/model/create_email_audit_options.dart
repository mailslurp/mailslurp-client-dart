//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateEmailAuditOptions {
  /// Returns a new [CreateEmailAuditOptions] instance.
  CreateEmailAuditOptions({
    this.fromAddress,
    this.recipient,
    this.subject,
    this.htmlBody,
    this.textBody,
    this.emailAnalysis,
    this.hasAttachments,
  });

  /// Optional sender address context
  String? fromAddress;

  /// Optional recipient context
  String? recipient;

  /// Optional subject line context
  String? subject;

  /// Optional HTML email body
  String? htmlBody;

  /// Optional text email body
  String? textBody;

  EmailAnalysis? emailAnalysis;

  /// Whether the source email included attachments
  bool? hasAttachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEmailAuditOptions &&
     other.fromAddress == fromAddress &&
     other.recipient == recipient &&
     other.subject == subject &&
     other.htmlBody == htmlBody &&
     other.textBody == textBody &&
     other.emailAnalysis == emailAnalysis &&
     other.hasAttachments == hasAttachments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode) +
    (textBody == null ? 0 : textBody!.hashCode) +
    (emailAnalysis == null ? 0 : emailAnalysis!.hashCode) +
    (hasAttachments == null ? 0 : hasAttachments!.hashCode);

  @override
  String toString() => 'CreateEmailAuditOptions[fromAddress=$fromAddress, recipient=$recipient, subject=$subject, htmlBody=$htmlBody, textBody=$textBody, emailAnalysis=$emailAnalysis, hasAttachments=$hasAttachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fromAddress != null) {
      json[r'fromAddress'] = this.fromAddress;
    } else {
      json[r'fromAddress'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.htmlBody != null) {
      json[r'htmlBody'] = this.htmlBody;
    } else {
      json[r'htmlBody'] = null;
    }
    if (this.textBody != null) {
      json[r'textBody'] = this.textBody;
    } else {
      json[r'textBody'] = null;
    }
    if (this.emailAnalysis != null) {
      json[r'emailAnalysis'] = this.emailAnalysis;
    } else {
      json[r'emailAnalysis'] = null;
    }
    if (this.hasAttachments != null) {
      json[r'hasAttachments'] = this.hasAttachments;
    } else {
      json[r'hasAttachments'] = null;
    }
    return json;
  }

  /// Returns a new [CreateEmailAuditOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEmailAuditOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEmailAuditOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEmailAuditOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEmailAuditOptions(
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        subject: mapValueOfType<String>(json, r'subject'),
        htmlBody: mapValueOfType<String>(json, r'htmlBody'),
        textBody: mapValueOfType<String>(json, r'textBody'),
        emailAnalysis: EmailAnalysis.fromJson(json[r'emailAnalysis']),
        hasAttachments: mapValueOfType<bool>(json, r'hasAttachments'),
      );
    }
    return null;
  }

  static List<CreateEmailAuditOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmailAuditOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmailAuditOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEmailAuditOptions> mapFromJson(dynamic json) {
    final map = <String, CreateEmailAuditOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmailAuditOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEmailAuditOptions-objects as value to a dart map
  static Map<String, List<CreateEmailAuditOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEmailAuditOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEmailAuditOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

