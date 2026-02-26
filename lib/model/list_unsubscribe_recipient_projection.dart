//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListUnsubscribeRecipientProjection {
  /// Returns a new [ListUnsubscribeRecipientProjection] instance.
  ListUnsubscribeRecipientProjection({
    required this.emailAddress,
    required this.createdAt,
    this.domainId,
    required this.id,
  });

  String emailAddress;

  DateTime createdAt;

  String? domainId;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListUnsubscribeRecipientProjection &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.domainId == domainId &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddress.hashCode) +
    (createdAt.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ListUnsubscribeRecipientProjection[emailAddress=$emailAddress, createdAt=$createdAt, domainId=$domainId, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = this.emailAddress;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ListUnsubscribeRecipientProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListUnsubscribeRecipientProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListUnsubscribeRecipientProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListUnsubscribeRecipientProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListUnsubscribeRecipientProjection(
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ListUnsubscribeRecipientProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListUnsubscribeRecipientProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListUnsubscribeRecipientProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListUnsubscribeRecipientProjection> mapFromJson(dynamic json) {
    final map = <String, ListUnsubscribeRecipientProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListUnsubscribeRecipientProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListUnsubscribeRecipientProjection-objects as value to a dart map
  static Map<String, List<ListUnsubscribeRecipientProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListUnsubscribeRecipientProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListUnsubscribeRecipientProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
    'createdAt',
    'id',
  };
}

