//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailRecipients {
  /// Returns a new [EmailRecipients] instance.
  EmailRecipients({
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
  });

  List<Recipient> to;

  List<Recipient> cc;

  List<Recipient> bcc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailRecipients &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode);

  @override
  String toString() => 'EmailRecipients[to=$to, cc=$cc, bcc=$bcc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
    return json;
  }

  /// Returns a new [EmailRecipients] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailRecipients? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailRecipients[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailRecipients[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailRecipients(
        to: Recipient.listFromJson(json[r'to']) ?? const [],
        cc: Recipient.listFromJson(json[r'cc']) ?? const [],
        bcc: Recipient.listFromJson(json[r'bcc']) ?? const [],
      );
    }
    return null;
  }

  static List<EmailRecipients>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailRecipients>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailRecipients.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailRecipients> mapFromJson(dynamic json) {
    final map = <String, EmailRecipients>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailRecipients.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailRecipients-objects as value to a dart map
  static Map<String, List<EmailRecipients>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailRecipients>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailRecipients.listFromJson(entry.value, growable: growable,);
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

