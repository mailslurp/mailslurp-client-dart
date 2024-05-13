//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AliasDto {
  /// Returns a new [AliasDto] instance.
  AliasDto({
    required this.id,
    required this.emailAddress,
    this.maskedEmailAddress,
    required this.userId,
    required this.inboxId,
    this.name,
    this.useThreads,
    required this.isVerified,
    this.domainId,
    this.createdAt,
    this.updatedAt,
  });

  String id;

  /// The alias's email address for receiving email
  String emailAddress;

  /// The underlying email address that is hidden and will received forwarded email
  String? maskedEmailAddress;

  String userId;

  /// Inbox that is associated with the alias
  String inboxId;

  String? name;

  /// If alias will generate response threads or not when email are received by it
  bool? useThreads;

  /// Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account
  bool isVerified;

  /// Domain ID associated with the alias
  String? domainId;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.maskedEmailAddress == maskedEmailAddress &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.useThreads == useThreads &&
     other.isVerified == isVerified &&
     other.domainId == domainId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (maskedEmailAddress == null ? 0 : maskedEmailAddress!.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (useThreads == null ? 0 : useThreads!.hashCode) +
    (isVerified.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AliasDto[id=$id, emailAddress=$emailAddress, maskedEmailAddress=$maskedEmailAddress, userId=$userId, inboxId=$inboxId, name=$name, useThreads=$useThreads, isVerified=$isVerified, domainId=$domainId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'emailAddress'] = this.emailAddress;
    if (this.maskedEmailAddress != null) {
      json[r'maskedEmailAddress'] = this.maskedEmailAddress;
    } else {
      json[r'maskedEmailAddress'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.useThreads != null) {
      json[r'useThreads'] = this.useThreads;
    } else {
      json[r'useThreads'] = null;
    }
      json[r'isVerified'] = this.isVerified;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AliasDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AliasDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AliasDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AliasDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AliasDto(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        maskedEmailAddress: mapValueOfType<String>(json, r'maskedEmailAddress'),
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        name: mapValueOfType<String>(json, r'name'),
        useThreads: mapValueOfType<bool>(json, r'useThreads'),
        isVerified: mapValueOfType<bool>(json, r'isVerified')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<AliasDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AliasDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AliasDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AliasDto> mapFromJson(dynamic json) {
    final map = <String, AliasDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AliasDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AliasDto-objects as value to a dart map
  static Map<String, List<AliasDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AliasDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AliasDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'userId',
    'inboxId',
    'isVerified',
  };
}

