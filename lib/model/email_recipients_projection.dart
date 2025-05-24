//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailRecipientsProjection {
  /// Returns a new [EmailRecipientsProjection] instance.
  EmailRecipientsProjection({
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
  });

  List<RecipientProjection> to;

  List<RecipientProjection> cc;

  List<RecipientProjection> bcc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailRecipientsProjection &&
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
  String toString() => 'EmailRecipientsProjection[to=$to, cc=$cc, bcc=$bcc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
    return json;
  }

  /// Returns a new [EmailRecipientsProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailRecipientsProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailRecipientsProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailRecipientsProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailRecipientsProjection(
        to: RecipientProjection.listFromJson(json[r'to']),
        cc: RecipientProjection.listFromJson(json[r'cc']),
        bcc: RecipientProjection.listFromJson(json[r'bcc']),
      );
    }
    return null;
  }

  static List<EmailRecipientsProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailRecipientsProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailRecipientsProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailRecipientsProjection> mapFromJson(dynamic json) {
    final map = <String, EmailRecipientsProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailRecipientsProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailRecipientsProjection-objects as value to a dart map
  static Map<String, List<EmailRecipientsProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailRecipientsProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailRecipientsProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

