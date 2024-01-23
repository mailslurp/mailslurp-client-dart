//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxReplierEventProjection {
  /// Returns a new [InboxReplierEventProjection] instance.
  InboxReplierEventProjection({
    this.recipients = const [],
    this.emailId,
    this.inboxId,
    this.userId,
    this.sentId,
    this.replierId,
    required this.createdAt,
    this.message,
    this.id,
    this.status,
  });

  List<String>? recipients;

  String? emailId;

  String? inboxId;

  String? userId;

  String? sentId;

  String? replierId;

  DateTime createdAt;

  String? message;

  String? id;

  InboxReplierEventProjectionStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxReplierEventProjection &&
     other.recipients == recipients &&
     other.emailId == emailId &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.sentId == sentId &&
     other.replierId == replierId &&
     other.createdAt == createdAt &&
     other.message == message &&
     other.id == id &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recipients == null ? 0 : recipients!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (sentId == null ? 0 : sentId!.hashCode) +
    (replierId == null ? 0 : replierId!.hashCode) +
    (createdAt.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'InboxReplierEventProjection[recipients=$recipients, emailId=$emailId, inboxId=$inboxId, userId=$userId, sentId=$sentId, replierId=$replierId, createdAt=$createdAt, message=$message, id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recipients != null) {
      json[r'recipients'] = this.recipients;
    } else {
      json[r'recipients'] = null;
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
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.sentId != null) {
      json[r'sentId'] = this.sentId;
    } else {
      json[r'sentId'] = null;
    }
    if (this.replierId != null) {
      json[r'replierId'] = this.replierId;
    } else {
      json[r'replierId'] = null;
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

  /// Returns a new [InboxReplierEventProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxReplierEventProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxReplierEventProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxReplierEventProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxReplierEventProjection(
        recipients: json[r'recipients'] is List
            ? (json[r'recipients'] as List).cast<String>()
            : const [],
        emailId: mapValueOfType<String>(json, r'emailId'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        userId: mapValueOfType<String>(json, r'userId'),
        sentId: mapValueOfType<String>(json, r'sentId'),
        replierId: mapValueOfType<String>(json, r'replierId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        message: mapValueOfType<String>(json, r'message'),
        id: mapValueOfType<String>(json, r'id'),
        status: InboxReplierEventProjectionStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<InboxReplierEventProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxReplierEventProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxReplierEventProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxReplierEventProjection> mapFromJson(dynamic json) {
    final map = <String, InboxReplierEventProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxReplierEventProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxReplierEventProjection-objects as value to a dart map
  static Map<String, List<InboxReplierEventProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxReplierEventProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxReplierEventProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
  };
}


class InboxReplierEventProjectionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxReplierEventProjectionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = InboxReplierEventProjectionStatusEnum._(r'SUCCESS');
  static const FAILURE = InboxReplierEventProjectionStatusEnum._(r'FAILURE');

  /// List of all possible values in this [enum][InboxReplierEventProjectionStatusEnum].
  static const values = <InboxReplierEventProjectionStatusEnum>[
    SUCCESS,
    FAILURE,
  ];

  static InboxReplierEventProjectionStatusEnum? fromJson(dynamic value) => InboxReplierEventProjectionStatusEnumTypeTransformer().decode(value);

  static List<InboxReplierEventProjectionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxReplierEventProjectionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxReplierEventProjectionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxReplierEventProjectionStatusEnum] to String,
/// and [decode] dynamic data back to [InboxReplierEventProjectionStatusEnum].
class InboxReplierEventProjectionStatusEnumTypeTransformer {
  factory InboxReplierEventProjectionStatusEnumTypeTransformer() => _instance ??= const InboxReplierEventProjectionStatusEnumTypeTransformer._();

  const InboxReplierEventProjectionStatusEnumTypeTransformer._();

  String encode(InboxReplierEventProjectionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxReplierEventProjectionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxReplierEventProjectionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS': return InboxReplierEventProjectionStatusEnum.SUCCESS;
        case r'FAILURE': return InboxReplierEventProjectionStatusEnum.FAILURE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxReplierEventProjectionStatusEnumTypeTransformer] instance.
  static InboxReplierEventProjectionStatusEnumTypeTransformer? _instance;
}


