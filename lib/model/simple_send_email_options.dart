//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SimpleSendEmailOptions {
  /// Returns a new [SimpleSendEmailOptions] instance.
  SimpleSendEmailOptions({
    this.senderId,
    required this.to,
    this.body,
    this.subject,
  });

  /// ID of inbox to send from. If null an inbox will be created for sending
  String? senderId;

  /// Email address to send to
  String to;

  /// Body of the email message. Supports HTML
  String? body;

  /// Subject line of the email
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SimpleSendEmailOptions &&
     other.senderId == senderId &&
     other.to == to &&
     other.body == body &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (senderId == null ? 0 : senderId!.hashCode) +
    (to.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'SimpleSendEmailOptions[senderId=$senderId, to=$to, body=$body, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.senderId != null) {
      json[r'senderId'] = this.senderId;
    } else {
      json[r'senderId'] = null;
    }
      json[r'to'] = this.to;
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [SimpleSendEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SimpleSendEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SimpleSendEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SimpleSendEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SimpleSendEmailOptions(
        senderId: mapValueOfType<String>(json, r'senderId'),
        to: mapValueOfType<String>(json, r'to')!,
        body: mapValueOfType<String>(json, r'body'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<SimpleSendEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SimpleSendEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SimpleSendEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SimpleSendEmailOptions> mapFromJson(dynamic json) {
    final map = <String, SimpleSendEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SimpleSendEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SimpleSendEmailOptions-objects as value to a dart map
  static Map<String, List<SimpleSendEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SimpleSendEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SimpleSendEmailOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
  };
}

