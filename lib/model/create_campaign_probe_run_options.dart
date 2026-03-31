//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateCampaignProbeRunOptions {
  /// Returns a new [CreateCampaignProbeRunOptions] instance.
  CreateCampaignProbeRunOptions({
    this.fromAddress,
    this.subject,
    this.recipient,
    this.messageId,
    this.htmlBody,
    this.textBody,
  });

  /// Sender email address
  String? fromAddress;

  /// Message subject
  String? subject;

  /// Recipient email address for context
  String? recipient;

  /// Caller supplied message id for dedupe/trace
  String? messageId;

  /// HTML body content to analyze
  String? htmlBody;

  /// Text body content to analyze when HTML is absent
  String? textBody;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCampaignProbeRunOptions &&
     other.fromAddress == fromAddress &&
     other.subject == subject &&
     other.recipient == recipient &&
     other.messageId == messageId &&
     other.htmlBody == htmlBody &&
     other.textBody == textBody;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode) +
    (textBody == null ? 0 : textBody!.hashCode);

  @override
  String toString() => 'CreateCampaignProbeRunOptions[fromAddress=$fromAddress, subject=$subject, recipient=$recipient, messageId=$messageId, htmlBody=$htmlBody, textBody=$textBody]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fromAddress != null) {
      json[r'fromAddress'] = this.fromAddress;
    } else {
      json[r'fromAddress'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
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
    return json;
  }

  /// Returns a new [CreateCampaignProbeRunOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCampaignProbeRunOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCampaignProbeRunOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCampaignProbeRunOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCampaignProbeRunOptions(
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        subject: mapValueOfType<String>(json, r'subject'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        htmlBody: mapValueOfType<String>(json, r'htmlBody'),
        textBody: mapValueOfType<String>(json, r'textBody'),
      );
    }
    return null;
  }

  static List<CreateCampaignProbeRunOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCampaignProbeRunOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCampaignProbeRunOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCampaignProbeRunOptions> mapFromJson(dynamic json) {
    final map = <String, CreateCampaignProbeRunOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCampaignProbeRunOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCampaignProbeRunOptions-objects as value to a dart map
  static Map<String, List<CreateCampaignProbeRunOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCampaignProbeRunOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCampaignProbeRunOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

