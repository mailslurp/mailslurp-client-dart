//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostmasterConnectionDto {
  /// Returns a new [PostmasterConnectionDto] instance.
  PostmasterConnectionDto({
    required this.id,
    required this.userId,
    required this.status,
    this.connectedEmail,
    this.scope,
    required this.expiresAt,
    this.lastSyncedAt,
    this.lastError,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  PostmasterConnectionDtoStatusEnum status;

  String? connectedEmail;

  String? scope;

  DateTime expiresAt;

  DateTime? lastSyncedAt;

  String? lastError;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostmasterConnectionDto &&
     other.id == id &&
     other.userId == userId &&
     other.status == status &&
     other.connectedEmail == connectedEmail &&
     other.scope == scope &&
     other.expiresAt == expiresAt &&
     other.lastSyncedAt == lastSyncedAt &&
     other.lastError == lastError &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (status.hashCode) +
    (connectedEmail == null ? 0 : connectedEmail!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (expiresAt.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PostmasterConnectionDto[id=$id, userId=$userId, status=$status, connectedEmail=$connectedEmail, scope=$scope, expiresAt=$expiresAt, lastSyncedAt=$lastSyncedAt, lastError=$lastError, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'status'] = this.status;
    if (this.connectedEmail != null) {
      json[r'connectedEmail'] = this.connectedEmail;
    } else {
      json[r'connectedEmail'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
    if (this.lastSyncedAt != null) {
      json[r'lastSyncedAt'] = this.lastSyncedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastSyncedAt'] = null;
    }
    if (this.lastError != null) {
      json[r'lastError'] = this.lastError;
    } else {
      json[r'lastError'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PostmasterConnectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostmasterConnectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostmasterConnectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostmasterConnectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostmasterConnectionDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        status: PostmasterConnectionDtoStatusEnum.fromJson(json[r'status'])!,
        connectedEmail: mapValueOfType<String>(json, r'connectedEmail'),
        scope: mapValueOfType<String>(json, r'scope'),
        expiresAt: mapDateTime(json, r'expiresAt', '')!,
        lastSyncedAt: mapDateTime(json, r'lastSyncedAt', ''),
        lastError: mapValueOfType<String>(json, r'lastError'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<PostmasterConnectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostmasterConnectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostmasterConnectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostmasterConnectionDto> mapFromJson(dynamic json) {
    final map = <String, PostmasterConnectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostmasterConnectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostmasterConnectionDto-objects as value to a dart map
  static Map<String, List<PostmasterConnectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostmasterConnectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostmasterConnectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'status',
    'expiresAt',
    'createdAt',
    'updatedAt',
  };
}


class PostmasterConnectionDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PostmasterConnectionDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CONNECTED = PostmasterConnectionDtoStatusEnum._(r'CONNECTED');
  static const DISCONNECTED = PostmasterConnectionDtoStatusEnum._(r'DISCONNECTED');
  static const ERROR = PostmasterConnectionDtoStatusEnum._(r'ERROR');

  /// List of all possible values in this [enum][PostmasterConnectionDtoStatusEnum].
  static const values = <PostmasterConnectionDtoStatusEnum>[
    CONNECTED,
    DISCONNECTED,
    ERROR,
  ];

  static PostmasterConnectionDtoStatusEnum? fromJson(dynamic value) => PostmasterConnectionDtoStatusEnumTypeTransformer().decode(value);

  static List<PostmasterConnectionDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostmasterConnectionDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostmasterConnectionDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostmasterConnectionDtoStatusEnum] to String,
/// and [decode] dynamic data back to [PostmasterConnectionDtoStatusEnum].
class PostmasterConnectionDtoStatusEnumTypeTransformer {
  factory PostmasterConnectionDtoStatusEnumTypeTransformer() => _instance ??= const PostmasterConnectionDtoStatusEnumTypeTransformer._();

  const PostmasterConnectionDtoStatusEnumTypeTransformer._();

  String encode(PostmasterConnectionDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostmasterConnectionDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostmasterConnectionDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CONNECTED': return PostmasterConnectionDtoStatusEnum.CONNECTED;
        case r'DISCONNECTED': return PostmasterConnectionDtoStatusEnum.DISCONNECTED;
        case r'ERROR': return PostmasterConnectionDtoStatusEnum.ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostmasterConnectionDtoStatusEnumTypeTransformer] instance.
  static PostmasterConnectionDtoStatusEnumTypeTransformer? _instance;
}


