//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ForwardEmailOptions {
  /// Returns a new [ForwardEmailOptions] instance.
  ForwardEmailOptions({
    this.to = const [],
    this.subject,
    this.cc = const [],
    this.bcc = const [],
    this.from,
    this.useInboxName,
    this.filterBouncedRecipients,
  });

  /// To recipients for forwarded email
  List<String> to;

  /// Subject for forwarded email
  String? subject;

  /// Optional cc recipients
  List<String>? cc;

  /// Optional bcc recipients
  List<String>? bcc;

  /// Optional from override
  String? from;

  /// Optionally use inbox name as display name for sender email address
  bool? useInboxName;

  /// Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
  bool? filterBouncedRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ForwardEmailOptions &&
     other.to == to &&
     other.subject == subject &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.from == from &&
     other.useInboxName == useInboxName &&
     other.filterBouncedRecipients == filterBouncedRecipients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (useInboxName == null ? 0 : useInboxName!.hashCode) +
    (filterBouncedRecipients == null ? 0 : filterBouncedRecipients!.hashCode);

  @override
  String toString() => 'ForwardEmailOptions[to=$to, subject=$subject, cc=$cc, bcc=$bcc, from=$from, useInboxName=$useInboxName, filterBouncedRecipients=$filterBouncedRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.cc != null) {
      json[r'cc'] = this.cc;
    } else {
      json[r'cc'] = null;
    }
    if (this.bcc != null) {
      json[r'bcc'] = this.bcc;
    } else {
      json[r'bcc'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.useInboxName != null) {
      json[r'useInboxName'] = this.useInboxName;
    } else {
      json[r'useInboxName'] = null;
    }
    if (this.filterBouncedRecipients != null) {
      json[r'filterBouncedRecipients'] = this.filterBouncedRecipients;
    } else {
      json[r'filterBouncedRecipients'] = null;
    }
    return json;
  }

  /// Returns a new [ForwardEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ForwardEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ForwardEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ForwardEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ForwardEmailOptions(
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        useInboxName: mapValueOfType<bool>(json, r'useInboxName'),
        filterBouncedRecipients: mapValueOfType<bool>(json, r'filterBouncedRecipients'),
      );
    }
    return null;
  }

  static List<ForwardEmailOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ForwardEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ForwardEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ForwardEmailOptions> mapFromJson(dynamic json) {
    final map = <String, ForwardEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ForwardEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ForwardEmailOptions-objects as value to a dart map
  static Map<String, List<ForwardEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ForwardEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ForwardEmailOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
  };
}

