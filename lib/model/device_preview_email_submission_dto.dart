//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewEmailSubmissionDto {
  /// Returns a new [DevicePreviewEmailSubmissionDto] instance.
  DevicePreviewEmailSubmissionDto({
    required this.id,
    required this.userId,
    this.ingestDomainId,
    this.profileId,
    this.runId,
    required this.recipientEmailAddress,
    required this.recipientLocalPart,
    required this.matchedProfile,
    required this.status,
    this.sourceExternalId,
    this.sourceFrom,
    this.sourceTo = const [],
    this.sourceSubject,
    this.sourceMessageId,
    this.sourceSizeBytes,
    this.failureStage,
    this.failureCode,
    this.latestError,
    required this.receivedAt,
    this.processingStartedAt,
    this.completedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String? ingestDomainId;

  String? profileId;

  String? runId;

  String recipientEmailAddress;

  String recipientLocalPart;

  bool matchedProfile;

  DevicePreviewEmailSubmissionDtoStatusEnum status;

  String? sourceExternalId;

  String? sourceFrom;

  List<String>? sourceTo;

  String? sourceSubject;

  String? sourceMessageId;

  int? sourceSizeBytes;

  String? failureStage;

  DevicePreviewEmailSubmissionDtoFailureCodeEnum? failureCode;

  String? latestError;

  DateTime receivedAt;

  DateTime? processingStartedAt;

  DateTime? completedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewEmailSubmissionDto &&
     other.id == id &&
     other.userId == userId &&
     other.ingestDomainId == ingestDomainId &&
     other.profileId == profileId &&
     other.runId == runId &&
     other.recipientEmailAddress == recipientEmailAddress &&
     other.recipientLocalPart == recipientLocalPart &&
     other.matchedProfile == matchedProfile &&
     other.status == status &&
     other.sourceExternalId == sourceExternalId &&
     other.sourceFrom == sourceFrom &&
     other.sourceTo == sourceTo &&
     other.sourceSubject == sourceSubject &&
     other.sourceMessageId == sourceMessageId &&
     other.sourceSizeBytes == sourceSizeBytes &&
     other.failureStage == failureStage &&
     other.failureCode == failureCode &&
     other.latestError == latestError &&
     other.receivedAt == receivedAt &&
     other.processingStartedAt == processingStartedAt &&
     other.completedAt == completedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (ingestDomainId == null ? 0 : ingestDomainId!.hashCode) +
    (profileId == null ? 0 : profileId!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (recipientEmailAddress.hashCode) +
    (recipientLocalPart.hashCode) +
    (matchedProfile.hashCode) +
    (status.hashCode) +
    (sourceExternalId == null ? 0 : sourceExternalId!.hashCode) +
    (sourceFrom == null ? 0 : sourceFrom!.hashCode) +
    (sourceTo == null ? 0 : sourceTo!.hashCode) +
    (sourceSubject == null ? 0 : sourceSubject!.hashCode) +
    (sourceMessageId == null ? 0 : sourceMessageId!.hashCode) +
    (sourceSizeBytes == null ? 0 : sourceSizeBytes!.hashCode) +
    (failureStage == null ? 0 : failureStage!.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (latestError == null ? 0 : latestError!.hashCode) +
    (receivedAt.hashCode) +
    (processingStartedAt == null ? 0 : processingStartedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewEmailSubmissionDto[id=$id, userId=$userId, ingestDomainId=$ingestDomainId, profileId=$profileId, runId=$runId, recipientEmailAddress=$recipientEmailAddress, recipientLocalPart=$recipientLocalPart, matchedProfile=$matchedProfile, status=$status, sourceExternalId=$sourceExternalId, sourceFrom=$sourceFrom, sourceTo=$sourceTo, sourceSubject=$sourceSubject, sourceMessageId=$sourceMessageId, sourceSizeBytes=$sourceSizeBytes, failureStage=$failureStage, failureCode=$failureCode, latestError=$latestError, receivedAt=$receivedAt, processingStartedAt=$processingStartedAt, completedAt=$completedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.ingestDomainId != null) {
      json[r'ingestDomainId'] = this.ingestDomainId;
    } else {
      json[r'ingestDomainId'] = null;
    }
    if (this.profileId != null) {
      json[r'profileId'] = this.profileId;
    } else {
      json[r'profileId'] = null;
    }
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
    }
      json[r'recipientEmailAddress'] = this.recipientEmailAddress;
      json[r'recipientLocalPart'] = this.recipientLocalPart;
      json[r'matchedProfile'] = this.matchedProfile;
      json[r'status'] = this.status;
    if (this.sourceExternalId != null) {
      json[r'sourceExternalId'] = this.sourceExternalId;
    } else {
      json[r'sourceExternalId'] = null;
    }
    if (this.sourceFrom != null) {
      json[r'sourceFrom'] = this.sourceFrom;
    } else {
      json[r'sourceFrom'] = null;
    }
    if (this.sourceTo != null) {
      json[r'sourceTo'] = this.sourceTo;
    } else {
      json[r'sourceTo'] = null;
    }
    if (this.sourceSubject != null) {
      json[r'sourceSubject'] = this.sourceSubject;
    } else {
      json[r'sourceSubject'] = null;
    }
    if (this.sourceMessageId != null) {
      json[r'sourceMessageId'] = this.sourceMessageId;
    } else {
      json[r'sourceMessageId'] = null;
    }
    if (this.sourceSizeBytes != null) {
      json[r'sourceSizeBytes'] = this.sourceSizeBytes;
    } else {
      json[r'sourceSizeBytes'] = null;
    }
    if (this.failureStage != null) {
      json[r'failureStage'] = this.failureStage;
    } else {
      json[r'failureStage'] = null;
    }
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.latestError != null) {
      json[r'latestError'] = this.latestError;
    } else {
      json[r'latestError'] = null;
    }
      json[r'receivedAt'] = this.receivedAt.toUtc().toIso8601String();
    if (this.processingStartedAt != null) {
      json[r'processingStartedAt'] = this.processingStartedAt!.toUtc().toIso8601String();
    } else {
      json[r'processingStartedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewEmailSubmissionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewEmailSubmissionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewEmailSubmissionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewEmailSubmissionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewEmailSubmissionDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        ingestDomainId: mapValueOfType<String>(json, r'ingestDomainId'),
        profileId: mapValueOfType<String>(json, r'profileId'),
        runId: mapValueOfType<String>(json, r'runId'),
        recipientEmailAddress: mapValueOfType<String>(json, r'recipientEmailAddress')!,
        recipientLocalPart: mapValueOfType<String>(json, r'recipientLocalPart')!,
        matchedProfile: mapValueOfType<bool>(json, r'matchedProfile')!,
        status: DevicePreviewEmailSubmissionDtoStatusEnum.fromJson(json[r'status'])!,
        sourceExternalId: mapValueOfType<String>(json, r'sourceExternalId'),
        sourceFrom: mapValueOfType<String>(json, r'sourceFrom'),
        sourceTo: json[r'sourceTo'] is List
            ? (json[r'sourceTo'] as List).cast<String>()
            : const [],
        sourceSubject: mapValueOfType<String>(json, r'sourceSubject'),
        sourceMessageId: mapValueOfType<String>(json, r'sourceMessageId'),
        sourceSizeBytes: mapValueOfType<int>(json, r'sourceSizeBytes'),
        failureStage: mapValueOfType<String>(json, r'failureStage'),
        failureCode: DevicePreviewEmailSubmissionDtoFailureCodeEnum.fromJson(json[r'failureCode']),
        latestError: mapValueOfType<String>(json, r'latestError'),
        receivedAt: mapDateTime(json, r'receivedAt', '')!,
        processingStartedAt: mapDateTime(json, r'processingStartedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewEmailSubmissionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewEmailSubmissionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewEmailSubmissionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewEmailSubmissionDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewEmailSubmissionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewEmailSubmissionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewEmailSubmissionDto-objects as value to a dart map
  static Map<String, List<DevicePreviewEmailSubmissionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewEmailSubmissionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewEmailSubmissionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'recipientEmailAddress',
    'recipientLocalPart',
    'matchedProfile',
    'status',
    'receivedAt',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewEmailSubmissionDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewEmailSubmissionDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECEIVED = DevicePreviewEmailSubmissionDtoStatusEnum._(r'RECEIVED');
  static const PROCESSING = DevicePreviewEmailSubmissionDtoStatusEnum._(r'PROCESSING');
  static const INSPECTION_READY = DevicePreviewEmailSubmissionDtoStatusEnum._(r'INSPECTION_READY');
  static const RUN_CREATED = DevicePreviewEmailSubmissionDtoStatusEnum._(r'RUN_CREATED');
  static const FAILED = DevicePreviewEmailSubmissionDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewEmailSubmissionDtoStatusEnum].
  static const values = <DevicePreviewEmailSubmissionDtoStatusEnum>[
    RECEIVED,
    PROCESSING,
    INSPECTION_READY,
    RUN_CREATED,
    FAILED,
  ];

  static DevicePreviewEmailSubmissionDtoStatusEnum? fromJson(dynamic value) => DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewEmailSubmissionDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewEmailSubmissionDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewEmailSubmissionDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewEmailSubmissionDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewEmailSubmissionDtoStatusEnum].
class DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer {
  factory DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer._();

  const DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewEmailSubmissionDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewEmailSubmissionDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewEmailSubmissionDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECEIVED': return DevicePreviewEmailSubmissionDtoStatusEnum.RECEIVED;
        case r'PROCESSING': return DevicePreviewEmailSubmissionDtoStatusEnum.PROCESSING;
        case r'INSPECTION_READY': return DevicePreviewEmailSubmissionDtoStatusEnum.INSPECTION_READY;
        case r'RUN_CREATED': return DevicePreviewEmailSubmissionDtoStatusEnum.RUN_CREATED;
        case r'FAILED': return DevicePreviewEmailSubmissionDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewEmailSubmissionDtoStatusEnumTypeTransformer? _instance;
}



class DevicePreviewEmailSubmissionDtoFailureCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewEmailSubmissionDtoFailureCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const i001UPGRADEREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'I_001_UPGRADE_REQUIRED');
  static const w404ENTITYNOTFOUND = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_404_ENTITY_NOT_FOUND');
  static const w404USERNOTFOUNDFORACCESSLINK = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_ACCESS_LINK');
  static const w404USERNOTFOUNDFORPASSWORD = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_PASSWORD');
  static const w409USERALREADYEXISTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_USER_ALREADY_EXISTS');
  static const w404USERNOTFOUNDFORPASSWORDRESET = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_PASSWORD_RESET');
  static const w400BADREQUEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_400_BAD_REQUEST');
  static const w400CAPTCHAREJECTED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_400_CAPTCHA_REJECTED');
  static const w400OPTINREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_400_OPT_IN_REQUIRED');
  static const w400SMSUSA2P10DLCREGISTRATIONREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_400_SMS_US_A2P_10DLC_REGISTRATION_REQUIRED');
  static const w401UNAUTHORIZED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_401_UNAUTHORIZED');
  static const w401CHALLENGEINVALID = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_401_CHALLENGE_INVALID');
  static const w401REQUIRESVERIFICATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_401_REQUIRES_VERIFICATION');
  static const w401MULTIPLEACCOUNTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_401_MULTIPLE_ACCOUNTS');
  static const w402ACCOUNTPAYMENTOVERDUE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_402_ACCOUNT_PAYMENT_OVERDUE');
  static const w403FORBIDDEN = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_FORBIDDEN');
  static const w403FORBIDDENPHONENUMBER = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_FORBIDDEN_PHONE_NUMBER');
  static const w403PHONEVERIFICATIONGEOBLOCKED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_PHONE_VERIFICATION_GEO_BLOCKED');
  static const w403SAMLIPADDRESSNOTALLOWED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_SAML_IP_ADDRESS_NOT_ALLOWED');
  static const w403ORGANIZATIONLOGINIPADDRESSNOTALLOWED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_ORGANIZATION_LOGIN_IP_ADDRESS_NOT_ALLOWED');
  static const w403SELFSERVEEMAILNOTELIGIBLE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_403_SELF_SERVE_EMAIL_NOT_ELIGIBLE');
  static const w409CONFLICT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_CONFLICT');
  static const w409ORGANIZATIONEMAILLOGINDISABLED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_ORGANIZATION_EMAIL_LOGIN_DISABLED');
  static const w409PERSONALACCOUNTRESTRICTEDBYORGANIZATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_PERSONAL_ACCOUNT_RESTRICTED_BY_ORGANIZATION');
  static const w409LINKACCESSBLOCKED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_LINK_ACCESS_BLOCKED');
  static const w409SUBSCRIPTIONTRIALNOTAVAILABLE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_NOT_AVAILABLE');
  static const w409SUBSCRIPTIONTRIALACCOUNTINELIGIBLE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_ACCOUNT_INELIGIBLE');
  static const w409SUBSCRIPTIONTRIALALREADYUSED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_ALREADY_USED');
  static const w409SUBSCRIPTIONTRIALPAYMENTMETHODALREADYUSED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_PAYMENT_METHOD_ALREADY_USED');
  static const w409SUBSCRIPTIONTRIALPLANINELIGIBLE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_PLAN_INELIGIBLE');
  static const w429RATELIMITED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_RATE_LIMITED');
  static const w429SENDDESTINATIONTHROTTLED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_DESTINATION_THROTTLED');
  static const w429SENDBLOCK = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK');
  static const w429SENDBLOCKTRIAL = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK_TRIAL');
  static const w429SENDBLOCKADMINPAUSED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK_ADMIN_PAUSED');
  static const w429SENDBLOCKPAYMENTVALIDATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK_PAYMENT_VALIDATION');
  static const w429SENDBLOCKACCOUNTVALIDATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK_ACCOUNT_VALIDATION');
  static const w429SENDEVALUATIONLIMITREACHED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_EVALUATION_LIMIT_REACHED');
  static const w429SENDBLOCKEVALUATIONRECIPIENT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SEND_BLOCK_EVALUATION_RECIPIENT');
  static const w400SENDEVALUATIONOPTIONSUNSUPPORTED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_400_SEND_EVALUATION_OPTIONS_UNSUPPORTED');
  static const w429SENDINGAGREEMENTREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SENDING_AGREEMENT_REQUIRED');
  static const w429ACCOUNTFROZEN = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_ACCOUNT_FROZEN');
  static const e001UNEXPECTEDERROR = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'E_001_UNEXPECTED_ERROR');
  static const e400BADREQUEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'E_400_BAD_REQUEST');
  static const e500INTERNALERROR = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'E_500_INTERNAL_ERROR');
  static const w429SUBSCRIPTIONADDONREQUIREDVALIDATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_VALIDATION');
  static const w429SUBSCRIPTIONADDONREQUIREDCONNECTOR = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_CONNECTOR');
  static const w429SUBSCRIPTIONADDONREQUIREDDOMAINMONITOR = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DOMAIN_MONITOR');
  static const w429SUBSCRIPTIONADDONREQUIREDINBOXPLACEMENTTEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_INBOX_PLACEMENT_TEST');
  static const w429SUBSCRIPTIONADDONREQUIREDAI = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_AI');
  static const w429SUBSCRIPTIONADDONREQUIREDDEVICEPREVIEW = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DEVICE_PREVIEW');
  static const w429PHONENUMBERLIMITREACHED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_PHONE_NUMBER_LIMIT_REACHED');
  static const w429AGENTCONNECTIONLIMITREACHED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_AGENT_CONNECTION_LIMIT_REACHED');
  static const w429SUBSCRIPTIONLIMITREACHED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKCREATE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_CREATE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKSEND = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKDELETE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_DELETE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECONTACTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONTACTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREPERMANENTINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_PERMANENT_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPASSWORD = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PASSWORD');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREWEBHOOKS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_WEBHOOKS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXRULESETS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_RULESETS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREZAPIER = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ZAPIER');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURETRACKINGPIXELS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TRACKING_PIXELS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXFORWARDERS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_FORWARDERS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXREPLIERS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_REPLIERS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTAUTOMATIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENT_AUTOMATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURETEAMINBOX = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TEAM_INBOX');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESAMLSSO = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SAML_SSO');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREOIDCSSO = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_OIDC_SSO');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESCIMPROVISIONING = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCIM_PROVISIONING');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILVALIDATION = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_VALIDATION');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESENDWITHQUEUE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SEND_WITH_QUEUE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECONNECTORS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONNECTORS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREAI = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AI');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREGUESTPORTALS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_GUEST_PORTALS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILFEATURECHECK = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_FEATURE_CHECK');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBACKUPS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BACKUPS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESCREENSHOTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCREENSHOTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEWS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEWS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPERMISSIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PERMISSIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREENVIRONMENTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ENVIRONMENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREIMPORTEXPORT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_IMPORT_EXPORT');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREAUDITLOGS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AUDIT_LOGS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDELIVERABILITYTEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DELIVERABILITY_TEST');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURELOADTEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_LOAD_TEST');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILAUDIT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_AUDIT');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXWARMUP = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_WARM_UP');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECAMPAIGNPROBE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CAMPAIGN_PROBE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREVIRTUALTOTPDEVICES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_VIRTUAL_TOTP_DEVICES');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEW = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEW');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDOMAINMONITOR = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DOMAIN_MONITOR');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXPLACEMENTTESTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_PLACEMENT_TESTS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITOAUTHCONNECTIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_OAUTH_CONNECTIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITGMAILINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_GMAIL_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTOTALINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TOTAL_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPERMANENTINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PERMANENT_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTEMPORARYINBOXES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TEMPORARY_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMAILSERVERRECORDS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MAIL_SERVER_RECORDS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYRECEIVE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_RECEIVE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYRECEIVE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_RECEIVE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYSEND = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYSEND = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILVALIDATIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_VALIDATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDOMAINS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DOMAINS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITALIASES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ALIASES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTHREADS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_THREADS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONMANAGEMENT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_MANAGEMENT');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONUSERS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_USERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITSTORAGE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_STORAGE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITUNIQUERECIPIENTS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_UNIQUE_RECIPIENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITRECIPIENTSPEREMAIL = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_RECIPIENTS_PER_EMAIL');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILSIZE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_SIZE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPHONENUMBERS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_NUMBERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPHONEPROVISIONREQUEST = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_PROVISION_REQUEST');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITAGENTCONNECTIONS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AGENT_CONNECTIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDEVICERENDERS = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DEVICE_RENDERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITAUTOMATEDINBOXPLACEMENTSCHEDULES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AUTOMATED_INBOX_PLACEMENT_SCHEDULES');
  static const w429SUBSCRIPTIONPAYMENTFAILURES = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_PAYMENT_FAILURES');
  static const w429SUBSCRIPTIONTRIALLIMIT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_TRIAL_LIMIT');
  static const w429SUBSCRIPTIONREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_REQUIRED');
  static const w429SUBSCRIPTIONOUTOFDATE = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_OUT_OF_DATE');
  static const w429SUBSCRIPTIONFREELIMIT = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_SUBSCRIPTION_FREE_LIMIT');
  static const w429PUBLICDEVICERENDERACCOUNTREQUIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_PUBLIC_DEVICE_RENDER_ACCOUNT_REQUIRED');
  static const w429FREEACCOUNTEXPIRED = DevicePreviewEmailSubmissionDtoFailureCodeEnum._(r'W_429_FREE_ACCOUNT_EXPIRED');

  /// List of all possible values in this [enum][DevicePreviewEmailSubmissionDtoFailureCodeEnum].
  static const values = <DevicePreviewEmailSubmissionDtoFailureCodeEnum>[
    i001UPGRADEREQUIRED,
    w404ENTITYNOTFOUND,
    w404USERNOTFOUNDFORACCESSLINK,
    w404USERNOTFOUNDFORPASSWORD,
    w409USERALREADYEXISTS,
    w404USERNOTFOUNDFORPASSWORDRESET,
    w400BADREQUEST,
    w400CAPTCHAREJECTED,
    w400OPTINREQUIRED,
    w400SMSUSA2P10DLCREGISTRATIONREQUIRED,
    w401UNAUTHORIZED,
    w401CHALLENGEINVALID,
    w401REQUIRESVERIFICATION,
    w401MULTIPLEACCOUNTS,
    w402ACCOUNTPAYMENTOVERDUE,
    w403FORBIDDEN,
    w403FORBIDDENPHONENUMBER,
    w403PHONEVERIFICATIONGEOBLOCKED,
    w403SAMLIPADDRESSNOTALLOWED,
    w403ORGANIZATIONLOGINIPADDRESSNOTALLOWED,
    w403SELFSERVEEMAILNOTELIGIBLE,
    w409CONFLICT,
    w409ORGANIZATIONEMAILLOGINDISABLED,
    w409PERSONALACCOUNTRESTRICTEDBYORGANIZATION,
    w409LINKACCESSBLOCKED,
    w409SUBSCRIPTIONTRIALNOTAVAILABLE,
    w409SUBSCRIPTIONTRIALACCOUNTINELIGIBLE,
    w409SUBSCRIPTIONTRIALALREADYUSED,
    w409SUBSCRIPTIONTRIALPAYMENTMETHODALREADYUSED,
    w409SUBSCRIPTIONTRIALPLANINELIGIBLE,
    w429RATELIMITED,
    w429SENDDESTINATIONTHROTTLED,
    w429SENDBLOCK,
    w429SENDBLOCKTRIAL,
    w429SENDBLOCKADMINPAUSED,
    w429SENDBLOCKPAYMENTVALIDATION,
    w429SENDBLOCKACCOUNTVALIDATION,
    w429SENDEVALUATIONLIMITREACHED,
    w429SENDBLOCKEVALUATIONRECIPIENT,
    w400SENDEVALUATIONOPTIONSUNSUPPORTED,
    w429SENDINGAGREEMENTREQUIRED,
    w429ACCOUNTFROZEN,
    e001UNEXPECTEDERROR,
    e400BADREQUEST,
    e500INTERNALERROR,
    w429SUBSCRIPTIONADDONREQUIREDVALIDATION,
    w429SUBSCRIPTIONADDONREQUIREDCONNECTOR,
    w429SUBSCRIPTIONADDONREQUIREDDOMAINMONITOR,
    w429SUBSCRIPTIONADDONREQUIREDINBOXPLACEMENTTEST,
    w429SUBSCRIPTIONADDONREQUIREDAI,
    w429SUBSCRIPTIONADDONREQUIREDDEVICEPREVIEW,
    w429PHONENUMBERLIMITREACHED,
    w429AGENTCONNECTIONLIMITREACHED,
    w429SUBSCRIPTIONLIMITREACHED,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKCREATE,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKSEND,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKDELETE,
    w429SUBSCRIPTIONLIMITREACHEDFEATURECONTACTS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREPERMANENTINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPASSWORD,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREWEBHOOKS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXRULESETS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREZAPIER,
    w429SUBSCRIPTIONLIMITREACHEDFEATURETRACKINGPIXELS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXFORWARDERS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXREPLIERS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTAUTOMATIONS,
    w429SUBSCRIPTIONLIMITREACHEDFEATURETEAMINBOX,
    w429SUBSCRIPTIONLIMITREACHEDFEATURESAMLSSO,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREOIDCSSO,
    w429SUBSCRIPTIONLIMITREACHEDFEATURESCIMPROVISIONING,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILVALIDATION,
    w429SUBSCRIPTIONLIMITREACHEDFEATURESENDWITHQUEUE,
    w429SUBSCRIPTIONLIMITREACHEDFEATURECONNECTORS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREAI,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREGUESTPORTALS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILFEATURECHECK,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREBACKUPS,
    w429SUBSCRIPTIONLIMITREACHEDFEATURESCREENSHOTS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEWS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPERMISSIONS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREENVIRONMENTS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREIMPORTEXPORT,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREAUDITLOGS,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREDELIVERABILITYTEST,
    w429SUBSCRIPTIONLIMITREACHEDFEATURELOADTEST,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILAUDIT,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXWARMUP,
    w429SUBSCRIPTIONLIMITREACHEDFEATURECAMPAIGNPROBE,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREVIRTUALTOTPDEVICES,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEW,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREDOMAINMONITOR,
    w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXPLACEMENTTESTS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITOAUTHCONNECTIONS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITGMAILINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITTOTALINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITPERMANENTINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITTEMPORARYINBOXES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITMAILSERVERRECORDS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYRECEIVE,
    w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYRECEIVE,
    w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYSEND,
    w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYSEND,
    w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILVALIDATIONS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITDOMAINS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITALIASES,
    w429SUBSCRIPTIONLIMITREACHEDLIMITTHREADS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONMANAGEMENT,
    w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONUSERS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITSTORAGE,
    w429SUBSCRIPTIONLIMITREACHEDLIMITUNIQUERECIPIENTS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITRECIPIENTSPEREMAIL,
    w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILSIZE,
    w429SUBSCRIPTIONLIMITREACHEDLIMITPHONENUMBERS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITPHONEPROVISIONREQUEST,
    w429SUBSCRIPTIONLIMITREACHEDLIMITAGENTCONNECTIONS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITDEVICERENDERS,
    w429SUBSCRIPTIONLIMITREACHEDLIMITAUTOMATEDINBOXPLACEMENTSCHEDULES,
    w429SUBSCRIPTIONPAYMENTFAILURES,
    w429SUBSCRIPTIONTRIALLIMIT,
    w429SUBSCRIPTIONREQUIRED,
    w429SUBSCRIPTIONOUTOFDATE,
    w429SUBSCRIPTIONFREELIMIT,
    w429PUBLICDEVICERENDERACCOUNTREQUIRED,
    w429FREEACCOUNTEXPIRED,
  ];

  static DevicePreviewEmailSubmissionDtoFailureCodeEnum? fromJson(dynamic value) => DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer().decode(value);

  static List<DevicePreviewEmailSubmissionDtoFailureCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewEmailSubmissionDtoFailureCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewEmailSubmissionDtoFailureCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewEmailSubmissionDtoFailureCodeEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewEmailSubmissionDtoFailureCodeEnum].
class DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer {
  factory DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer() => _instance ??= const DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer._();

  const DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer._();

  String encode(DevicePreviewEmailSubmissionDtoFailureCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewEmailSubmissionDtoFailureCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewEmailSubmissionDtoFailureCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'I_001_UPGRADE_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.i001UPGRADEREQUIRED;
        case r'W_404_ENTITY_NOT_FOUND': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w404ENTITYNOTFOUND;
        case r'W_404_USER_NOT_FOUND_FOR_ACCESS_LINK': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w404USERNOTFOUNDFORACCESSLINK;
        case r'W_404_USER_NOT_FOUND_FOR_PASSWORD': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w404USERNOTFOUNDFORPASSWORD;
        case r'W_409_USER_ALREADY_EXISTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409USERALREADYEXISTS;
        case r'W_404_USER_NOT_FOUND_FOR_PASSWORD_RESET': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w404USERNOTFOUNDFORPASSWORDRESET;
        case r'W_400_BAD_REQUEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w400BADREQUEST;
        case r'W_400_CAPTCHA_REJECTED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w400CAPTCHAREJECTED;
        case r'W_400_OPT_IN_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w400OPTINREQUIRED;
        case r'W_400_SMS_US_A2P_10DLC_REGISTRATION_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w400SMSUSA2P10DLCREGISTRATIONREQUIRED;
        case r'W_401_UNAUTHORIZED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w401UNAUTHORIZED;
        case r'W_401_CHALLENGE_INVALID': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w401CHALLENGEINVALID;
        case r'W_401_REQUIRES_VERIFICATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w401REQUIRESVERIFICATION;
        case r'W_401_MULTIPLE_ACCOUNTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w401MULTIPLEACCOUNTS;
        case r'W_402_ACCOUNT_PAYMENT_OVERDUE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w402ACCOUNTPAYMENTOVERDUE;
        case r'W_403_FORBIDDEN': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403FORBIDDEN;
        case r'W_403_FORBIDDEN_PHONE_NUMBER': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403FORBIDDENPHONENUMBER;
        case r'W_403_PHONE_VERIFICATION_GEO_BLOCKED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403PHONEVERIFICATIONGEOBLOCKED;
        case r'W_403_SAML_IP_ADDRESS_NOT_ALLOWED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403SAMLIPADDRESSNOTALLOWED;
        case r'W_403_ORGANIZATION_LOGIN_IP_ADDRESS_NOT_ALLOWED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403ORGANIZATIONLOGINIPADDRESSNOTALLOWED;
        case r'W_403_SELF_SERVE_EMAIL_NOT_ELIGIBLE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w403SELFSERVEEMAILNOTELIGIBLE;
        case r'W_409_CONFLICT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409CONFLICT;
        case r'W_409_ORGANIZATION_EMAIL_LOGIN_DISABLED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409ORGANIZATIONEMAILLOGINDISABLED;
        case r'W_409_PERSONAL_ACCOUNT_RESTRICTED_BY_ORGANIZATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409PERSONALACCOUNTRESTRICTEDBYORGANIZATION;
        case r'W_409_LINK_ACCESS_BLOCKED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409LINKACCESSBLOCKED;
        case r'W_409_SUBSCRIPTION_TRIAL_NOT_AVAILABLE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409SUBSCRIPTIONTRIALNOTAVAILABLE;
        case r'W_409_SUBSCRIPTION_TRIAL_ACCOUNT_INELIGIBLE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409SUBSCRIPTIONTRIALACCOUNTINELIGIBLE;
        case r'W_409_SUBSCRIPTION_TRIAL_ALREADY_USED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409SUBSCRIPTIONTRIALALREADYUSED;
        case r'W_409_SUBSCRIPTION_TRIAL_PAYMENT_METHOD_ALREADY_USED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409SUBSCRIPTIONTRIALPAYMENTMETHODALREADYUSED;
        case r'W_409_SUBSCRIPTION_TRIAL_PLAN_INELIGIBLE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w409SUBSCRIPTIONTRIALPLANINELIGIBLE;
        case r'W_429_RATE_LIMITED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429RATELIMITED;
        case r'W_429_SEND_DESTINATION_THROTTLED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDDESTINATIONTHROTTLED;
        case r'W_429_SEND_BLOCK': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCK;
        case r'W_429_SEND_BLOCK_TRIAL': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCKTRIAL;
        case r'W_429_SEND_BLOCK_ADMIN_PAUSED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCKADMINPAUSED;
        case r'W_429_SEND_BLOCK_PAYMENT_VALIDATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCKPAYMENTVALIDATION;
        case r'W_429_SEND_BLOCK_ACCOUNT_VALIDATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCKACCOUNTVALIDATION;
        case r'W_429_SEND_EVALUATION_LIMIT_REACHED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDEVALUATIONLIMITREACHED;
        case r'W_429_SEND_BLOCK_EVALUATION_RECIPIENT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDBLOCKEVALUATIONRECIPIENT;
        case r'W_400_SEND_EVALUATION_OPTIONS_UNSUPPORTED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w400SENDEVALUATIONOPTIONSUNSUPPORTED;
        case r'W_429_SENDING_AGREEMENT_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SENDINGAGREEMENTREQUIRED;
        case r'W_429_ACCOUNT_FROZEN': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429ACCOUNTFROZEN;
        case r'E_001_UNEXPECTED_ERROR': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.e001UNEXPECTEDERROR;
        case r'E_400_BAD_REQUEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.e400BADREQUEST;
        case r'E_500_INTERNAL_ERROR': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.e500INTERNALERROR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_VALIDATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDVALIDATION;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_CONNECTOR': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDCONNECTOR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DOMAIN_MONITOR': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDDOMAINMONITOR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_INBOX_PLACEMENT_TEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDINBOXPLACEMENTTEST;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_AI': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDAI;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DEVICE_PREVIEW': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONADDONREQUIREDDEVICEPREVIEW;
        case r'W_429_PHONE_NUMBER_LIMIT_REACHED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429PHONENUMBERLIMITREACHED;
        case r'W_429_AGENT_CONNECTION_LIMIT_REACHED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429AGENTCONNECTIONLIMITREACHED;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHED;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_CREATE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKCREATE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_SEND': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_DELETE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKDELETE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONTACTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECONTACTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_PERMANENT_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREPERMANENTINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PASSWORD': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPASSWORD;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_WEBHOOKS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREWEBHOOKS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_RULESETS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXRULESETS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ZAPIER': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREZAPIER;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TRACKING_PIXELS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURETRACKINGPIXELS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_FORWARDERS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXFORWARDERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_REPLIERS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXREPLIERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENT_AUTOMATIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTAUTOMATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TEAM_INBOX': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURETEAMINBOX;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SAML_SSO': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESAMLSSO;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_OIDC_SSO': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREOIDCSSO;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCIM_PROVISIONING': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESCIMPROVISIONING;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_VALIDATION': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILVALIDATION;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SEND_WITH_QUEUE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESENDWITHQUEUE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONNECTORS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECONNECTORS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AI': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREAI;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_GUEST_PORTALS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREGUESTPORTALS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_FEATURE_CHECK': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILFEATURECHECK;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BACKUPS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBACKUPS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCREENSHOTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESCREENSHOTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEWS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEWS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PERMISSIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPERMISSIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ENVIRONMENTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREENVIRONMENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_IMPORT_EXPORT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREIMPORTEXPORT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AUDIT_LOGS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREAUDITLOGS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DELIVERABILITY_TEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDELIVERABILITYTEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_LOAD_TEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURELOADTEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_AUDIT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILAUDIT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_WARM_UP': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXWARMUP;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CAMPAIGN_PROBE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECAMPAIGNPROBE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_VIRTUAL_TOTP_DEVICES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREVIRTUALTOTPDEVICES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEW': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEW;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DOMAIN_MONITOR': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDOMAINMONITOR;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_PLACEMENT_TESTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXPLACEMENTTESTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_OAUTH_CONNECTIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITOAUTHCONNECTIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_GMAIL_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITGMAILINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TOTAL_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTOTALINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PERMANENT_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPERMANENTINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TEMPORARY_INBOXES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTEMPORARYINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MAIL_SERVER_RECORDS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMAILSERVERRECORDS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_RECEIVE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYRECEIVE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_RECEIVE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYRECEIVE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_SEND': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_SEND': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_VALIDATIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILVALIDATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DOMAINS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDOMAINS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ALIASES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITALIASES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_THREADS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTHREADS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_MANAGEMENT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONMANAGEMENT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_USERS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONUSERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_STORAGE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITSTORAGE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_UNIQUE_RECIPIENTS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITUNIQUERECIPIENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_RECIPIENTS_PER_EMAIL': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITRECIPIENTSPEREMAIL;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_SIZE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILSIZE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_NUMBERS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPHONENUMBERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_PROVISION_REQUEST': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPHONEPROVISIONREQUEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AGENT_CONNECTIONS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITAGENTCONNECTIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DEVICE_RENDERS': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDEVICERENDERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AUTOMATED_INBOX_PLACEMENT_SCHEDULES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITAUTOMATEDINBOXPLACEMENTSCHEDULES;
        case r'W_429_SUBSCRIPTION_PAYMENT_FAILURES': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONPAYMENTFAILURES;
        case r'W_429_SUBSCRIPTION_TRIAL_LIMIT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONTRIALLIMIT;
        case r'W_429_SUBSCRIPTION_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONREQUIRED;
        case r'W_429_SUBSCRIPTION_OUT_OF_DATE': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONOUTOFDATE;
        case r'W_429_SUBSCRIPTION_FREE_LIMIT': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429SUBSCRIPTIONFREELIMIT;
        case r'W_429_PUBLIC_DEVICE_RENDER_ACCOUNT_REQUIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429PUBLICDEVICERENDERACCOUNTREQUIRED;
        case r'W_429_FREE_ACCOUNT_EXPIRED': return DevicePreviewEmailSubmissionDtoFailureCodeEnum.w429FREEACCOUNTEXPIRED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer] instance.
  static DevicePreviewEmailSubmissionDtoFailureCodeEnumTypeTransformer? _instance;
}


