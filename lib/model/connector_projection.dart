//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorProjection {
  /// Returns a new [ConnectorProjection] instance.
  ConnectorProjection({
    this.enabled,
    required this.userId,
    required this.inboxId,
    this.emailAddress,
    required this.createdAt,
    this.name,
    required this.id,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  String userId;

  String inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorProjection &&
     other.enabled == enabled &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (createdAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ConnectorProjection[enabled=$enabled, userId=$userId, inboxId=$inboxId, emailAddress=$emailAddress, createdAt=$createdAt, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ConnectorProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorProjection(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ConnectorProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorProjection> mapFromJson(dynamic json) {
    final map = <String, ConnectorProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorProjection-objects as value to a dart map
  static Map<String, List<ConnectorProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'inboxId',
    'createdAt',
    'id',
  };
}

