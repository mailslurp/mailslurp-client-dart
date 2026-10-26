//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserStorageInsightItemDto {
  /// Returns a new [UserStorageInsightItemDto] instance.
  UserStorageInsightItemDto({
    this.id,
    this.inboxId,
    this.domainId,
    required this.label,
    this.emailAddress,
    this.domain,
    required this.totalBytes,
    required this.emailBytes,
    required this.sentEmailBytes,
    required this.attachmentBytes,
    required this.itemCount,
  });

  String? id;

  String? inboxId;

  String? domainId;

  String label;

  String? emailAddress;

  String? domain;

  int totalBytes;

  int emailBytes;

  int sentEmailBytes;

  int attachmentBytes;

  int itemCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserStorageInsightItemDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.label == label &&
     other.emailAddress == emailAddress &&
     other.domain == domain &&
     other.totalBytes == totalBytes &&
     other.emailBytes == emailBytes &&
     other.sentEmailBytes == sentEmailBytes &&
     other.attachmentBytes == attachmentBytes &&
     other.itemCount == itemCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (label.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (totalBytes.hashCode) +
    (emailBytes.hashCode) +
    (sentEmailBytes.hashCode) +
    (attachmentBytes.hashCode) +
    (itemCount.hashCode);

  @override
  String toString() => 'UserStorageInsightItemDto[id=$id, inboxId=$inboxId, domainId=$domainId, label=$label, emailAddress=$emailAddress, domain=$domain, totalBytes=$totalBytes, emailBytes=$emailBytes, sentEmailBytes=$sentEmailBytes, attachmentBytes=$attachmentBytes, itemCount=$itemCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'label'] = this.label;
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
      json[r'totalBytes'] = this.totalBytes;
      json[r'emailBytes'] = this.emailBytes;
      json[r'sentEmailBytes'] = this.sentEmailBytes;
      json[r'attachmentBytes'] = this.attachmentBytes;
      json[r'itemCount'] = this.itemCount;
    return json;
  }

  /// Returns a new [UserStorageInsightItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserStorageInsightItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserStorageInsightItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserStorageInsightItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserStorageInsightItemDto(
        id: mapValueOfType<String>(json, r'id'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        label: mapValueOfType<String>(json, r'label')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        domain: mapValueOfType<String>(json, r'domain'),
        totalBytes: mapValueOfType<int>(json, r'totalBytes')!,
        emailBytes: mapValueOfType<int>(json, r'emailBytes')!,
        sentEmailBytes: mapValueOfType<int>(json, r'sentEmailBytes')!,
        attachmentBytes: mapValueOfType<int>(json, r'attachmentBytes')!,
        itemCount: mapValueOfType<int>(json, r'itemCount')!,
      );
    }
    return null;
  }

  static List<UserStorageInsightItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserStorageInsightItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserStorageInsightItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserStorageInsightItemDto> mapFromJson(dynamic json) {
    final map = <String, UserStorageInsightItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserStorageInsightItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserStorageInsightItemDto-objects as value to a dart map
  static Map<String, List<UserStorageInsightItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserStorageInsightItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserStorageInsightItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'totalBytes',
    'emailBytes',
    'sentEmailBytes',
    'attachmentBytes',
    'itemCount',
  };
}

