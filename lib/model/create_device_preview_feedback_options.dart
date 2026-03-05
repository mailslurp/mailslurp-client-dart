//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewFeedbackOptions {
  /// Returns a new [CreateDevicePreviewFeedbackOptions] instance.
  CreateDevicePreviewFeedbackOptions({
    required this.source_,
    required this.category,
    this.status,
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
  });

  CreateDevicePreviewFeedbackOptionsSource_Enum source_;

  CreateDevicePreviewFeedbackOptionsCategoryEnum category;

  CreateDevicePreviewFeedbackOptionsStatusEnum? status;

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

  CreateDevicePreviewFeedbackOptionsProviderEnum? provider;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewFeedbackOptions &&
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
     other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_.hashCode) +
    (category.hashCode) +
    (status == null ? 0 : status!.hashCode) +
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
    (metadata.hashCode);

  @override
  String toString() => 'CreateDevicePreviewFeedbackOptions[source_=$source_, category=$category, status=$status, rating=$rating, runId=$runId, targetId=$targetId, screenshotId=$screenshotId, provider=$provider, title=$title, comment=$comment, internalNote=$internalNote, sessionId=$sessionId, liveViewUrl=$liveViewUrl, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'source'] = this.source_;
      json[r'category'] = this.category;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
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
    return json;
  }

  /// Returns a new [CreateDevicePreviewFeedbackOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewFeedbackOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewFeedbackOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewFeedbackOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewFeedbackOptions(
        source_: CreateDevicePreviewFeedbackOptionsSource_Enum.fromJson(json[r'source'])!,
        category: CreateDevicePreviewFeedbackOptionsCategoryEnum.fromJson(json[r'category'])!,
        status: CreateDevicePreviewFeedbackOptionsStatusEnum.fromJson(json[r'status']),
        rating: mapValueOfType<int>(json, r'rating'),
        runId: mapValueOfType<String>(json, r'runId'),
        targetId: mapValueOfType<String>(json, r'targetId'),
        screenshotId: mapValueOfType<String>(json, r'screenshotId'),
        provider: CreateDevicePreviewFeedbackOptionsProviderEnum.fromJson(json[r'provider']),
        title: mapValueOfType<String>(json, r'title'),
        comment: mapValueOfType<String>(json, r'comment'),
        internalNote: mapValueOfType<String>(json, r'internalNote'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        liveViewUrl: mapValueOfType<String>(json, r'liveViewUrl'),
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateDevicePreviewFeedbackOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFeedbackOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFeedbackOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewFeedbackOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewFeedbackOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewFeedbackOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewFeedbackOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewFeedbackOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewFeedbackOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewFeedbackOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
    'category',
  };
}


class CreateDevicePreviewFeedbackOptionsSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const CreateDevicePreviewFeedbackOptionsSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const API_SERVICE = CreateDevicePreviewFeedbackOptionsSource_Enum._(r'API_SERVICE');
  static const LAB_USER = CreateDevicePreviewFeedbackOptionsSource_Enum._(r'LAB_USER');
  static const END_USER = CreateDevicePreviewFeedbackOptionsSource_Enum._(r'END_USER');
  static const SYSTEM = CreateDevicePreviewFeedbackOptionsSource_Enum._(r'SYSTEM');

  /// List of all possible values in this [enum][CreateDevicePreviewFeedbackOptionsSource_Enum].
  static const values = <CreateDevicePreviewFeedbackOptionsSource_Enum>[
    API_SERVICE,
    LAB_USER,
    END_USER,
    SYSTEM,
  ];

  static CreateDevicePreviewFeedbackOptionsSource_Enum? fromJson(dynamic value) => CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer().decode(value);

  static List<CreateDevicePreviewFeedbackOptionsSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFeedbackOptionsSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFeedbackOptionsSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDevicePreviewFeedbackOptionsSource_Enum] to String,
/// and [decode] dynamic data back to [CreateDevicePreviewFeedbackOptionsSource_Enum].
class CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer {
  factory CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer() => _instance ??= const CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer._();

  const CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer._();

  String encode(CreateDevicePreviewFeedbackOptionsSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDevicePreviewFeedbackOptionsSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDevicePreviewFeedbackOptionsSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'API_SERVICE': return CreateDevicePreviewFeedbackOptionsSource_Enum.API_SERVICE;
        case r'LAB_USER': return CreateDevicePreviewFeedbackOptionsSource_Enum.LAB_USER;
        case r'END_USER': return CreateDevicePreviewFeedbackOptionsSource_Enum.END_USER;
        case r'SYSTEM': return CreateDevicePreviewFeedbackOptionsSource_Enum.SYSTEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer] instance.
  static CreateDevicePreviewFeedbackOptionsSource_EnumTypeTransformer? _instance;
}



class CreateDevicePreviewFeedbackOptionsCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDevicePreviewFeedbackOptionsCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENERAL = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'GENERAL');
  static const RUN_QUALITY = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'RUN_QUALITY');
  static const SCREENSHOT_QUALITY = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'SCREENSHOT_QUALITY');
  static const PROVIDER_ISSUE = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'PROVIDER_ISSUE');
  static const BUG_REPORT = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'BUG_REPORT');
  static const FEATURE_REQUEST = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'FEATURE_REQUEST');
  static const NOTE = CreateDevicePreviewFeedbackOptionsCategoryEnum._(r'NOTE');

  /// List of all possible values in this [enum][CreateDevicePreviewFeedbackOptionsCategoryEnum].
  static const values = <CreateDevicePreviewFeedbackOptionsCategoryEnum>[
    GENERAL,
    RUN_QUALITY,
    SCREENSHOT_QUALITY,
    PROVIDER_ISSUE,
    BUG_REPORT,
    FEATURE_REQUEST,
    NOTE,
  ];

  static CreateDevicePreviewFeedbackOptionsCategoryEnum? fromJson(dynamic value) => CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer().decode(value);

  static List<CreateDevicePreviewFeedbackOptionsCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFeedbackOptionsCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFeedbackOptionsCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDevicePreviewFeedbackOptionsCategoryEnum] to String,
