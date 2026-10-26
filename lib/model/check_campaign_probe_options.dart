//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckCampaignProbeOptions {
  /// Returns a new [CheckCampaignProbeOptions] instance.
  CheckCampaignProbeOptions({
    this.fromAddress,
    this.subject,
    this.recipient,
    this.messageId,
    this.htmlBody,
    this.textBody,
    this.captchaToken,
  });

  /// Optional sender email address
  String? fromAddress;

  /// Optional message subject
  String? subject;

  /// Optional recipient email address for context
  String? recipient;

  /// Optional caller supplied message id
  String? messageId;

  /// HTML body content to analyze
  String? htmlBody;

  /// Text body content to analyze when HTML is absent
  String? textBody;

  /// Optional captcha token when captcha protection is enabled
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckCampaignProbeOptions &&
     other.fromAddress == fromAddress &&
     other.subject == subject &&
     other.recipient == recipient &&
     other.messageId == messageId &&
     other.htmlBody == htmlBody &&
     other.textBody == textBody &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (htmlBody == null ? 0 : htmlBody!.hashCode) +
    (textBody == null ? 0 : textBody!.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CheckCampaignProbeOptions[fromAddress=$fromAddress, subject=$subject, recipient=$recipient, messageId=$messageId, htmlBody=$htmlBody, textBody=$textBody, captchaToken=$captchaToken]';

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
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CheckCampaignProbeOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckCampaignProbeOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckCampaignProbeOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckCampaignProbeOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckCampaignProbeOptions(
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        subject: mapValueOfType<String>(json, r'subject'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        htmlBody: mapValueOfType<String>(json, r'htmlBody'),
        textBody: mapValueOfType<String>(json, r'textBody'),
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CheckCampaignProbeOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckCampaignProbeOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckCampaignProbeOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckCampaignProbeOptions> mapFromJson(dynamic json) {
    final map = <String, CheckCampaignProbeOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckCampaignProbeOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckCampaignProbeOptions-objects as value to a dart map
  static Map<String, List<CheckCampaignProbeOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckCampaignProbeOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckCampaignProbeOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

