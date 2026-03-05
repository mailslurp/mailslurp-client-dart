//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewFeedbackDto {
  /// Returns a new [DevicePreviewFeedbackDto] instance.
  DevicePreviewFeedbackDto({
    required this.feedbackId,
    required this.userId,
    required this.source_,
    required this.category,
    required this.status,
    this.rating,
    this.runId,
    this.targetId,
    this.screenshotId,
    this.provider,
    this.title,
    this.comment,
    this.internalNote,
    this.sessionId,
    this.liveViewUrl,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
  });

  String feedbackId;

  String userId;

  DevicePreviewFeedbackDtoSource_Enum source_;

  DevicePreviewFeedbackDtoCategoryEnum category;

  DevicePreviewFeedbackDtoStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? screenshotId;

  DevicePreviewFeedbackDtoProviderEnum? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internalNote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveViewUrl;

  Map<String, String> metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewFeedbackDto &&
     other.feedbackId == feedbackId &&
     other.userId == userId &&
     other.source_ == source_ &&
     other.category == category &&
     other.status == status &&
     other.rating == rating &&
     other.runId == runId &&
     other.targetId == targetId &&
     other.screenshotId == screenshotId &&
     other.provider == provider &&
     other.title == title &&
     other.comment == comment &&
     other.internalNote == internalNote &&
     other.sessionId == sessionId &&
     other.liveViewUrl == liveViewUrl &&
     other.metadata == metadata &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (feedbackId.hashCode) +
    (userId.hashCode) +
    (source_.hashCode) +
    (category.hashCode) +
    (status.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (screenshotId == null ? 0 : screenshotId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (internalNote == null ? 0 : internalNote!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (liveViewUrl == null ? 0 : liveViewUrl!.hashCode) +
    (metadata.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DevicePreviewFeedbackDto[feedbackId=$feedbackId, userId=$userId, source_=$source_, category=$category, status=$status, rating=$rating, runId=$runId, targetId=$targetId, screenshotId=$screenshotId, provider=$provider, title=$title, comment=$comment, internalNote=$internalNote, sessionId=$sessionId, liveViewUrl=$liveViewUrl, metadata=$metadata, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'feedbackId'] = this.feedbackId;
      json[r'userId'] = this.userId;
      json[r'source'] = this.source_;
      json[r'category'] = this.category;
      json[r'status'] = this.status;
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.screenshotId != null) {
      json[r'screenshotId'] = this.screenshotId;
    } else {
      json[r'screenshotId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.internalNote != null) {
      json[r'internalNote'] = this.internalNote;
    } else {
      json[r'internalNote'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.liveViewUrl != null) {
      json[r'liveViewUrl'] = this.liveViewUrl;
    } else {
      json[r'liveViewUrl'] = null;
    }
      json[r'metadata'] = this.metadata;
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

  /// Returns a new [DevicePreviewFeedbackDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewFeedbackDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewFeedbackDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewFeedbackDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewFeedbackDto(
        feedbackId: mapValueOfType<String>(json, r'feedbackId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        source_: DevicePreviewFeedbackDtoSource_Enum.fromJson(json[r'source'])!,
        category: DevicePreviewFeedbackDtoCategoryEnum.fromJson(json[r'category'])!,
        status: DevicePreviewFeedbackDtoStatusEnum.fromJson(json[r'status'])!,
        rating: mapValueOfType<int>(json, r'rating'),
        runId: mapValueOfType<String>(json, r'runId'),
        targetId: mapValueOfType<String>(json, r'targetId'),
        screenshotId: mapValueOfType<String>(json, r'screenshotId'),
        provider: DevicePreviewFeedbackDtoProviderEnum.fromJson(json[r'provider']),
        title: mapValueOfType<String>(json, r'title'),
        comment: mapValueOfType<String>(json, r'comment'),
        internalNote: mapValueOfType<String>(json, r'internalNote'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        liveViewUrl: mapValueOfType<String>(json, r'liveViewUrl'),
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<DevicePreviewFeedbackDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewFeedbackDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewFeedbackDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewFeedbackDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewFeedbackDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewFeedbackDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewFeedbackDto-objects as value to a dart map
  static Map<String, List<DevicePreviewFeedbackDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewFeedbackDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewFeedbackDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'feedbackId',
    'userId',
    'source',
    'category',
    'status',
  };
}


class DevicePreviewFeedbackDtoSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewFeedbackDtoSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const API_SERVICE = DevicePreviewFeedbackDtoSource_Enum._(r'API_SERVICE');
  static const LAB_USER = DevicePreviewFeedbackDtoSource_Enum._(r'LAB_USER');
  static const END_USER = DevicePreviewFeedbackDtoSource_Enum._(r'END_USER');
  static const SYSTEM = DevicePreviewFeedbackDtoSource_Enum._(r'SYSTEM');

  /// List of all possible values in this [enum][DevicePreviewFeedbackDtoSource_Enum].
  static const values = <DevicePreviewFeedbackDtoSource_Enum>[
    API_SERVICE,
    LAB_USER,
    END_USER,
    SYSTEM,
  ];

  static DevicePreviewFeedbackDtoSource_Enum? fromJson(dynamic value) => DevicePreviewFeedbackDtoSource_EnumTypeTransformer().decode(value);

  static List<DevicePreviewFeedbackDtoSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewFeedbackDtoSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewFeedbackDtoSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewFeedbackDtoSource_Enum] to String,
/// and [decode] dynamic data back to [DevicePreviewFeedbackDtoSource_Enum].
class DevicePreviewFeedbackDtoSource_EnumTypeTransformer {
  factory DevicePreviewFeedbackDtoSource_EnumTypeTransformer() => _instance ??= const DevicePreviewFeedbackDtoSource_EnumTypeTransformer._();

  const DevicePreviewFeedbackDtoSource_EnumTypeTransformer._();

  String encode(DevicePreviewFeedbackDtoSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewFeedbackDtoSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewFeedbackDtoSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'API_SERVICE': return DevicePreviewFeedbackDtoSource_Enum.API_SERVICE;
        case r'LAB_USER': return DevicePreviewFeedbackDtoSource_Enum.LAB_USER;
        case r'END_USER': return DevicePreviewFeedbackDtoSource_Enum.END_USER;
        case r'SYSTEM': return DevicePreviewFeedbackDtoSource_Enum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewFeedbackDtoSource_EnumTypeTransformer] instance.
  static DevicePreviewFeedbackDtoSource_EnumTypeTransformer? _instance;
}



class DevicePreviewFeedbackDtoCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewFeedbackDtoCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENERAL = DevicePreviewFeedbackDtoCategoryEnum._(r'GENERAL');
  static const RUN_QUALITY = DevicePreviewFeedbackDtoCategoryEnum._(r'RUN_QUALITY');
  static const SCREENSHOT_QUALITY = DevicePreviewFeedbackDtoCategoryEnum._(r'SCREENSHOT_QUALITY');
  static const PROVIDER_ISSUE = DevicePreviewFeedbackDtoCategoryEnum._(r'PROVIDER_ISSUE');
  static const BUG_REPORT = DevicePreviewFeedbackDtoCategoryEnum._(r'BUG_REPORT');
  static const FEATURE_REQUEST = DevicePreviewFeedbackDtoCategoryEnum._(r'FEATURE_REQUEST');
  static const NOTE = DevicePreviewFeedbackDtoCategoryEnum._(r'NOTE');

  /// List of all possible values in this [enum][DevicePreviewFeedbackDtoCategoryEnum].
  static const values = <DevicePreviewFeedbackDtoCategoryEnum>[
    GENERAL,
    RUN_QUALITY,
    SCREENSHOT_QUALITY,
    PROVIDER_ISSUE,
    BUG_REPORT,
    FEATURE_REQUEST,
    NOTE,
  ];

  static DevicePreviewFeedbackDtoCategoryEnum? fromJson(dynamic value) => DevicePreviewFeedbackDtoCategoryEnumTypeTransformer().decode(value);

  static List<DevicePreviewFeedbackDtoCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewFeedbackDtoCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewFeedbackDtoCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewFeedbackDtoCategoryEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewFeedbackDtoCategoryEnum].
class DevicePreviewFeedbackDtoCategoryEnumTypeTransformer {
  factory DevicePreviewFeedbackDtoCategoryEnumTypeTransformer() => _instance ??= const DevicePreviewFeedbackDtoCategoryEnumTypeTransformer._();

  const DevicePreviewFeedbackDtoCategoryEnumTypeTransformer._();

  String encode(DevicePreviewFeedbackDtoCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewFeedbackDtoCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewFeedbackDtoCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENERAL': return DevicePreviewFeedbackDtoCategoryEnum.GENERAL;
        case r'RUN_QUALITY': return DevicePreviewFeedbackDtoCategoryEnum.RUN_QUALITY;
        case r'SCREENSHOT_QUALITY': return DevicePreviewFeedbackDtoCategoryEnum.SCREENSHOT_QUALITY;
        case r'PROVIDER_ISSUE': return DevicePreviewFeedbackDtoCategoryEnum.PROVIDER_ISSUE;
        case r'BUG_REPORT': return DevicePreviewFeedbackDtoCategoryEnum.BUG_REPORT;
        case r'FEATURE_REQUEST': return DevicePreviewFeedbackDtoCategoryEnum.FEATURE_REQUEST;
        case r'NOTE': return DevicePreviewFeedbackDtoCategoryEnum.NOTE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewFeedbackDtoCategoryEnumTypeTransformer] instance.
  static DevicePreviewFeedbackDtoCategoryEnumTypeTransformer? _instance;
}



class DevicePreviewFeedbackDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewFeedbackDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = DevicePreviewFeedbackDtoStatusEnum._(r'OPEN');
  static const ACKNOWLEDGED = DevicePreviewFeedbackDtoStatusEnum._(r'ACKNOWLEDGED');
  static const RESOLVED = DevicePreviewFeedbackDtoStatusEnum._(r'RESOLVED');
  static const DISMISSED = DevicePreviewFeedbackDtoStatusEnum._(r'DISMISSED');

  /// List of all possible values in this [enum][DevicePreviewFeedbackDtoStatusEnum].
  static const values = <DevicePreviewFeedbackDtoStatusEnum>[
    OPEN,
    ACKNOWLEDGED,
    RESOLVED,
    DISMISSED,
  ];

  static DevicePreviewFeedbackDtoStatusEnum? fromJson(dynamic value) => DevicePreviewFeedbackDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewFeedbackDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewFeedbackDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewFeedbackDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewFeedbackDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewFeedbackDtoStatusEnum].
class DevicePreviewFeedbackDtoStatusEnumTypeTransformer {
  factory DevicePreviewFeedbackDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewFeedbackDtoStatusEnumTypeTransformer._();

  const DevicePreviewFeedbackDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewFeedbackDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewFeedbackDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewFeedbackDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return DevicePreviewFeedbackDtoStatusEnum.OPEN;
        case r'ACKNOWLEDGED': return DevicePreviewFeedbackDtoStatusEnum.ACKNOWLEDGED;
        case r'RESOLVED': return DevicePreviewFeedbackDtoStatusEnum.RESOLVED;
        case r'DISMISSED': return DevicePreviewFeedbackDtoStatusEnum.DISMISSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewFeedbackDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewFeedbackDtoStatusEnumTypeTransformer? _instance;
}



class DevicePreviewFeedbackDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewFeedbackDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = DevicePreviewFeedbackDtoProviderEnum._(r'GMAIL');
  static const OUTLOOK = DevicePreviewFeedbackDtoProviderEnum._(r'OUTLOOK');
  static const YAHOO = DevicePreviewFeedbackDtoProviderEnum._(r'YAHOO');

  /// List of all possible values in this [enum][DevicePreviewFeedbackDtoProviderEnum].
  static const values = <DevicePreviewFeedbackDtoProviderEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static DevicePreviewFeedbackDtoProviderEnum? fromJson(dynamic value) => DevicePreviewFeedbackDtoProviderEnumTypeTransformer().decode(value);

  static List<DevicePreviewFeedbackDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewFeedbackDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewFeedbackDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewFeedbackDtoProviderEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewFeedbackDtoProviderEnum].
class DevicePreviewFeedbackDtoProviderEnumTypeTransformer {
  factory DevicePreviewFeedbackDtoProviderEnumTypeTransformer() => _instance ??= const DevicePreviewFeedbackDtoProviderEnumTypeTransformer._();

  const DevicePreviewFeedbackDtoProviderEnumTypeTransformer._();

  String encode(DevicePreviewFeedbackDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewFeedbackDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewFeedbackDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return DevicePreviewFeedbackDtoProviderEnum.GMAIL;
        case r'OUTLOOK': return DevicePreviewFeedbackDtoProviderEnum.OUTLOOK;
        case r'YAHOO': return DevicePreviewFeedbackDtoProviderEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewFeedbackDtoProviderEnumTypeTransformer] instance.
  static DevicePreviewFeedbackDtoProviderEnumTypeTransformer? _instance;
}


