//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderEventProjection {
  /// Returns a new [InboxForwarderEventProjection] instance.
  InboxForwarderEventProjection({
    this.userId,
    this.emailId,
    this.inboxId,
    this.forwarderId,
    required this.createdAt,
    this.message,
    this.id,
    this.status,
  });

  String? userId;

  String? emailId;

  String? inboxId;

  String? forwarderId;

  DateTime createdAt;

  String? message;

  String? id;

  InboxForwarderEventProjectionStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderEventProjection &&
     other.userId == userId &&
     other.emailId == emailId &&
     other.inboxId == inboxId &&
     other.forwarderId == forwarderId &&
     other.createdAt == createdAt &&
     other.message == message &&
     other.id == id &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (forwarderId == null ? 0 : forwarderId!.hashCode) +
    (createdAt.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'InboxForwarderEventProjection[userId=$userId, emailId=$emailId, inboxId=$inboxId, forwarderId=$forwarderId, createdAt=$createdAt, message=$message, id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.forwarderId != null) {
      json[r'forwarderId'] = this.forwarderId;
    } else {
      json[r'forwarderId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
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

  /// Returns a new [InboxForwarderEventProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxForwarderEventProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxForwarderEventProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxForwarderEventProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxForwarderEventProjection(
        userId: mapValueOfType<String>(json, r'userId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        forwarderId: mapValueOfType<String>(json, r'forwarderId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        message: mapValueOfType<String>(json, r'message'),
        id: mapValueOfType<String>(json, r'id'),
        status: InboxForwarderEventProjectionStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<InboxForwarderEventProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderEventProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderEventProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxForwarderEventProjection> mapFromJson(dynamic json) {
    final map = <String, InboxForwarderEventProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderEventProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderEventProjection-objects as value to a dart map
  static Map<String, List<InboxForwarderEventProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxForwarderEventProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxForwarderEventProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
  };
}


class InboxForwarderEventProjectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderEventProjectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = InboxForwarderEventProjectionStatusEnum._(r'SUCCESS');
  static const FAILURE = InboxForwarderEventProjectionStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][InboxForwarderEventProjectionStatusEnum].
  static const values = <InboxForwarderEventProjectionStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static InboxForwarderEventProjectionStatusEnum? fromJson(dynamic value) => InboxForwarderEventProjectionStatusEnumTypeTransformer().decode(value);

  static List<InboxForwarderEventProjectionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderEventProjectionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderEventProjectionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxForwarderEventProjectionStatusEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderEventProjectionStatusEnum].
class InboxForwarderEventProjectionStatusEnumTypeTransformer {
  factory InboxForwarderEventProjectionStatusEnumTypeTransformer() => _instance ??= const InboxForwarderEventProjectionStatusEnumTypeTransformer._();

  const InboxForwarderEventProjectionStatusEnumTypeTransformer._();

  String encode(InboxForwarderEventProjectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderEventProjectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderEventProjectionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return InboxForwarderEventProjectionStatusEnum.SUCCESS;
        case r'FAILURE': return InboxForwarderEventProjectionStatusEnum.FAILURE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxForwarderEventProjectionStatusEnumTypeTransformer] instance.
  static InboxForwarderEventProjectionStatusEnumTypeTransformer? _instance;
}