/// and [decode] dynamic data back to [CreateDevicePreviewFeedbackOptionsCategoryEnum].
class CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer {
  factory CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer() => _instance ??= const CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer._();

  const CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer._();

  String encode(CreateDevicePreviewFeedbackOptionsCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDevicePreviewFeedbackOptionsCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDevicePreviewFeedbackOptionsCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENERAL': return CreateDevicePreviewFeedbackOptionsCategoryEnum.GENERAL;
        case r'RUN_QUALITY': return CreateDevicePreviewFeedbackOptionsCategoryEnum.RUN_QUALITY;
        case r'SCREENSHOT_QUALITY': return CreateDevicePreviewFeedbackOptionsCategoryEnum.SCREENSHOT_QUALITY;
        case r'PROVIDER_ISSUE': return CreateDevicePreviewFeedbackOptionsCategoryEnum.PROVIDER_ISSUE;
        case r'BUG_REPORT': return CreateDevicePreviewFeedbackOptionsCategoryEnum.BUG_REPORT;
        case r'FEATURE_REQUEST': return CreateDevicePreviewFeedbackOptionsCategoryEnum.FEATURE_REQUEST;
        case r'NOTE': return CreateDevicePreviewFeedbackOptionsCategoryEnum.NOTE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer] instance.
  static CreateDevicePreviewFeedbackOptionsCategoryEnumTypeTransformer? _instance;
}



class CreateDevicePreviewFeedbackOptionsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDevicePreviewFeedbackOptionsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = CreateDevicePreviewFeedbackOptionsStatusEnum._(r'OPEN');
  static const ACKNOWLEDGED = CreateDevicePreviewFeedbackOptionsStatusEnum._(r'ACKNOWLEDGED');
  static const RESOLVED = CreateDevicePreviewFeedbackOptionsStatusEnum._(r'RESOLVED');
  static const DISMISSED = CreateDevicePreviewFeedbackOptionsStatusEnum._(r'DISMISSED');

  /// List of all possible values in this [enum][CreateDevicePreviewFeedbackOptionsStatusEnum].
  static const values = <CreateDevicePreviewFeedbackOptionsStatusEnum>[
    OPEN,
    ACKNOWLEDGED,
    RESOLVED,
    DISMISSED,
  ];

  static CreateDevicePreviewFeedbackOptionsStatusEnum? fromJson(dynamic value) => CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer().decode(value);

  static List<CreateDevicePreviewFeedbackOptionsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFeedbackOptionsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFeedbackOptionsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDevicePreviewFeedbackOptionsStatusEnum] to String,
/// and [decode] dynamic data back to [CreateDevicePreviewFeedbackOptionsStatusEnum].
class CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer {
  factory CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer() => _instance ??= const CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer._();

  const CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer._();

  String encode(CreateDevicePreviewFeedbackOptionsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDevicePreviewFeedbackOptionsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDevicePreviewFeedbackOptionsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return CreateDevicePreviewFeedbackOptionsStatusEnum.OPEN;
        case r'ACKNOWLEDGED': return CreateDevicePreviewFeedbackOptionsStatusEnum.ACKNOWLEDGED;
        case r'RESOLVED': return CreateDevicePreviewFeedbackOptionsStatusEnum.RESOLVED;
        case r'DISMISSED': return CreateDevicePreviewFeedbackOptionsStatusEnum.DISMISSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer] instance.
  static CreateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer? _instance;
}



class CreateDevicePreviewFeedbackOptionsProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDevicePreviewFeedbackOptionsProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = CreateDevicePreviewFeedbackOptionsProviderEnum._(r'GMAIL');
  static const OUTLOOK = CreateDevicePreviewFeedbackOptionsProviderEnum._(r'OUTLOOK');
  static const YAHOO = CreateDevicePreviewFeedbackOptionsProviderEnum._(r'YAHOO');

  /// List of all possible values in this [enum][CreateDevicePreviewFeedbackOptionsProviderEnum].
  static const values = <CreateDevicePreviewFeedbackOptionsProviderEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static CreateDevicePreviewFeedbackOptionsProviderEnum? fromJson(dynamic value) => CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer().decode(value);

  static List<CreateDevicePreviewFeedbackOptionsProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewFeedbackOptionsProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewFeedbackOptionsProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateDevicePreviewFeedbackOptionsProviderEnum] to String,
/// and [decode] dynamic data back to [CreateDevicePreviewFeedbackOptionsProviderEnum].
class CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer {
  factory CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer() => _instance ??= const CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer._();

  const CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer._();

  String encode(CreateDevicePreviewFeedbackOptionsProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDevicePreviewFeedbackOptionsProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDevicePreviewFeedbackOptionsProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return CreateDevicePreviewFeedbackOptionsProviderEnum.GMAIL;
        case r'OUTLOOK': return CreateDevicePreviewFeedbackOptionsProviderEnum.OUTLOOK;
        case r'YAHOO': return CreateDevicePreviewFeedbackOptionsProviderEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer] instance.
  static CreateDevicePreviewFeedbackOptionsProviderEnumTypeTransformer? _instance;
}


