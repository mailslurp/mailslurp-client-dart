//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReplyForSms {
  /// Returns a new [ReplyForSms] instance.
  ReplyForSms({
    this.reply,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SentSmsDto? reply;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyForSms &&
     other.reply == reply;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reply == null ? 0 : reply!.hashCode);

  @override
  String toString() => 'ReplyForSms[reply=$reply]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reply != null) {
      json[r'reply'] = this.reply;
    } else {
      json[r'reply'] = null;
    }
    return json;
  }

  /// Returns a new [ReplyForSms] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplyForSms? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReplyForSms[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReplyForSms[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReplyForSms(
        reply: SentSmsDto.fromJson(json[r'reply']),
      );
    }
    return null;
  }

  static List<ReplyForSms>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyForSms>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyForSms.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplyForSms> mapFromJson(dynamic json) {
    final map = <String, ReplyForSms>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyForSms.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplyForSms-objects as value to a dart map
  static Map<String, List<ReplyForSms>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplyForSms>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyForSms.listFromJson(entry.value, growable: growable,);
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

