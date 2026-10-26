//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicDeviceRenderTestDto {
  /// Returns a new [PublicDeviceRenderTestDto] instance.
  PublicDeviceRenderTestDto({
    required this.id,
    required this.emailAddress,
    required this.status,
    required this.expiresAt,
    required this.target,
    required this.previewMode,
    this.sourceFrom,
    this.sourceSubject,
    this.senderDomain,
    this.runId,
    this.shareUrl,
    this.redirectUrl,
    required this.freeLimitReached,
    this.failureCode,
    this.failureMessage,
  });

  String id;

  String emailAddress;

  PublicDeviceRenderTestDtoStatusEnum status;

  DateTime expiresAt;

  String target;

  PublicDeviceRenderTestDtoPreviewModeEnum previewMode;

  String? sourceFrom;

  String? sourceSubject;

  String? senderDomain;

  String? runId;

  String? shareUrl;

  String? redirectUrl;

  bool freeLimitReached;

  String? failureCode;

  String? failureMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicDeviceRenderTestDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.status == status &&
     other.expiresAt == expiresAt &&
     other.target == target &&
     other.previewMode == previewMode &&
     other.sourceFrom == sourceFrom &&
     other.sourceSubject == sourceSubject &&
     other.senderDomain == senderDomain &&
     other.runId == runId &&
     other.shareUrl == shareUrl &&
     other.redirectUrl == redirectUrl &&
     other.freeLimitReached == freeLimitReached &&
     other.failureCode == failureCode &&
     other.failureMessage == failureMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (status.hashCode) +
    (expiresAt.hashCode) +
    (target.hashCode) +
    (previewMode.hashCode) +
    (sourceFrom == null ? 0 : sourceFrom!.hashCode) +
    (sourceSubject == null ? 0 : sourceSubject!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (shareUrl == null ? 0 : shareUrl!.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl!.hashCode) +
    (freeLimitReached.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (failureMessage == null ? 0 : failureMessage!.hashCode);

  @override
  String toString() => 'PublicDeviceRenderTestDto[id=$id, emailAddress=$emailAddress, status=$status, expiresAt=$expiresAt, target=$target, previewMode=$previewMode, sourceFrom=$sourceFrom, sourceSubject=$sourceSubject, senderDomain=$senderDomain, runId=$runId, shareUrl=$shareUrl, redirectUrl=$redirectUrl, freeLimitReached=$freeLimitReached, failureCode=$failureCode, failureMessage=$failureMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'emailAddress'] = this.emailAddress;
      json[r'status'] = this.status;
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
      json[r'target'] = this.target;
      json[r'previewMode'] = this.previewMode;
    if (this.sourceFrom != null) {
      json[r'sourceFrom'] = this.sourceFrom;
    } else {
      json[r'sourceFrom'] = null;
    }
    if (this.sourceSubject != null) {
      json[r'sourceSubject'] = this.sourceSubject;
    } else {
      json[r'sourceSubject'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
    if (this.shareUrl != null) {
      json[r'shareUrl'] = this.shareUrl;
    } else {
      json[r'shareUrl'] = null;
    }
    if (this.redirectUrl != null) {
      json[r'redirectUrl'] = this.redirectUrl;
    } else {
      json[r'redirectUrl'] = null;
    }
      json[r'freeLimitReached'] = this.freeLimitReached;
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.failureMessage != null) {
      json[r'failureMessage'] = this.failureMessage;
    } else {
      json[r'failureMessage'] = null;
    }
    return json;
  }

  /// Returns a new [PublicDeviceRenderTestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicDeviceRenderTestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicDeviceRenderTestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicDeviceRenderTestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicDeviceRenderTestDto(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        status: PublicDeviceRenderTestDtoStatusEnum.fromJson(json[r'status'])!,
        expiresAt: mapDateTime(json, r'expiresAt', '')!,
        target: mapValueOfType<String>(json, r'target')!,
        previewMode: PublicDeviceRenderTestDtoPreviewModeEnum.fromJson(json[r'previewMode'])!,
        sourceFrom: mapValueOfType<String>(json, r'sourceFrom'),
        sourceSubject: mapValueOfType<String>(json, r'sourceSubject'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        runId: mapValueOfType<String>(json, r'runId'),
        shareUrl: mapValueOfType<String>(json, r'shareUrl'),
        redirectUrl: mapValueOfType<String>(json, r'redirectUrl'),
        freeLimitReached: mapValueOfType<bool>(json, r'freeLimitReached')!,
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        failureMessage: mapValueOfType<String>(json, r'failureMessage'),
      );
    }
    return null;
  }

  static List<PublicDeviceRenderTestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicDeviceRenderTestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicDeviceRenderTestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicDeviceRenderTestDto> mapFromJson(dynamic json) {
    final map = <String, PublicDeviceRenderTestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicDeviceRenderTestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicDeviceRenderTestDto-objects as value to a dart map
  static Map<String, List<PublicDeviceRenderTestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicDeviceRenderTestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicDeviceRenderTestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'status',
    'expiresAt',
    'target',
    'previewMode',
    'freeLimitReached',
  };
}


class PublicDeviceRenderTestDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicDeviceRenderTestDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WAITING_FOR_EMAIL = PublicDeviceRenderTestDtoStatusEnum._(r'WAITING_FOR_EMAIL');
  static const RECEIVED = PublicDeviceRenderTestDtoStatusEnum._(r'RECEIVED');
  static const PROCESSING = PublicDeviceRenderTestDtoStatusEnum._(r'PROCESSING');
  static const RUN_CREATED = PublicDeviceRenderTestDtoStatusEnum._(r'RUN_CREATED');
  static const RATE_LIMITED = PublicDeviceRenderTestDtoStatusEnum._(r'RATE_LIMITED');
  static const REJECTED = PublicDeviceRenderTestDtoStatusEnum._(r'REJECTED');
  static const FAILED = PublicDeviceRenderTestDtoStatusEnum._(r'FAILED');
  static const EXPIRED = PublicDeviceRenderTestDtoStatusEnum._(r'EXPIRED');

  /// List of all possible values in this [enum][PublicDeviceRenderTestDtoStatusEnum].
  static const values = <PublicDeviceRenderTestDtoStatusEnum>[
    WAITING_FOR_EMAIL,
    RECEIVED,
    PROCESSING,
    RUN_CREATED,
    RATE_LIMITED,
    REJECTED,
    FAILED,
    EXPIRED,
  ];

  static PublicDeviceRenderTestDtoStatusEnum? fromJson(dynamic value) => PublicDeviceRenderTestDtoStatusEnumTypeTransformer().decode(value);

  static List<PublicDeviceRenderTestDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicDeviceRenderTestDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicDeviceRenderTestDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicDeviceRenderTestDtoStatusEnum] to String,
/// and [decode] dynamic data back to [PublicDeviceRenderTestDtoStatusEnum].
class PublicDeviceRenderTestDtoStatusEnumTypeTransformer {
  factory PublicDeviceRenderTestDtoStatusEnumTypeTransformer() => _instance ??= const PublicDeviceRenderTestDtoStatusEnumTypeTransformer._();

  const PublicDeviceRenderTestDtoStatusEnumTypeTransformer._();

  String encode(PublicDeviceRenderTestDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicDeviceRenderTestDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicDeviceRenderTestDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WAITING_FOR_EMAIL': return PublicDeviceRenderTestDtoStatusEnum.WAITING_FOR_EMAIL;
        case r'RECEIVED': return PublicDeviceRenderTestDtoStatusEnum.RECEIVED;
        case r'PROCESSING': return PublicDeviceRenderTestDtoStatusEnum.PROCESSING;
        case r'RUN_CREATED': return PublicDeviceRenderTestDtoStatusEnum.RUN_CREATED;
        case r'RATE_LIMITED': return PublicDeviceRenderTestDtoStatusEnum.RATE_LIMITED;
        case r'REJECTED': return PublicDeviceRenderTestDtoStatusEnum.REJECTED;
        case r'FAILED': return PublicDeviceRenderTestDtoStatusEnum.FAILED;
        case r'EXPIRED': return PublicDeviceRenderTestDtoStatusEnum.EXPIRED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicDeviceRenderTestDtoStatusEnumTypeTransformer] instance.
  static PublicDeviceRenderTestDtoStatusEnumTypeTransformer? _instance;
}



class PublicDeviceRenderTestDtoPreviewModeEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicDeviceRenderTestDtoPreviewModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEVICE_RENDER = PublicDeviceRenderTestDtoPreviewModeEnum._(r'DEVICE_RENDER');
  static const LIGHT_DARK = PublicDeviceRenderTestDtoPreviewModeEnum._(r'LIGHT_DARK');

  /// List of all possible values in this [enum][PublicDeviceRenderTestDtoPreviewModeEnum].
  static const values = <PublicDeviceRenderTestDtoPreviewModeEnum>[
    DEVICE_RENDER,
    LIGHT_DARK,
  ];

  static PublicDeviceRenderTestDtoPreviewModeEnum? fromJson(dynamic value) => PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer().decode(value);

  static List<PublicDeviceRenderTestDtoPreviewModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicDeviceRenderTestDtoPreviewModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicDeviceRenderTestDtoPreviewModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicDeviceRenderTestDtoPreviewModeEnum] to String,
/// and [decode] dynamic data back to [PublicDeviceRenderTestDtoPreviewModeEnum].
class PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer {
  factory PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer() => _instance ??= const PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer._();

  const PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer._();

  String encode(PublicDeviceRenderTestDtoPreviewModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicDeviceRenderTestDtoPreviewModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicDeviceRenderTestDtoPreviewModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEVICE_RENDER': return PublicDeviceRenderTestDtoPreviewModeEnum.DEVICE_RENDER;
        case r'LIGHT_DARK': return PublicDeviceRenderTestDtoPreviewModeEnum.LIGHT_DARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer] instance.
  static PublicDeviceRenderTestDtoPreviewModeEnumTypeTransformer? _instance;
}


