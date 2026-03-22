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
    this.name,
    required this.id,
    this.enabled,
    this.emailAddress,
    required this.userId,
    required this.inboxId,
    required this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  String userId;

  String inboxId;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorProjection &&
     other.name == name &&
     other.id == id &&
     other.enabled == enabled &&
     other.emailAddress == emailAddress &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ConnectorProjection[name=$name, id=$id, enabled=$enabled, emailAddress=$emailAddress, userId=$userId, inboxId=$inboxId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
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
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        enabled: mapValueOfType<bool>(json, r'enabled'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
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
    'id',
    'userId',
    'inboxId',
    'createdAt',
  };
}

