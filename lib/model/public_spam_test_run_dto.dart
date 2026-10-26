//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicSpamTestRunDto {
  /// Returns a new [PublicSpamTestRunDto] instance.
  PublicSpamTestRunDto({
    required this.id,
    required this.source_,
    this.status,
    this.reportStatus,
    this.requestedSegment,
    this.seedlistProfile,
    this.senderDomain,
    this.fromEmail,
    this.trackingToken,
    this.seedAddresses = const [],
    this.seedAddressFormats = const {},
    required this.totalTargets,
    required this.matchedTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.notReceivedTargets,
    this.submittedAt,
    this.startedAt,
    this.firstMatchAt,
    this.completedAt,
    this.expiresAt,
    this.lastEventAt,
    this.lastSyncedAt,
    required this.freeLimitReached,
    this.errorCode,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String source_;

  String? status;

  String? reportStatus;

  String? requestedSegment;

  String? seedlistProfile;

  String? senderDomain;

  String? fromEmail;

  String? trackingToken;

  List<String> seedAddresses;

  Map<String, String> seedAddressFormats;

  int totalTargets;

  int matchedTargets;

  int inboxTargets;

  int spamTargets;

  int notReceivedTargets;

  DateTime? submittedAt;

  DateTime? startedAt;

  DateTime? firstMatchAt;

  DateTime? completedAt;

  DateTime? expiresAt;

  DateTime? lastEventAt;

  DateTime? lastSyncedAt;

  bool freeLimitReached;

  PublicSpamTestRunDtoErrorCodeEnum? errorCode;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicSpamTestRunDto &&
     other.id == id &&
     other.source_ == source_ &&
     other.status == status &&
     other.reportStatus == reportStatus &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.trackingToken == trackingToken &&
     other.seedAddresses == seedAddresses &&
     other.seedAddressFormats == seedAddressFormats &&
     other.totalTargets == totalTargets &&
     other.matchedTargets == matchedTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.notReceivedTargets == notReceivedTargets &&
     other.submittedAt == submittedAt &&
     other.startedAt == startedAt &&
     other.firstMatchAt == firstMatchAt &&
     other.completedAt == completedAt &&
     other.expiresAt == expiresAt &&
     other.lastEventAt == lastEventAt &&
     other.lastSyncedAt == lastSyncedAt &&
     other.freeLimitReached == freeLimitReached &&
     other.errorCode == errorCode &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (source_.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (reportStatus == null ? 0 : reportStatus!.hashCode) +
    (requestedSegment == null ? 0 : requestedSegment!.hashCode) +
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (trackingToken == null ? 0 : trackingToken!.hashCode) +
    (seedAddresses.hashCode) +
    (seedAddressFormats.hashCode) +
    (totalTargets.hashCode) +
    (matchedTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (notReceivedTargets.hashCode) +
    (submittedAt == null ? 0 : submittedAt!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (firstMatchAt == null ? 0 : firstMatchAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (lastEventAt == null ? 0 : lastEventAt!.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode) +
    (freeLimitReached.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'PublicSpamTestRunDto[id=$id, source_=$source_, status=$status, reportStatus=$reportStatus, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, senderDomain=$senderDomain, fromEmail=$fromEmail, trackingToken=$trackingToken, seedAddresses=$seedAddresses, seedAddressFormats=$seedAddressFormats, totalTargets=$totalTargets, matchedTargets=$matchedTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, notReceivedTargets=$notReceivedTargets, submittedAt=$submittedAt, startedAt=$startedAt, firstMatchAt=$firstMatchAt, completedAt=$completedAt, expiresAt=$expiresAt, lastEventAt=$lastEventAt, lastSyncedAt=$lastSyncedAt, freeLimitReached=$freeLimitReached, errorCode=$errorCode, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'source'] = this.source_;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.reportStatus != null) {
      json[r'reportStatus'] = this.reportStatus;
    } else {
      json[r'reportStatus'] = null;
    }
    if (this.requestedSegment != null) {
      json[r'requestedSegment'] = this.requestedSegment;
    } else {
      json[r'requestedSegment'] = null;
    }
    if (this.seedlistProfile != null) {
      json[r'seedlistProfile'] = this.seedlistProfile;
    } else {
      json[r'seedlistProfile'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
    if (this.trackingToken != null) {
      json[r'trackingToken'] = this.trackingToken;
    } else {
      json[r'trackingToken'] = null;
    }
      json[r'seedAddresses'] = this.seedAddresses;
      json[r'seedAddressFormats'] = this.seedAddressFormats;
      json[r'totalTargets'] = this.totalTargets;
      json[r'matchedTargets'] = this.matchedTargets;
      json[r'inboxTargets'] = this.inboxTargets;
      json[r'spamTargets'] = this.spamTargets;
      json[r'notReceivedTargets'] = this.notReceivedTargets;
    if (this.submittedAt != null) {
      json[r'submittedAt'] = this.submittedAt!.toUtc().toIso8601String();
    } else {
      json[r'submittedAt'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.firstMatchAt != null) {
      json[r'firstMatchAt'] = this.firstMatchAt!.toUtc().toIso8601String();
    } else {
      json[r'firstMatchAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.lastEventAt != null) {
      json[r'lastEventAt'] = this.lastEventAt!.toUtc().toIso8601String();
    } else {
      json[r'lastEventAt'] = null;
    }
    if (this.lastSyncedAt != null) {
      json[r'lastSyncedAt'] = this.lastSyncedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastSyncedAt'] = null;
    }
      json[r'freeLimitReached'] = this.freeLimitReached;
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [PublicSpamTestRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicSpamTestRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicSpamTestRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicSpamTestRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicSpamTestRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        source_: mapValueOfType<String>(json, r'source')!,
        status: mapValueOfType<String>(json, r'status'),
        reportStatus: mapValueOfType<String>(json, r'reportStatus'),
        requestedSegment: mapValueOfType<String>(json, r'requestedSegment'),
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        trackingToken: mapValueOfType<String>(json, r'trackingToken'),
        seedAddresses: json[r'seedAddresses'] is List
            ? (json[r'seedAddresses'] as List).cast<String>()
            : const [],
        seedAddressFormats: mapCastOfType<String, String>(json, r'seedAddressFormats')!,
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        matchedTargets: mapValueOfType<int>(json, r'matchedTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
        submittedAt: mapDateTime(json, r'submittedAt', ''),
        startedAt: mapDateTime(json, r'startedAt', ''),
        firstMatchAt: mapDateTime(json, r'firstMatchAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        lastEventAt: mapDateTime(json, r'lastEventAt', ''),
        lastSyncedAt: mapDateTime(json, r'lastSyncedAt', ''),
        freeLimitReached: mapValueOfType<bool>(json, r'freeLimitReached')!,
        errorCode: PublicSpamTestRunDtoErrorCodeEnum.fromJson(json[r'errorCode']),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<PublicSpamTestRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicSpamTestRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicSpamTestRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicSpamTestRunDto> mapFromJson(dynamic json) {
    final map = <String, PublicSpamTestRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicSpamTestRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicSpamTestRunDto-objects as value to a dart map
  static Map<String, List<PublicSpamTestRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicSpamTestRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicSpamTestRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'source',
    'seedAddresses',
    'seedAddressFormats',
    'totalTargets',
    'matchedTargets',
    'inboxTargets',
    'spamTargets',
    'notReceivedTargets',
    'freeLimitReached',
    'createdAt',
    'updatedAt',
  };
}


class PublicSpamTestRunDtoErrorCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicSpamTestRunDtoErrorCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const i001UPGRADEREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'I_001_UPGRADE_REQUIRED');
  static const w404ENTITYNOTFOUND = PublicSpamTestRunDtoErrorCodeEnum._(r'W_404_ENTITY_NOT_FOUND');
  static const w404USERNOTFOUNDFORACCESSLINK = PublicSpamTestRunDtoErrorCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_ACCESS_LINK');
  static const w404USERNOTFOUNDFORPASSWORD = PublicSpamTestRunDtoErrorCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_PASSWORD');
  static const w409USERALREADYEXISTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_USER_ALREADY_EXISTS');
  static const w404USERNOTFOUNDFORPASSWORDRESET = PublicSpamTestRunDtoErrorCodeEnum._(r'W_404_USER_NOT_FOUND_FOR_PASSWORD_RESET');
  static const w400BADREQUEST = PublicSpamTestRunDtoErrorCodeEnum._(r'W_400_BAD_REQUEST');
  static const w400CAPTCHAREJECTED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_400_CAPTCHA_REJECTED');
  static const w400OPTINREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_400_OPT_IN_REQUIRED');
  static const w400SMSUSA2P10DLCREGISTRATIONREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_400_SMS_US_A2P_10DLC_REGISTRATION_REQUIRED');
  static const w401UNAUTHORIZED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_401_UNAUTHORIZED');
  static const w401CHALLENGEINVALID = PublicSpamTestRunDtoErrorCodeEnum._(r'W_401_CHALLENGE_INVALID');
  static const w401REQUIRESVERIFICATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_401_REQUIRES_VERIFICATION');
  static const w401MULTIPLEACCOUNTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_401_MULTIPLE_ACCOUNTS');
  static const w402ACCOUNTPAYMENTOVERDUE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_402_ACCOUNT_PAYMENT_OVERDUE');
  static const w403FORBIDDEN = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_FORBIDDEN');
  static const w403FORBIDDENPHONENUMBER = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_FORBIDDEN_PHONE_NUMBER');
  static const w403PHONEVERIFICATIONGEOBLOCKED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_PHONE_VERIFICATION_GEO_BLOCKED');
  static const w403SAMLIPADDRESSNOTALLOWED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_SAML_IP_ADDRESS_NOT_ALLOWED');
  static const w403ORGANIZATIONLOGINIPADDRESSNOTALLOWED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_ORGANIZATION_LOGIN_IP_ADDRESS_NOT_ALLOWED');
  static const w403SELFSERVEEMAILNOTELIGIBLE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_403_SELF_SERVE_EMAIL_NOT_ELIGIBLE');
  static const w409CONFLICT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_CONFLICT');
  static const w409ORGANIZATIONEMAILLOGINDISABLED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_ORGANIZATION_EMAIL_LOGIN_DISABLED');
  static const w409PERSONALACCOUNTRESTRICTEDBYORGANIZATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_PERSONAL_ACCOUNT_RESTRICTED_BY_ORGANIZATION');
  static const w409LINKACCESSBLOCKED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_LINK_ACCESS_BLOCKED');
  static const w409SUBSCRIPTIONTRIALNOTAVAILABLE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_NOT_AVAILABLE');
  static const w409SUBSCRIPTIONTRIALACCOUNTINELIGIBLE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_ACCOUNT_INELIGIBLE');
  static const w409SUBSCRIPTIONTRIALALREADYUSED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_ALREADY_USED');
  static const w409SUBSCRIPTIONTRIALPAYMENTMETHODALREADYUSED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_PAYMENT_METHOD_ALREADY_USED');
  static const w409SUBSCRIPTIONTRIALPLANINELIGIBLE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_409_SUBSCRIPTION_TRIAL_PLAN_INELIGIBLE');
  static const w429RATELIMITED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_RATE_LIMITED');
  static const w429SENDDESTINATIONTHROTTLED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_DESTINATION_THROTTLED');
  static const w429SENDBLOCK = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK');
  static const w429SENDBLOCKTRIAL = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK_TRIAL');
  static const w429SENDBLOCKADMINPAUSED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK_ADMIN_PAUSED');
  static const w429SENDBLOCKPAYMENTVALIDATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK_PAYMENT_VALIDATION');
  static const w429SENDBLOCKACCOUNTVALIDATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK_ACCOUNT_VALIDATION');
  static const w429SENDEVALUATIONLIMITREACHED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_EVALUATION_LIMIT_REACHED');
  static const w429SENDBLOCKEVALUATIONRECIPIENT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SEND_BLOCK_EVALUATION_RECIPIENT');
  static const w400SENDEVALUATIONOPTIONSUNSUPPORTED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_400_SEND_EVALUATION_OPTIONS_UNSUPPORTED');
  static const w429SENDINGAGREEMENTREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SENDING_AGREEMENT_REQUIRED');
  static const w429ACCOUNTFROZEN = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_ACCOUNT_FROZEN');
  static const e001UNEXPECTEDERROR = PublicSpamTestRunDtoErrorCodeEnum._(r'E_001_UNEXPECTED_ERROR');
  static const e400BADREQUEST = PublicSpamTestRunDtoErrorCodeEnum._(r'E_400_BAD_REQUEST');
  static const e500INTERNALERROR = PublicSpamTestRunDtoErrorCodeEnum._(r'E_500_INTERNAL_ERROR');
  static const w429SUBSCRIPTIONADDONREQUIREDVALIDATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_VALIDATION');
  static const w429SUBSCRIPTIONADDONREQUIREDCONNECTOR = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_CONNECTOR');
  static const w429SUBSCRIPTIONADDONREQUIREDDOMAINMONITOR = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DOMAIN_MONITOR');
  static const w429SUBSCRIPTIONADDONREQUIREDINBOXPLACEMENTTEST = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_INBOX_PLACEMENT_TEST');
  static const w429SUBSCRIPTIONADDONREQUIREDAI = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_AI');
  static const w429SUBSCRIPTIONADDONREQUIREDDEVICEPREVIEW = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DEVICE_PREVIEW');
  static const w429PHONENUMBERLIMITREACHED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_PHONE_NUMBER_LIMIT_REACHED');
  static const w429AGENTCONNECTIONLIMITREACHED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_AGENT_CONNECTION_LIMIT_REACHED');
  static const w429SUBSCRIPTIONLIMITREACHED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKCREATE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_CREATE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKSEND = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKDELETE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_DELETE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECONTACTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONTACTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREPERMANENTINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_PERMANENT_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPASSWORD = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PASSWORD');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREWEBHOOKS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_WEBHOOKS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXRULESETS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_RULESETS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREZAPIER = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ZAPIER');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURETRACKINGPIXELS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TRACKING_PIXELS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXFORWARDERS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_FORWARDERS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXREPLIERS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_REPLIERS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTAUTOMATIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENT_AUTOMATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURETEAMINBOX = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TEAM_INBOX');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESAMLSSO = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SAML_SSO');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREOIDCSSO = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_OIDC_SSO');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESCIMPROVISIONING = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCIM_PROVISIONING');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILVALIDATION = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_VALIDATION');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESENDWITHQUEUE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SEND_WITH_QUEUE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECONNECTORS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONNECTORS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREAI = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AI');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREGUESTPORTALS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_GUEST_PORTALS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILFEATURECHECK = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_FEATURE_CHECK');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREBACKUPS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BACKUPS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURESCREENSHOTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCREENSHOTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEWS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEWS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPERMISSIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PERMISSIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREENVIRONMENTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ENVIRONMENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREIMPORTEXPORT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_IMPORT_EXPORT');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREAUDITLOGS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AUDIT_LOGS');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDELIVERABILITYTEST = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DELIVERABILITY_TEST');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURELOADTEST = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_LOAD_TEST');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILAUDIT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_AUDIT');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXWARMUP = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_WARM_UP');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATURECAMPAIGNPROBE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CAMPAIGN_PROBE');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREVIRTUALTOTPDEVICES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_VIRTUAL_TOTP_DEVICES');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEW = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEW');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREDOMAINMONITOR = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DOMAIN_MONITOR');
  static const w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXPLACEMENTTESTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_PLACEMENT_TESTS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITOAUTHCONNECTIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_OAUTH_CONNECTIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITGMAILINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_GMAIL_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTOTALINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TOTAL_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPERMANENTINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PERMANENT_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTEMPORARYINBOXES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TEMPORARY_INBOXES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMAILSERVERRECORDS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MAIL_SERVER_RECORDS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYRECEIVE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_RECEIVE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYRECEIVE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_RECEIVE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYSEND = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYSEND = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_SEND');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILVALIDATIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_VALIDATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDOMAINS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DOMAINS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITALIASES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ALIASES');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITTHREADS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_THREADS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONMANAGEMENT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_MANAGEMENT');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONUSERS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_USERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITSTORAGE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_STORAGE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITUNIQUERECIPIENTS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_UNIQUE_RECIPIENTS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITRECIPIENTSPEREMAIL = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_RECIPIENTS_PER_EMAIL');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILSIZE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_SIZE');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPHONENUMBERS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_NUMBERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITPHONEPROVISIONREQUEST = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_PROVISION_REQUEST');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITAGENTCONNECTIONS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AGENT_CONNECTIONS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITDEVICERENDERS = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DEVICE_RENDERS');
  static const w429SUBSCRIPTIONLIMITREACHEDLIMITAUTOMATEDINBOXPLACEMENTSCHEDULES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AUTOMATED_INBOX_PLACEMENT_SCHEDULES');
  static const w429SUBSCRIPTIONPAYMENTFAILURES = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_PAYMENT_FAILURES');
  static const w429SUBSCRIPTIONTRIALLIMIT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_TRIAL_LIMIT');
  static const w429SUBSCRIPTIONREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_REQUIRED');
  static const w429SUBSCRIPTIONOUTOFDATE = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_OUT_OF_DATE');
  static const w429SUBSCRIPTIONFREELIMIT = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_SUBSCRIPTION_FREE_LIMIT');
  static const w429PUBLICDEVICERENDERACCOUNTREQUIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_PUBLIC_DEVICE_RENDER_ACCOUNT_REQUIRED');
  static const w429FREEACCOUNTEXPIRED = PublicSpamTestRunDtoErrorCodeEnum._(r'W_429_FREE_ACCOUNT_EXPIRED');

  /// List of all possible values in this [enum][PublicSpamTestRunDtoErrorCodeEnum].
  static const values = <PublicSpamTestRunDtoErrorCodeEnum>[
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

  static PublicSpamTestRunDtoErrorCodeEnum? fromJson(dynamic value) => PublicSpamTestRunDtoErrorCodeEnumTypeTransformer().decode(value);

  static List<PublicSpamTestRunDtoErrorCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicSpamTestRunDtoErrorCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicSpamTestRunDtoErrorCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicSpamTestRunDtoErrorCodeEnum] to String,
