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
    required this.createdAt,
    this.sentEmailId,
    required this.recipient,
    this.bounceType,
    this.action,
    this.id,
    this.status,
  });

  DateTime createdAt;

  String? sentEmailId;

  String recipient;

  String? bounceType;

  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceRecipientProjection &&
     other.createdAt == createdAt &&
     other.sentEmailId == sentEmailId &&
     other.recipient == recipient &&
     other.bounceType == bounceType &&
     other.action == action &&
     other.id == id &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (recipient.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BounceRecipientProjection[createdAt=$createdAt, sentEmailId=$sentEmailId, recipient=$recipient, bounceType=$bounceType, action=$action, id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.sentEmailId != null) {
      json[r'sentEmailId'] = this.sentEmailId;
    } else {
      json[r'sentEmailId'] = null;
    }
      json[r'recipient'] = this.recipient;
    if (this.bounceType != null) {
      json[r'bounceType'] = this.bounceType;
    } else {
      json[r'bounceType'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
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
        createdAt: mapDateTime(json, r'createdAt', '')!,
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        recipient: mapValueOfType<String>(json, r'recipient')!,
        bounceType: mapValueOfType<String>(json, r'bounceType'),
        action: mapValueOfType<String>(json, r'action'),
        id: mapValueOfType<String>(json, r'id'),
        status: mapValueOfType<String>(json, r'status'),
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

