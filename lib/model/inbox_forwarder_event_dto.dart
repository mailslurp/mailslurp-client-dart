//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderEventDto {
  /// Returns a new [InboxForwarderEventDto] instance.
  InboxForwarderEventDto({
    this.id,
    this.inboxId,
    this.emailId,
    this.userId,
    this.forwarderId,
    this.message,
    this.status,
    required this.createdAt,
  });

  String? id;

  String? inboxId;

  String? emailId;

  String? userId;

  String? forwarderId;

  String? message;

  InboxForwarderEventDtoStatusEnum? status;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderEventDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.emailId == emailId &&
     other.userId == userId &&
     other.forwarderId == forwarderId &&
     other.message == message &&
     other.status == status &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (forwarderId == null ? 0 : forwarderId!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'InboxForwarderEventDto[id=$id, inboxId=$inboxId, emailId=$emailId, userId=$userId, forwarderId=$forwarderId, message=$message, status=$status, createdAt=$createdAt]';

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
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.forwarderId != null) {
      json[r'forwarderId'] = this.forwarderId;
    } else {
      json[r'forwarderId'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxForwarderEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxForwarderEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxForwarderEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxForwarderEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxForwarderEventDto(
        id: mapValueOfType<String>(json, r'id'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        userId: mapValueOfType<String>(json, r'userId'),
        forwarderId: mapValueOfType<String>(json, r'forwarderId'),
        message: mapValueOfType<String>(json, r'message'),
        status: InboxForwarderEventDtoStatusEnum.fromJson(json[r'status']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<InboxForwarderEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxForwarderEventDto> mapFromJson(dynamic json) {
    final map = <String, InboxForwarderEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderEventDto-objects as value to a dart map
  static Map<String, List<InboxForwarderEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxForwarderEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxForwarderEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
  };
}


class InboxForwarderEventDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderEventDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = InboxForwarderEventDtoStatusEnum._(r'SUCCESS');
  static const FAILURE = InboxForwarderEventDtoStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][InboxForwarderEventDtoStatusEnum].
  static const values = <InboxForwarderEventDtoStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static InboxForwarderEventDtoStatusEnum? fromJson(dynamic value) => InboxForwarderEventDtoStatusEnumTypeTransformer().decode(value);

  static List<InboxForwarderEventDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderEventDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderEventDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxForwarderEventDtoStatusEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderEventDtoStatusEnum].
class InboxForwarderEventDtoStatusEnumTypeTransformer {
  factory InboxForwarderEventDtoStatusEnumTypeTransformer() => _instance ??= const InboxForwarderEventDtoStatusEnumTypeTransformer._();

  const InboxForwarderEventDtoStatusEnumTypeTransformer._();

  String encode(InboxForwarderEventDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderEventDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderEventDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return InboxForwarderEventDtoStatusEnum.SUCCESS;
        case r'FAILURE': return InboxForwarderEventDtoStatusEnum.FAILURE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxForwarderEventDtoStatusEnumTypeTransformer] instance.
  static InboxForwarderEventDtoStatusEnumTypeTransformer? _instance;
}