/// and [decode] dynamic data back to [PublicSpamTestRunDtoErrorCodeEnum].
class PublicSpamTestRunDtoErrorCodeEnumTypeTransformer {
  factory PublicSpamTestRunDtoErrorCodeEnumTypeTransformer() => _instance ??= const PublicSpamTestRunDtoErrorCodeEnumTypeTransformer._();

  const PublicSpamTestRunDtoErrorCodeEnumTypeTransformer._();

  String encode(PublicSpamTestRunDtoErrorCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicSpamTestRunDtoErrorCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicSpamTestRunDtoErrorCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'I_001_UPGRADE_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.i001UPGRADEREQUIRED;
        case r'W_404_ENTITY_NOT_FOUND': return PublicSpamTestRunDtoErrorCodeEnum.w404ENTITYNOTFOUND;
        case r'W_404_USER_NOT_FOUND_FOR_ACCESS_LINK': return PublicSpamTestRunDtoErrorCodeEnum.w404USERNOTFOUNDFORACCESSLINK;
        case r'W_404_USER_NOT_FOUND_FOR_PASSWORD': return PublicSpamTestRunDtoErrorCodeEnum.w404USERNOTFOUNDFORPASSWORD;
        case r'W_409_USER_ALREADY_EXISTS': return PublicSpamTestRunDtoErrorCodeEnum.w409USERALREADYEXISTS;
        case r'W_404_USER_NOT_FOUND_FOR_PASSWORD_RESET': return PublicSpamTestRunDtoErrorCodeEnum.w404USERNOTFOUNDFORPASSWORDRESET;
        case r'W_400_BAD_REQUEST': return PublicSpamTestRunDtoErrorCodeEnum.w400BADREQUEST;
        case r'W_400_CAPTCHA_REJECTED': return PublicSpamTestRunDtoErrorCodeEnum.w400CAPTCHAREJECTED;
        case r'W_400_OPT_IN_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.w400OPTINREQUIRED;
        case r'W_400_SMS_US_A2P_10DLC_REGISTRATION_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.w400SMSUSA2P10DLCREGISTRATIONREQUIRED;
        case r'W_401_UNAUTHORIZED': return PublicSpamTestRunDtoErrorCodeEnum.w401UNAUTHORIZED;
        case r'W_401_CHALLENGE_INVALID': return PublicSpamTestRunDtoErrorCodeEnum.w401CHALLENGEINVALID;
        case r'W_401_REQUIRES_VERIFICATION': return PublicSpamTestRunDtoErrorCodeEnum.w401REQUIRESVERIFICATION;
        case r'W_401_MULTIPLE_ACCOUNTS': return PublicSpamTestRunDtoErrorCodeEnum.w401MULTIPLEACCOUNTS;
        case r'W_402_ACCOUNT_PAYMENT_OVERDUE': return PublicSpamTestRunDtoErrorCodeEnum.w402ACCOUNTPAYMENTOVERDUE;
        case r'W_403_FORBIDDEN': return PublicSpamTestRunDtoErrorCodeEnum.w403FORBIDDEN;
        case r'W_403_FORBIDDEN_PHONE_NUMBER': return PublicSpamTestRunDtoErrorCodeEnum.w403FORBIDDENPHONENUMBER;
        case r'W_403_PHONE_VERIFICATION_GEO_BLOCKED': return PublicSpamTestRunDtoErrorCodeEnum.w403PHONEVERIFICATIONGEOBLOCKED;
        case r'W_403_SAML_IP_ADDRESS_NOT_ALLOWED': return PublicSpamTestRunDtoErrorCodeEnum.w403SAMLIPADDRESSNOTALLOWED;
        case r'W_403_ORGANIZATION_LOGIN_IP_ADDRESS_NOT_ALLOWED': return PublicSpamTestRunDtoErrorCodeEnum.w403ORGANIZATIONLOGINIPADDRESSNOTALLOWED;
        case r'W_403_SELF_SERVE_EMAIL_NOT_ELIGIBLE': return PublicSpamTestRunDtoErrorCodeEnum.w403SELFSERVEEMAILNOTELIGIBLE;
        case r'W_409_CONFLICT': return PublicSpamTestRunDtoErrorCodeEnum.w409CONFLICT;
        case r'W_409_ORGANIZATION_EMAIL_LOGIN_DISABLED': return PublicSpamTestRunDtoErrorCodeEnum.w409ORGANIZATIONEMAILLOGINDISABLED;
        case r'W_409_PERSONAL_ACCOUNT_RESTRICTED_BY_ORGANIZATION': return PublicSpamTestRunDtoErrorCodeEnum.w409PERSONALACCOUNTRESTRICTEDBYORGANIZATION;
        case r'W_409_LINK_ACCESS_BLOCKED': return PublicSpamTestRunDtoErrorCodeEnum.w409LINKACCESSBLOCKED;
        case r'W_409_SUBSCRIPTION_TRIAL_NOT_AVAILABLE': return PublicSpamTestRunDtoErrorCodeEnum.w409SUBSCRIPTIONTRIALNOTAVAILABLE;
        case r'W_409_SUBSCRIPTION_TRIAL_ACCOUNT_INELIGIBLE': return PublicSpamTestRunDtoErrorCodeEnum.w409SUBSCRIPTIONTRIALACCOUNTINELIGIBLE;
        case r'W_409_SUBSCRIPTION_TRIAL_ALREADY_USED': return PublicSpamTestRunDtoErrorCodeEnum.w409SUBSCRIPTIONTRIALALREADYUSED;
        case r'W_409_SUBSCRIPTION_TRIAL_PAYMENT_METHOD_ALREADY_USED': return PublicSpamTestRunDtoErrorCodeEnum.w409SUBSCRIPTIONTRIALPAYMENTMETHODALREADYUSED;
        case r'W_409_SUBSCRIPTION_TRIAL_PLAN_INELIGIBLE': return PublicSpamTestRunDtoErrorCodeEnum.w409SUBSCRIPTIONTRIALPLANINELIGIBLE;
        case r'W_429_RATE_LIMITED': return PublicSpamTestRunDtoErrorCodeEnum.w429RATELIMITED;
        case r'W_429_SEND_DESTINATION_THROTTLED': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDDESTINATIONTHROTTLED;
        case r'W_429_SEND_BLOCK': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCK;
        case r'W_429_SEND_BLOCK_TRIAL': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCKTRIAL;
        case r'W_429_SEND_BLOCK_ADMIN_PAUSED': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCKADMINPAUSED;
        case r'W_429_SEND_BLOCK_PAYMENT_VALIDATION': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCKPAYMENTVALIDATION;
        case r'W_429_SEND_BLOCK_ACCOUNT_VALIDATION': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCKACCOUNTVALIDATION;
        case r'W_429_SEND_EVALUATION_LIMIT_REACHED': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDEVALUATIONLIMITREACHED;
        case r'W_429_SEND_BLOCK_EVALUATION_RECIPIENT': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDBLOCKEVALUATIONRECIPIENT;
        case r'W_400_SEND_EVALUATION_OPTIONS_UNSUPPORTED': return PublicSpamTestRunDtoErrorCodeEnum.w400SENDEVALUATIONOPTIONSUNSUPPORTED;
        case r'W_429_SENDING_AGREEMENT_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.w429SENDINGAGREEMENTREQUIRED;
        case r'W_429_ACCOUNT_FROZEN': return PublicSpamTestRunDtoErrorCodeEnum.w429ACCOUNTFROZEN;
        case r'E_001_UNEXPECTED_ERROR': return PublicSpamTestRunDtoErrorCodeEnum.e001UNEXPECTEDERROR;
        case r'E_400_BAD_REQUEST': return PublicSpamTestRunDtoErrorCodeEnum.e400BADREQUEST;
        case r'E_500_INTERNAL_ERROR': return PublicSpamTestRunDtoErrorCodeEnum.e500INTERNALERROR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_VALIDATION': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDVALIDATION;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_CONNECTOR': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDCONNECTOR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DOMAIN_MONITOR': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDDOMAINMONITOR;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_INBOX_PLACEMENT_TEST': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDINBOXPLACEMENTTEST;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_AI': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDAI;
        case r'W_429_SUBSCRIPTION_ADDON_REQUIRED_DEVICE_PREVIEW': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONADDONREQUIREDDEVICEPREVIEW;
        case r'W_429_PHONE_NUMBER_LIMIT_REACHED': return PublicSpamTestRunDtoErrorCodeEnum.w429PHONENUMBERLIMITREACHED;
        case r'W_429_AGENT_CONNECTION_LIMIT_REACHED': return PublicSpamTestRunDtoErrorCodeEnum.w429AGENTCONNECTIONLIMITREACHED;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHED;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_CREATE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKCREATE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_SEND': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BULK_DELETE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBULKDELETE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONTACTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECONTACTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_PERMANENT_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREPERMANENTINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PASSWORD': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPASSWORD;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_WEBHOOKS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREWEBHOOKS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_RULESETS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXRULESETS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ZAPIER': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREZAPIER;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TRACKING_PIXELS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURETRACKINGPIXELS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_FORWARDERS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXFORWARDERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_REPLIERS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXREPLIERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ATTACHMENT_AUTOMATIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREATTACHMENTAUTOMATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_TEAM_INBOX': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURETEAMINBOX;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SAML_SSO': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESAMLSSO;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_OIDC_SSO': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREOIDCSSO;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCIM_PROVISIONING': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESCIMPROVISIONING;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_VALIDATION': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILVALIDATION;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SEND_WITH_QUEUE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESENDWITHQUEUE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CONNECTORS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECONNECTORS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AI': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREAI;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_GUEST_PORTALS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREGUESTPORTALS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_FEATURE_CHECK': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILFEATURECHECK;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_BACKUPS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREBACKUPS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_SCREENSHOTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURESCREENSHOTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEWS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEWS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_USER_PERMISSIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREUSERPERMISSIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_ENVIRONMENTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREENVIRONMENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_IMPORT_EXPORT': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREIMPORTEXPORT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_AUDIT_LOGS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREAUDITLOGS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DELIVERABILITY_TEST': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDELIVERABILITYTEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_LOAD_TEST': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURELOADTEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_EMAIL_AUDIT': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREEMAILAUDIT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_WARM_UP': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXWARMUP;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_CAMPAIGN_PROBE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATURECAMPAIGNPROBE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_VIRTUAL_TOTP_DEVICES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREVIRTUALTOTPDEVICES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DEVICE_PREVIEW': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDEVICEPREVIEW;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_DOMAIN_MONITOR': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREDOMAINMONITOR;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_FEATURE_INBOX_PLACEMENT_TESTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDFEATUREINBOXPLACEMENTTESTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_OAUTH_CONNECTIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITOAUTHCONNECTIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_GMAIL_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITGMAILINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TOTAL_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTOTALINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PERMANENT_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPERMANENTINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_TEMPORARY_INBOXES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTEMPORARYINBOXES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MAIL_SERVER_RECORDS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMAILSERVERRECORDS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_RECEIVE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYRECEIVE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_RECEIVE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYRECEIVE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DAILY_SEND': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDAILYSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_MONTHLY_SEND': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITMONTHLYSEND;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_VALIDATIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILVALIDATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DOMAINS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDOMAINS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ALIASES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITALIASES;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_THREADS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITTHREADS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_MANAGEMENT': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONMANAGEMENT;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_ORGANIZATION_USERS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITORGANIZATIONUSERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_STORAGE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITSTORAGE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_UNIQUE_RECIPIENTS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITUNIQUERECIPIENTS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_RECIPIENTS_PER_EMAIL': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITRECIPIENTSPEREMAIL;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_EMAIL_SIZE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITEMAILSIZE;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_NUMBERS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPHONENUMBERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_PHONE_PROVISION_REQUEST': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITPHONEPROVISIONREQUEST;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AGENT_CONNECTIONS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITAGENTCONNECTIONS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_DEVICE_RENDERS': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITDEVICERENDERS;
        case r'W_429_SUBSCRIPTION_LIMIT_REACHED_LIMIT_AUTOMATED_INBOX_PLACEMENT_SCHEDULES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONLIMITREACHEDLIMITAUTOMATEDINBOXPLACEMENTSCHEDULES;
        case r'W_429_SUBSCRIPTION_PAYMENT_FAILURES': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONPAYMENTFAILURES;
        case r'W_429_SUBSCRIPTION_TRIAL_LIMIT': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONTRIALLIMIT;
        case r'W_429_SUBSCRIPTION_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONREQUIRED;
        case r'W_429_SUBSCRIPTION_OUT_OF_DATE': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONOUTOFDATE;
        case r'W_429_SUBSCRIPTION_FREE_LIMIT': return PublicSpamTestRunDtoErrorCodeEnum.w429SUBSCRIPTIONFREELIMIT;
        case r'W_429_PUBLIC_DEVICE_RENDER_ACCOUNT_REQUIRED': return PublicSpamTestRunDtoErrorCodeEnum.w429PUBLICDEVICERENDERACCOUNTREQUIRED;
        case r'W_429_FREE_ACCOUNT_EXPIRED': return PublicSpamTestRunDtoErrorCodeEnum.w429FREEACCOUNTEXPIRED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicSpamTestRunDtoErrorCodeEnumTypeTransformer] instance.
  static PublicSpamTestRunDtoErrorCodeEnumTypeTransformer? _instance;
}


