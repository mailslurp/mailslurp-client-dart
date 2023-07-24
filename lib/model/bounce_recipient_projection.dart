//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceRecipientProjection {
  /// Returns a new [BounceRecipientProjection] instance.
  BounceRecipientProjection({
    this.id,
    this.status,
    this.sentEmailId,
    required this.createdAt,
    required this.recipient,
    this.action,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  String? status;

  String? sentEmailId;

  DateTime createdAt;

  String recipient;

  String? action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceRecipientProjection &&
     other.id == id &&
     other.status == status &&
     other.sentEmailId == sentEmailId &&
     other.createdAt == createdAt &&
     other.recipient == recipient &&
     other.action == action;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (createdAt.hashCode) +
    (recipient.hashCode) +
    (action == null ? 0 : action!.hashCode);

  @override
  String toString() => 'BounceRecipientProjection[id=$id, status=$status, sentEmailId=$sentEmailId, createdAt=$createdAt, recipient=$recipient, action=$action]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.sentEmailId != null) {
      json[r'sentEmailId'] = this.sentEmailId;
    } else {
      json[r'sentEmailId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'recipient'] = this.recipient;
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    return json;
  }

  /// Returns a new [BounceRecipientProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BounceRecipientProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BounceRecipientProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BounceRecipientProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BounceRecipientProjection(
        id: mapValueOfType<String>(json, r'id'),
        status: mapValueOfType<String>(json, r'status'),
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        recipient: mapValueOfType<String>(json, r'recipient')!,
        action: mapValueOfType<String>(json, r'action'),
      );
    }
    return null;
  }

  static List<BounceRecipientProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BounceRecipientProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BounceRecipientProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BounceRecipientProjection> mapFromJson(dynamic json) {
    final map = <String, BounceRecipientProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BounceRecipientProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BounceRecipientProjection-objects as value to a dart map
  static Map<String, List<BounceRecipientProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BounceRecipientProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BounceRecipientProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'recipient',
  };
}

