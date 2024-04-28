//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceProjection {
  /// Returns a new [BounceProjection] instance.
  BounceProjection({
    this.subject,
    required this.sender,
    this.bounceMta,
    this.bounceType,
    required this.createdAt,
    this.id,
  });

  String? subject;

  String sender;

  String? bounceMta;

  String? bounceType;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceProjection &&
     other.subject == subject &&
     other.sender == sender &&
     other.bounceMta == bounceMta &&
     other.bounceType == bounceType &&
     other.createdAt == createdAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (sender.hashCode) +
    (bounceMta == null ? 0 : bounceMta!.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (createdAt.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'BounceProjection[subject=$subject, sender=$sender, bounceMta=$bounceMta, bounceType=$bounceType, createdAt=$createdAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'sender'] = this.sender;
    if (this.bounceMta != null) {
      json[r'bounceMta'] = this.bounceMta;
    } else {
      json[r'bounceMta'] = null;
    }
    if (this.bounceType != null) {
      json[r'bounceType'] = this.bounceType;
    } else {
      json[r'bounceType'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [BounceProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BounceProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BounceProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BounceProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BounceProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        sender: mapValueOfType<String>(json, r'sender')!,
        bounceMta: mapValueOfType<String>(json, r'bounceMta'),
        bounceType: mapValueOfType<String>(json, r'bounceType'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<BounceProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BounceProjection> mapFromJson(dynamic json) {
    final map = <String, BounceProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BounceProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BounceProjection-objects as value to a dart map
  static Map<String, List<BounceProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BounceProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BounceProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sender',
    'createdAt',
  };
}

